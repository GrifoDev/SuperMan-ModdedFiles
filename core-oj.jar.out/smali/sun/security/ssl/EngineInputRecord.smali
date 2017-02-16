.class final Lsun/security/ssl/EngineInputRecord;
.super Lsun/security/ssl/InputRecord;
.source "EngineInputRecord.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static tmpBB:Ljava/nio/ByteBuffer;


# instance fields
.field private engine:Lsun/security/ssl/SSLEngineImpl;

.field private internalData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-class v0, Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lsun/security/ssl/EngineInputRecord;->-assertionsDisabled:Z

    .line 53
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/EngineInputRecord;->tmpBB:Ljava/nio/ByteBuffer;

    .line 45
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLEngineImpl;)V
    .locals 0
    .param p1, "engine"    # Lsun/security/ssl/SSLEngineImpl;

    .prologue
    .line 63
    invoke-direct {p0}, Lsun/security/ssl/InputRecord;-><init>()V

    .line 64
    iput-object p1, p0, Lsun/security/ssl/EngineInputRecord;->engine:Lsun/security/ssl/SSLEngineImpl;

    .line 62
    return-void
.end method

.method private static checkMacTags(BLjava/nio/ByteBuffer;Lsun/security/ssl/MAC;Z)Z
    .locals 7
    .param p0, "contentType"    # B
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "signer"    # Lsun/security/ssl/MAC;
    .param p3, "isSimulated"    # Z

    .prologue
    const/4 v5, 0x0

    .line 299
    invoke-virtual {p2}, Lsun/security/ssl/MAC;->MAClen()I

    move-result v4

    .line 300
    .local v4, "tagLen":I
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    .line 301
    .local v1, "lim":I
    sub-int v2, v1, v4

    .line 303
    .local v2, "macData":I
    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 304
    invoke-virtual {p2, p0, p1, p3}, Lsun/security/ssl/MAC;->compute(BLjava/nio/ByteBuffer;Z)[B

    move-result-object v0

    .line 305
    .local v0, "hash":[B
    if-eqz v0, :cond_0

    array-length v6, v0

    if-eq v4, v6, :cond_1

    .line 307
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Internal MAC error"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 310
    :cond_1
    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 311
    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 313
    :try_start_0
    invoke-static {p1, v0}, Lsun/security/ssl/EngineInputRecord;->compareMacTags(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v3

    .line 314
    .local v3, "results":[I
    const/4 v6, 0x0

    aget v6, v3, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    .line 316
    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 317
    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 314
    return v5

    .line 315
    .end local v3    # "results":[I
    :catchall_0
    move-exception v5

    .line 316
    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 317
    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 315
    throw v5
.end method

.method private static compareMacTags(Ljava/nio/ByteBuffer;[B)[I
    .locals 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "tag"    # [B

    .prologue
    const/4 v4, 0x0

    .line 330
    filled-new-array {v4, v4}, [I

    move-result-object v1

    .line 334
    .local v1, "results":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 335
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_0

    .line 336
    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 334
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    const/4 v2, 0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_1

    .line 342
    :cond_1
    return-object v1
.end method


# virtual methods
.method bytesInCompletePacket(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 87
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_0

    .line 88
    const/4 v6, -0x1

    return v6

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    .line 92
    .local v4, "pos":I
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 94
    .local v0, "byteZero":B
    const/4 v2, 0x0

    .line 102
    .local v2, "len":I
    iget-boolean v7, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    if-nez v7, :cond_1

    .line 103
    const/16 v7, 0x16

    if-ne v0, v7, :cond_3

    .line 109
    :cond_1
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v8, v4, 0x2

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    invoke-static {v7, v8}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v5

    .line 114
    .local v5, "recordVersion":Lsun/security/ssl/ProtocolVersion;
    iget v7, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v8, Lsun/security/ssl/ProtocolVersion;->MIN:Lsun/security/ssl/ProtocolVersion;

    iget v8, v8, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v7, v8, :cond_2

    .line 115
    iget-byte v7, v5, Lsun/security/ssl/ProtocolVersion;->major:B

    sget-object v8, Lsun/security/ssl/ProtocolVersion;->MAX:Lsun/security/ssl/ProtocolVersion;

    iget-byte v8, v8, Lsun/security/ssl/ProtocolVersion;->major:B

    if-le v7, v8, :cond_7

    .line 116
    :cond_2
    new-instance v6, Ljavax/net/ssl/SSLException;

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported record version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 104
    .end local v5    # "recordVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_3
    const/16 v7, 0x15

    if-eq v0, v7, :cond_1

    .line 141
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_4

    move v1, v6

    .line 143
    .local v1, "isShort":Z
    :cond_4
    if-eqz v1, :cond_b

    .line 144
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-eq v7, v6, :cond_5

    add-int/lit8 v6, v4, 0x2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_b

    .line 147
    :cond_5
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int/lit8 v7, v4, 0x4

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v6, v7}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v5

    .line 152
    .restart local v5    # "recordVersion":Lsun/security/ssl/ProtocolVersion;
    iget v6, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->MIN:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v6, v7, :cond_6

    .line 153
    iget-byte v6, v5, Lsun/security/ssl/ProtocolVersion;->major:B

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->MAX:Lsun/security/ssl/ProtocolVersion;

    iget-byte v7, v7, Lsun/security/ssl/ProtocolVersion;->major:B

    if-le v6, v7, :cond_8

    .line 156
    :cond_6
    iget v6, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-eq v6, v7, :cond_8

    .line 157
    new-instance v6, Ljavax/net/ssl/SSLException;

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported record version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 125
    .end local v1    # "isShort":Z
    :cond_7
    iput-boolean v6, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    .line 130
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    .line 131
    add-int/lit8 v7, v4, 0x4

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 130
    add-int/2addr v6, v7

    add-int/lit8 v2, v6, 0x5

    .line 176
    :goto_0
    return v2

    .line 165
    .restart local v1    # "isShort":Z
    :cond_8
    if-eqz v1, :cond_9

    const/16 v3, 0x7f

    .line 166
    .local v3, "mask":I
    :goto_1
    and-int v6, v0, v3

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v7, v6

    .line 167
    if-eqz v1, :cond_a

    const/4 v6, 0x2

    .line 166
    :goto_2
    add-int v2, v7, v6

    .line 144
    goto :goto_0

    .line 165
    .end local v3    # "mask":I
    :cond_9
    const/16 v3, 0x3f

    goto :goto_1

    .line 167
    .restart local v3    # "mask":I
    :cond_a
    const/4 v6, 0x3

    goto :goto_2

    .line 171
    .end local v3    # "mask":I
    .end local v5    # "recordVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_b
    new-instance v6, Ljavax/net/ssl/SSLException;

    .line 172
    const-string/jumbo v7, "Unrecognized SSL message, plaintext connection?"

    .line 171
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method contentType()B
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lsun/security/ssl/EngineInputRecord;->internalData:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-super {p0}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v0

    return v0

    .line 71
    :cond_0
    const/16 v0, 0x17

    return v0
.end method

.method decrypt(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p1, "signer"    # Lsun/security/ssl/MAC;
    .param p2, "box"    # Lsun/security/ssl/CipherBox;
    .param p3, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-boolean v0, p0, Lsun/security/ssl/EngineInputRecord;->internalData:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0, p1, p2}, Lsun/security/ssl/InputRecord;->decrypt(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V

    .line 193
    sget-object v0, Lsun/security/ssl/EngineInputRecord;->tmpBB:Ljava/nio/ByteBuffer;

    return-object v0

    .line 196
    :cond_0
    const/4 v9, 0x0

    .line 197
    .local v9, "reservedBPE":Ljavax/crypto/BadPaddingException;
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->MAClen()I

    move-result v10

    .line 198
    .local v10, "tagLen":I
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    .line 200
    .local v7, "cipheredLength":I
    invoke-virtual {p2}, Lsun/security/ssl/CipherBox;->isNullCipher()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    invoke-virtual {p2, v10, v7}, Lsun/security/ssl/CipherBox;->sanityCheck(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Ljavax/crypto/BadPaddingException;

    .line 204
    const-string/jumbo v1, "ciphertext sanity check failed"

    .line 203
    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    :try_start_0
    invoke-virtual {p2, p3, v10}, Lsun/security/ssl/CipherBox;->decrypt(Ljava/nio/ByteBuffer;I)I
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {p3}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 226
    .end local v9    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    :cond_2
    :goto_0
    if-eqz v10, :cond_8

    .line 227
    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result v0

    sub-int v8, v0, v10

    .line 232
    .local v8, "macOffset":I
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, v10, :cond_4

    .line 234
    if-nez v9, :cond_3

    .line 235
    new-instance v9, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v0, "bad record"

    invoke-direct {v9, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    .line 239
    :cond_3
    sub-int v8, v7, v10

    .line 240
    invoke-virtual {p3, v7}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 244
    :cond_4
    invoke-virtual {p0}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    move-result v0

    invoke-static {v0, p3, p1, v2}, Lsun/security/ssl/EngineInputRecord;->checkMacTags(BLjava/nio/ByteBuffer;Lsun/security/ssl/MAC;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    if-nez v9, :cond_5

    .line 246
    new-instance v9, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v0, "bad record MAC"

    invoke-direct {v9, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    .line 254
    :cond_5
    invoke-virtual {p2}, Lsun/security/ssl/CipherBox;->isCBCMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    invoke-static {p1, v7, v8}, Lsun/security/ssl/EngineInputRecord;->calculateRemainingLen(Lsun/security/ssl/MAC;II)I

    move-result v3

    .line 267
    .local v3, "remainingLen":I
    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    array-length v0, v0

    if-le v3, v0, :cond_6

    .line 269
    new-instance v0, Ljava/lang/RuntimeException;

    .line 270
    const-string/jumbo v1, "Internal buffer capacity error"

    .line 269
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    .end local v3    # "remainingLen":I
    .end local v8    # "macOffset":I
    .restart local v9    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    :catch_0
    move-exception v6

    .line 220
    .local v6, "bpe":Ljavax/crypto/BadPaddingException;
    move-object v9, v6

    .line 222
    .local v9, "reservedBPE":Ljavax/crypto/BadPaddingException;
    invoke-virtual {p3}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 221
    .end local v6    # "bpe":Ljavax/crypto/BadPaddingException;
    .local v9, "reservedBPE":Ljavax/crypto/BadPaddingException;
    :catchall_0
    move-exception v0

    .line 222
    invoke-virtual {p3}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 221
    throw v0

    .line 277
    .end local v9    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    .restart local v3    # "remainingLen":I
    .restart local v8    # "macOffset":I
    :cond_6
    invoke-virtual {p0}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    move-result v0

    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v5, 0x1

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lsun/security/ssl/EngineInputRecord;->checkMacTags(B[BIILsun/security/ssl/MAC;Z)Z

    .line 280
    .end local v3    # "remainingLen":I
    :cond_7
    invoke-virtual {p3, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 284
    .end local v8    # "macOffset":I
    :cond_8
    if-eqz v9, :cond_9

    .line 285
    throw v9

    .line 288
    :cond_9
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method read(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 12
    .param p1, "srcBB"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 384
    iget-boolean v10, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    if-eqz v10, :cond_0

    .line 385
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    const/16 v11, 0x17

    if-eq v10, v11, :cond_1

    .line 386
    :cond_0
    iput-boolean v8, p0, Lsun/security/ssl/EngineInputRecord;->internalData:Z

    .line 387
    new-instance v8, Lsun/security/ssl/ByteBufferInputStream;

    invoke-direct {v8, p1}, Lsun/security/ssl/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    nop

    nop

    invoke-virtual {p0, v8, v7}, Lsun/security/ssl/InputRecord;->read(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 388
    sget-object v7, Lsun/security/ssl/EngineInputRecord;->tmpBB:Ljava/nio/ByteBuffer;

    return-object v7

    .line 391
    :cond_1
    iput-boolean v9, p0, Lsun/security/ssl/EngineInputRecord;->internalData:Z

    .line 393
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    .line 394
    .local v6, "srcPos":I
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v5

    .line 397
    .local v5, "srcLim":I
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v10, v6, 0x2

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    .line 396
    invoke-static {v7, v10}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v4

    .line 401
    .local v4, "recordVersion":Lsun/security/ssl/ProtocolVersion;
    iget v7, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v10, Lsun/security/ssl/ProtocolVersion;->MIN:Lsun/security/ssl/ProtocolVersion;

    iget v10, v10, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v7, v10, :cond_2

    .line 402
    iget-byte v7, v4, Lsun/security/ssl/ProtocolVersion;->major:B

    sget-object v10, Lsun/security/ssl/ProtocolVersion;->MAX:Lsun/security/ssl/ProtocolVersion;

    iget-byte v10, v10, Lsun/security/ssl/ProtocolVersion;->major:B

    if-le v7, v10, :cond_3

    .line 403
    :cond_2
    new-instance v7, Ljavax/net/ssl/SSLException;

    .line 404
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported record version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 403
    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 411
    :cond_3
    invoke-virtual {p0, p1}, Lsun/security/ssl/EngineInputRecord;->bytesInCompletePacket(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 412
    .local v3, "len":I
    sget-boolean v7, Lsun/security/ssl/EngineInputRecord;->-assertionsDisabled:Z

    if-nez v7, :cond_5

    if-lez v3, :cond_4

    move v7, v8

    :goto_0
    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_4
    move v7, v9

    goto :goto_0

    .line 414
    :cond_5
    sget-object v7, Lsun/security/ssl/EngineInputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v7, :cond_6

    const-string/jumbo v7, "packet"

    invoke-static {v7}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 416
    :try_start_0
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 417
    .local v2, "hd":Lsun/misc/HexDumpEncoder;
    add-int v7, v6, v3

    invoke-virtual {p1, v7}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 418
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 420
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[Raw read (bb)]: length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0, v7}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_6
    :goto_1
    add-int/lit8 v7, v6, 0x5

    invoke-virtual {p1, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 427
    add-int v7, v6, v3

    invoke-virtual {p1, v7}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 431
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 433
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 434
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 436
    return-object v0

    .line 422
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method writeBuffer(Ljava/io/OutputStream;[BII)V
    .locals 3
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    .line 357
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 359
    .local v0, "netBB":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lsun/security/ssl/EngineInputRecord;->engine:Lsun/security/ssl/SSLEngineImpl;

    iget-object v1, v1, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v1, v0}, Lsun/security/ssl/EngineWriter;->putOutboundDataSync(Ljava/nio/ByteBuffer;)V

    .line 353
    return-void
.end method
