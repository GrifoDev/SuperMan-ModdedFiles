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

    const/16 v1, 0xb

    const-class v0, Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/ssl/OutputRecord;->-assertionsDisabled:Z

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap1:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap3:[I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

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

    invoke-static {p1}, Lsun/security/ssl/OutputRecord;->recordSize(B)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/OutputRecord;-><init>(BI)V

    return-void
.end method

.method constructor <init>(BI)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT_HELLO:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/OutputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/OutputRecord;->firstMessage:Z

    const/4 v0, 0x5

    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iput-byte p1, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iput v0, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    return-void
.end method

.method private V3toV2CipherSuite(BB)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    aput-byte v3, v0, v1

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    aput-byte p1, v0, v1

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    aput-byte p2, v0, v1

    and-int/lit16 v0, p2, 0xff

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    sget-object v0, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap1:[I

    aget v0, v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    return v0

    :cond_1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    sget-object v2, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap1:[I

    aget v2, v2, p2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    aput-byte v3, v0, v1

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    sget-object v2, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap3:[I

    aget v2, v2, p2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x6

    return v0
.end method

.method private V3toV2ClientHello([B)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/16 v16, 0x22

    aget-byte v15, p1, v16

    add-int/lit8 v12, v15, 0x23

    aget-byte v17, p1, v12

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    add-int/lit8 v18, v12, 0x1

    aget-byte v18, p1, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    add-int v11, v17, v18

    div-int/lit8 v7, v11, 0x2

    add-int/lit8 v13, v12, 0x2

    const/4 v10, 0x0

    const/16 v17, 0xb

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v14, v13

    :goto_0
    if-ge v9, v7, :cond_1

    add-int/lit8 v13, v14, 0x1

    aget-byte v5, p1, v14

    add-int/lit8 v14, v13, 0x1

    aget-byte v6, p1, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lsun/security/ssl/OutputRecord;->V3toV2CipherSuite(BB)I

    move-result v17

    add-int v10, v10, v17

    if-nez v8, :cond_0

    if-nez v5, :cond_0

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_0

    const/4 v8, 0x1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    if-nez v8, :cond_2

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lsun/security/ssl/OutputRecord;->V3toV2CipherSuite(BB)I

    move-result v17

    add-int v10, v10, v17

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x2

    aput-byte v18, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-byte v18, p1, v18

    const/16 v19, 0x3

    aput-byte v18, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-byte v18, p1, v18

    const/16 v19, 0x4

    aput-byte v18, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    ushr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    const/16 v19, 0x5

    aput-byte v18, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    int-to-byte v0, v10

    move/from16 v18, v0

    const/16 v19, 0x6

    aput-byte v18, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x7

    aput-byte v18, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x8

    aput-byte v18, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x9

    aput-byte v18, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x20

    const/16 v19, 0xa

    aput-byte v18, v17, v19

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

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ByteArrayOutputStream;->count:I

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ByteArrayOutputStream;->count:I

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

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ByteArrayOutputStream;->count:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 1

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    :cond_0
    return-void
.end method

.method private hashInternal([BII)V
    .locals 5

    sget-object v2, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

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

    const-string/jumbo v4, "[write] MD5 and SHA1 hashes:  len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget v3, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    invoke-direct {v2, p1, v3, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2, v3}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/OutputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    iget v3, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    invoke-virtual {v2, p1, v3, p3}, Lsun/security/ssl/HandshakeHash;->update([BII)V

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iput v2, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static recordSize(B)I
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x15

    if-ne p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x21b

    return v0

    :cond_1
    const/16 v0, 0x4219

    return v0
.end method

.method private useV2Hello()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lsun/security/ssl/OutputRecord;->firstMessage:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/security/ssl/OutputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    if-ne v2, v3, :cond_1

    iget-byte v2, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/16 v3, 0x2b

    aget-byte v2, v2, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method addMAC(Lsun/security/ssl/MAC;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-byte v0, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->doHashes()V

    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->MAClen()I

    move-result v0

    if-eqz v0, :cond_1

    iget-byte v1, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v4, v0, -0x5

    const/4 v3, 0x5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/MAC;->compute(B[BIIZ)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    return-void
.end method

.method final availableDataBytes()I
    .locals 2

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v1, -0x5

    rsub-int v1, v0, 0x4000

    return v1
.end method

.method final contentType()B
    .locals 1

    iget-byte v0, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    return v0
.end method

.method doHashes()V
    .locals 3

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iget v2, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    sub-int v0, v1, v2

    if-lez v0, :cond_0

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    invoke-direct {p0, v1, v2, v0}, Lsun/security/ssl/OutputRecord;->hashInternal([BII)V

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iput v1, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    :cond_0
    return-void
.end method

.method encrypt(Lsun/security/ssl/CipherBox;)V
    .locals 3

    const/4 v2, 0x5

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v1, -0x5

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-virtual {p1, v1, v2, v0}, Lsun/security/ssl/CipherBox;->encrypt([BII)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    return-void
.end method

.method isAlert(B)Z
    .locals 4

    const/4 v3, 0x6

    const/4 v0, 0x0

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    if-le v1, v3, :cond_1

    iget-byte v1, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    aget-byte v1, v1, v3

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method isEmpty()Z
    .locals 2

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

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v0, 0x5

    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iput v0, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V
    .locals 2

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

    :cond_1
    iput-object p1, p0, Lsun/security/ssl/OutputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    return-void
.end method

.method declared-synchronized setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/OutputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method write(Ljava/io/OutputStream;ZLjava/io/ByteArrayOutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v7, v0, -0x5

    if-gez v7, :cond_1

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

    :cond_1
    sget-object v0, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "record"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    sget-object v0, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "record"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

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

    const-string/jumbo v2, ", WRITE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v2

    invoke-static {v2}, Lsun/security/ssl/InputRecord;->contentName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lsun/security/ssl/OutputRecord;->firstMessage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lsun/security/ssl/OutputRecord;->useV2Hello()Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v7, -0x4

    new-array v8, v0, [B

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v1, v8

    const/16 v2, 0x9

    invoke-static {v0, v2, v8, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v8}, Lsun/security/ssl/OutputRecord;->V3toV2ClientHello([B)V

    iget-object v0, p0, Lsun/security/ssl/OutputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lsun/security/ssl/HandshakeHash;->reset()V

    iput v4, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->doHashes()V

    sget-object v0, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "record"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", WRITE: SSLv2 client hello message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    :goto_0
    iput-boolean v3, p0, Lsun/security/ssl/OutputRecord;->firstMessage:Z

    const/4 v5, 0x0

    if-eqz p2, :cond_8

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v4, p0, Ljava/io/ByteArrayOutputStream;->count:I

    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/OutputRecord;->writeBuffer(Ljava/io/OutputStream;[BIII)V

    :goto_1
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->reset()V

    return-void

    :cond_7
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget-byte v1, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    aput-byte v1, v0, v3

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget-object v1, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lsun/security/ssl/ProtocolVersion;->major:B

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget-object v1, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lsun/security/ssl/ProtocolVersion;->minor:B

    aput-byte v1, v0, v4

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    shr-int/lit8 v1, v7, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    int-to-byte v1, v7

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    goto :goto_0

    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, v6

    invoke-direct {p0, v0}, Lsun/security/ssl/OutputRecord;->ensureCapacity(I)V

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {v0, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-static {v0, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    move v5, v6

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    sget-object v3, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "packet"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    add-int v3, p3, p5

    sub-int v4, p4, p5

    invoke-static {p2, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[Raw write]: length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
