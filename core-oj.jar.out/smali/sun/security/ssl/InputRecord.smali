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

    .prologue
    .line 71
    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    .line 432
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    .line 57
    return-void

    .line 432
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

    .prologue
    const/4 v1, 0x5

    .line 84
    const/16 v0, 0x4219

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    .line 85
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT_HELLO:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {p0, v0}, Lsun/security/ssl/InputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 86
    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 87
    iput v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 88
    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iput v0, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/ssl/InputRecord;->exlen:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    .line 83
    return-void
.end method

.method private V2toV3ClientHello([B)V
    .locals 11
    .param p1, "v2Msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 705
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/16 v8, 0x16

    const/4 v9, 0x0

    aput-byte v8, v7, v9

    .line 706
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v9, 0x3

    aget-byte v8, v8, v9

    const/4 v9, 0x1

    aput-byte v8, v7, v9

    .line 707
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v9, 0x4

    aget-byte v8, v8, v9

    const/4 v9, 0x2

    aput-byte v8, v7, v9

    .line 714
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v8, 0x1

    const/4 v9, 0x5

    aput-byte v8, v7, v9

    .line 721
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    const/16 v9, 0x9

    aput-byte v8, v7, v9

    .line 722
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v9, 0x2

    aget-byte v8, v8, v9

    const/16 v9, 0xa

    aput-byte v8, v7, v9

    .line 724
    const/16 v7, 0xb

    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 731
    const/4 v7, 0x0

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int v0, v7, v8

    .line 732
    .local v0, "cipherSpecLen":I
    const/4 v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int v6, v7, v8

    .line 733
    .local v6, "sessionIdLen":I
    const/4 v7, 0x4

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x5

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int v4, v7, v8

    .line 740
    .local v4, "nonceLen":I
    add-int/lit8 v7, v0, 0x6

    add-int v5, v7, v6

    .line 742
    .local v5, "offset":I
    const/16 v7, 0x20

    if-ge v4, v7, :cond_1

    .line 743
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    rsub-int/lit8 v7, v4, 0x20

    if-ge v1, v7, :cond_0

    .line 744
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    const/4 v9, 0x0

    aput-byte v9, v7, v8

    .line 743
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    :cond_0
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    invoke-static {p1, v5, v7, v8, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 746
    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/2addr v7, v4

    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 756
    .end local v1    # "i":I
    :goto_1
    sub-int/2addr v5, v6

    .line 757
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    int-to-byte v9, v6

    aput-byte v9, v7, v8

    .line 759
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    invoke-static {p1, v5, v7, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 760
    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/2addr v7, v6

    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 778
    sub-int/2addr v5, v0

    .line 779
    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v2, v7, 0x2

    .line 781
    .local v2, "j":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 782
    add-int v7, v5, v1

    aget-byte v7, p1, v7

    if-eqz v7, :cond_2

    move v2, v3

    .line 781
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :goto_3
    add-int/lit8 v1, v1, 0x3

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 748
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v7, v4, -0x20

    add-int/2addr v7, v5

    .line 749
    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    const/16 v10, 0x20

    .line 748
    invoke-static {p1, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 750
    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v7, v7, 0x20

    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    goto :goto_1

    .line 784
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :cond_2
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    add-int v8, v5, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    aput-byte v8, v7, v3

    .line 785
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    add-int v8, v5, v1

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, p1, v8

    aput-byte v8, v7, v2

    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_3

    .line 788
    .end local v2    # "j":I
    .restart local v3    # "j":I
    :cond_3
    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v7, v7, 0x2

    sub-int v2, v3, v7

    .line 789
    .end local v3    # "j":I
    .restart local v2    # "j":I
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    ushr-int/lit8 v9, v2, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 790
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    int-to-byte v9, v2

    aput-byte v9, v7, v8

    .line 791
    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/2addr v7, v2

    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 796
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    const/4 v9, 0x1

    aput-byte v9, v7, v8

    .line 797
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    const/4 v9, 0x0

    aput-byte v9, v7, v8

    .line 803
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v8, v8, -0x5

    int-to-byte v8, v8

    const/4 v9, 0x3

    aput-byte v8, v7, v9

    .line 804
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v8, v8, -0x5

    ushr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    const/4 v9, 0x4

    aput-byte v8, v7, v9

    .line 806
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v8, 0x0

    const/4 v9, 0x6

    aput-byte v8, v7, v9

    .line 807
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v8, v8, -0x5

    add-int/lit8 v8, v8, -0x4

    ushr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    const/4 v9, 0x7

    aput-byte v8, v7, v9

    .line 808
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v8, v8, -0x5

    add-int/lit8 v8, v8, -0x4

    int-to-byte v8, v8

    const/16 v9, 0x8

    aput-byte v8, v7, v9

    .line 810
    const/4 v7, 0x5

    iput v7, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 697
    return-void
.end method

.method static calculateRemainingLen(Lsun/security/ssl/MAC;II)I
    .locals 10
    .param p0, "signer"    # Lsun/security/ssl/MAC;
    .param p1, "fullLen"    # I
    .param p2, "usedLen"    # I

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 288
    invoke-virtual {p0}, Lsun/security/ssl/MAC;->hashBlockLen()I

    move-result v0

    .line 289
    .local v0, "blockLen":I
    invoke-virtual {p0}, Lsun/security/ssl/MAC;->minimalPaddingLen()I

    move-result v1

    .line 294
    .local v1, "minimalPaddingLen":I
    sub-int v2, v0, v1

    rsub-int/lit8 v2, v2, 0xd

    add-int/2addr p1, v2

    .line 295
    sub-int v2, v0, v1

    rsub-int/lit8 v2, v2, 0xd

    add-int/2addr p2, v2

    .line 302
    int-to-double v2, p1

    int-to-double v4, v0

    mul-double/2addr v4, v8

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 303
    int-to-double v4, p2

    int-to-double v6, v0

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 302
    sub-double/2addr v2, v4

    double-to-int v2, v2

    .line 303
    invoke-virtual {p0}, Lsun/security/ssl/MAC;->hashBlockLen()I

    move-result v3

    .line 302
    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method static checkMacTags(B[BIILsun/security/ssl/MAC;Z)Z
    .locals 10
    .param p0, "contentType"    # B
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "contentLen"    # I
    .param p4, "signer"    # Lsun/security/ssl/MAC;
    .param p5, "isSimulated"    # Z

    .prologue
    const/4 v9, 0x0

    .line 242
    invoke-virtual {p4}, Lsun/security/ssl/MAC;->MAClen()I

    move-result v8

    .local v8, "tagLen":I
    move-object v0, p4

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p5

    .line 243
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/MAC;->compute(B[BIIZ)[B

    move-result-object v6

    .line 245
    .local v6, "hash":[B
    if-eqz v6, :cond_0

    array-length v0, v6

    if-eq v8, v0, :cond_1

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Internal MAC error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    add-int v0, p2, p3

    invoke-static {p1, v0, v6}, Lsun/security/ssl/InputRecord;->compareMacTags([BI[B)[I

    move-result-object v7

    .line 251
    .local v7, "results":[I
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
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "tag"    # [B

    .prologue
    const/4 v4, 0x0

    .line 264
    filled-new-array {v4, v4}, [I

    move-result-object v1

    .line 268
    .local v1, "results":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 269
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_0

    .line 270
    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 268
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    const/4 v2, 0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_1

    .line 276
    :cond_1
    return-object v1
.end method

.method static contentName(I)Ljava/lang/String;
    .locals 2
    .param p0, "contentType"    # I

    .prologue
    .line 819
    packed-switch p0, :pswitch_data_0

    .line 829
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

    .line 821
    :pswitch_0
    const-string/jumbo v0, "Change Cipher Spec"

    return-object v0

    .line 823
    :pswitch_1
    const-string/jumbo v0, "Alert"

    return-object v0

    .line 825
    :pswitch_2
    const-string/jumbo v0, "Handshake"

    return-object v0

    .line 827
    :pswitch_3
    const-string/jumbo v0, "Application Data"

    return-object v0

    .line 819
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
    .param p1, "s"    # Ljava/io/InputStream;
    .param p2, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 591
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v9

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_5

    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v10

    if-ne v5, v8, :cond_5

    .line 597
    iget-object v5, p0, Lsun/security/ssl/InputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    if-eq v5, v6, :cond_0

    .line 598
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v6, "SSLv2Hello is disabled"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 602
    :cond_0
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v12

    iget-object v6, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v7, 0x4

    aget-byte v6, v6, v7

    invoke-static {v5, v6}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v4

    .line 604
    .local v4, "recordVersion":Lsun/security/ssl/ProtocolVersion;
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    if-ne v4, v5, :cond_1

    .line 612
    :try_start_0
    sget-object v5, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    sget-object v6, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    array-length v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0, p2, v5, v7, v6}, Lsun/security/ssl/InputRecord;->writeBuffer(Ljava/io/OutputStream;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_0
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "Unsupported SSL v2.0 ClientHello"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 624
    :cond_1
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v9

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0x8

    .line 625
    iget-object v6, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    .line 624
    add-int/2addr v5, v6

    add-int/lit8 v2, v5, -0x3

    .line 626
    .local v2, "len":I
    iget-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    if-nez v5, :cond_2

    .line 627
    new-array v5, v2, [B

    iput-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    .line 629
    :cond_2
    iget v5, p0, Lsun/security/ssl/InputRecord;->exlen:I

    add-int/lit8 v6, v2, 0x5

    if-ge v5, v6, :cond_3

    .line 631
    iget-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    iget v6, p0, Lsun/security/ssl/InputRecord;->exlen:I

    add-int/lit8 v6, v6, -0x5

    add-int/lit8 v7, v2, 0x5

    iget v8, p0, Lsun/security/ssl/InputRecord;->exlen:I

    sub-int/2addr v7, v8

    .line 630
    invoke-direct {p0, p1, v5, v6, v7}, Lsun/security/ssl/InputRecord;->readFully(Ljava/io/InputStream;[BII)I

    move-result v3

    .line 632
    .local v3, "really":I
    if-gez v3, :cond_3

    .line 633
    new-instance v5, Ljava/io/EOFException;

    const-string/jumbo v6, "SSL peer shut down incorrectly"

    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 638
    .end local v3    # "really":I
    :cond_3
    iput v9, p0, Lsun/security/ssl/InputRecord;->exlen:I

    .line 640
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    invoke-direct {p0, v5, v10, v12}, Lsun/security/ssl/InputRecord;->hashInternal([BII)V

    .line 641
    iget-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    invoke-direct {p0, v5, v9, v2}, Lsun/security/ssl/InputRecord;->hashInternal([BII)V

    .line 642
    iget-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    invoke-direct {p0, v5}, Lsun/security/ssl/InputRecord;->V2toV3ClientHello([B)V

    .line 643
    iput-object v11, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    .line 644
    iget v5, p0, Ljava/io/ByteArrayInputStream;->count:I

    iput v5, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    .line 646
    sget-object v5, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_4

    const-string/jumbo v5, "record"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 647
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 648
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 649
    const-string/jumbo v7, ", READ:  SSL v2, contentType = "

    .line 648
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 650
    invoke-virtual {p0}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v7

    invoke-static {v7}, Lsun/security/ssl/InputRecord;->contentName(I)Ljava/lang/String;

    move-result-object v7

    .line 648
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 651
    const-string/jumbo v7, ", translated length = "

    .line 648
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 651
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 648
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 647
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 653
    :cond_4
    return-void

    .line 659
    .end local v2    # "len":I
    .end local v4    # "recordVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_5
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v9

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v10

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 660
    new-instance v5, Ljavax/net/ssl/SSLException;

    .line 661
    const-string/jumbo v6, "SSL V2.0 servers are not supported."

    .line 660
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 669
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v5, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    array-length v5, v5

    if-ge v1, v5, :cond_8

    .line 670
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v1

    sget-object v6, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    aget-byte v6, v6, v1

    if-eq v5, v6, :cond_7

    .line 671
    new-instance v5, Ljavax/net/ssl/SSLException;

    .line 672
    const-string/jumbo v6, "Unrecognized SSL message, plaintext connection?"

    .line 671
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 669
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 676
    :cond_8
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "SSL V2.0 servers are not supported."

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 613
    .end local v1    # "i":I
    .restart local v4    # "recordVersion":Lsun/security/ssl/ProtocolVersion;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method private hashInternal([BII)V
    .locals 5
    .param p1, "databuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 338
    sget-object v2, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    :try_start_0
    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 342
    .local v1, "hd":Lsun/misc/HexDumpEncoder;
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

    .line 344
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 345
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 344
    invoke-virtual {v1, v2, v3}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v1    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_0
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/InputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v2, p1, p2, p3}, Lsun/security/ssl/HandshakeHash;->update([BII)V

    .line 337
    return-void

    .line 346
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private readFully(Ljava/io/InputStream;[BII)I
    .locals 8
    .param p1, "s"    # Ljava/io/InputStream;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    const/4 v3, 0x0

    .line 441
    .local v3, "n":I
    :goto_0
    if-ge v3, p4, :cond_2

    .line 442
    add-int v5, p3, v3

    sub-int v6, p4, v3

    invoke-virtual {p1, p2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 443
    .local v4, "readLen":I
    if-gez v4, :cond_0

    .line 444
    return v4

    .line 447
    :cond_0
    sget-object v5, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "packet"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 449
    :try_start_0
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 450
    .local v2, "hd":Lsun/misc/HexDumpEncoder;
    add-int v5, p3, v3

    invoke-static {p2, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 452
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[Raw read]: length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 453
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    .line 452
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0, v5}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_1
    :goto_1
    add-int/2addr v3, v4

    .line 459
    iget v5, p0, Lsun/security/ssl/InputRecord;->exlen:I

    add-int/2addr v5, v4

    iput v5, p0, Lsun/security/ssl/InputRecord;->exlen:I

    goto :goto_0

    .line 462
    .end local v4    # "readLen":I
    :cond_2
    return v3

    .line 455
    .restart local v4    # "readLen":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private readV3Record(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "s"    # Ljava/io/InputStream;
    .param p2, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 518
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    invoke-static {v4, v5}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v3

    .line 522
    .local v3, "recordVersion":Lsun/security/ssl/ProtocolVersion;
    iget v4, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->MIN:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_0

    .line 523
    iget-byte v4, v3, Lsun/security/ssl/ProtocolVersion;->major:B

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->MAX:Lsun/security/ssl/ProtocolVersion;

    iget-byte v5, v5, Lsun/security/ssl/ProtocolVersion;->major:B

    if-le v4, v5, :cond_1

    .line 524
    :cond_0
    new-instance v4, Ljavax/net/ssl/SSLException;

    .line 525
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported record version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 524
    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 531
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

    .line 536
    .local v0, "contentLen":I
    if-ltz v0, :cond_2

    const v4, 0x8214

    if-le v0, v4, :cond_3

    .line 537
    :cond_2
    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad InputRecord size, count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 539
    const-string/jumbo v6, ", buf.length = "

    .line 537
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 539
    iget-object v6, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    array-length v6, v6

    .line 537
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 547
    :cond_3
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x5

    if-le v0, v4, :cond_4

    .line 548
    add-int/lit8 v4, v0, 0x5

    new-array v1, v4, [B

    .line 549
    .local v1, "newbuf":[B
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v5, 0x5

    invoke-static {v4, v8, v1, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 550
    iput-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 553
    .end local v1    # "newbuf":[B
    :cond_4
    iget v4, p0, Lsun/security/ssl/InputRecord;->exlen:I

    add-int/lit8 v5, v0, 0x5

    if-ge v4, v5, :cond_5

    .line 555
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v5, p0, Lsun/security/ssl/InputRecord;->exlen:I

    add-int/lit8 v6, v0, 0x5

    iget v7, p0, Lsun/security/ssl/InputRecord;->exlen:I

    sub-int/2addr v6, v7

    .line 554
    invoke-direct {p0, p1, v4, v5, v6}, Lsun/security/ssl/InputRecord;->readFully(Ljava/io/InputStream;[BII)I

    move-result v2

    .line 556
    .local v2, "really":I
    if-gez v2, :cond_5

    .line 557
    new-instance v4, Ljavax/net/ssl/SSLException;

    const-string/jumbo v5, "SSL peer shut down incorrectly"

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 562
    .end local v2    # "really":I
    :cond_5
    add-int/lit8 v4, v0, 0x5

    iput v4, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 563
    iput v8, p0, Lsun/security/ssl/InputRecord;->exlen:I

    .line 565
    sget-object v4, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v4, :cond_8

    const-string/jumbo v4, "record"

    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 566
    iget v4, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-ltz v4, :cond_6

    iget v4, p0, Ljava/io/ByteArrayInputStream;->count:I

    const/16 v5, 0x4214

    if-le v4, v5, :cond_7

    .line 567
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

    .line 568
    const-string/jumbo v6, ", Bad InputRecord size"

    .line 567
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 568
    const-string/jumbo v6, ", count = "

    .line 567
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 568
    iget v6, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 567
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 570
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

    .line 571
    const-string/jumbo v6, ", READ: "

    .line 570
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 571
    const-string/jumbo v6, " "

    .line 570
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 572
    invoke-virtual {p0}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v6

    invoke-static {v6}, Lsun/security/ssl/InputRecord;->contentName(I)Ljava/lang/String;

    move-result-object v6

    .line 570
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 572
    const-string/jumbo v6, ", length = "

    .line 570
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 572
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    .line 570
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 517
    :cond_8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 419
    iput-boolean v1, p0, Lsun/security/ssl/InputRecord;->appDataValid:Z

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/InputRecord;->isClosed:Z

    .line 421
    iput v1, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 422
    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 423
    iput v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 418
    return-void
.end method

.method contentType()B
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method decrypt(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V
    .locals 16
    .param p1, "signer"    # Lsun/security/ssl/MAC;
    .param p2, "box"    # Lsun/security/ssl/CipherBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v14, 0x0

    .line 141
    .local v14, "reservedBPE":Ljavax/crypto/BadPaddingException;
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/MAC;->MAClen()I

    move-result v15

    .line 142
    .local v15, "tagLen":I
    move-object/from16 v0, p0

    iget v1, v0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v12, v1, -0x5

    .line 144
    .local v12, "cipheredLength":I
    invoke-virtual/range {p2 .. p2}, Lsun/security/ssl/CipherBox;->isNullCipher()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v12}, Lsun/security/ssl/CipherBox;->sanityCheck(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Ljavax/crypto/BadPaddingException;

    .line 148
    const-string/jumbo v2, "ciphertext sanity check failed"

    .line 147
    invoke-direct {v1, v2}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v2, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v12, v15}, Lsun/security/ssl/CipherBox;->decrypt([BIII)I

    move-result v1

    .line 154
    add-int/lit8 v1, v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Ljava/io/ByteArrayInputStream;->count:I
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v14    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    :cond_1
    :goto_0
    if-eqz v15, :cond_6

    .line 170
    move-object/from16 v0, p0

    iget v1, v0, Ljava/io/ByteArrayInputStream;->count:I

    sub-int v13, v1, v15

    .line 171
    .local v13, "macOffset":I
    add-int/lit8 v4, v13, -0x5

    .line 176
    .local v4, "contentLen":I
    if-gez v4, :cond_3

    .line 178
    if-nez v14, :cond_2

    .line 179
    new-instance v14, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v1, "bad record"

    invoke-direct {v14, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    .line 183
    :cond_2
    add-int/lit8 v1, v12, 0x5

    sub-int v13, v1, v15

    .line 184
    add-int/lit8 v4, v13, -0x5

    .line 187
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Ljava/io/ByteArrayInputStream;->count:I

    sub-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Ljava/io/ByteArrayInputStream;->count:I

    .line 194
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v1

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object/from16 v5, p1

    .line 194
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/InputRecord;->checkMacTags(B[BIILsun/security/ssl/MAC;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    if-nez v14, :cond_4

    .line 197
    new-instance v14, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v1, "bad record MAC"

    invoke-direct {v14, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    .line 205
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lsun/security/ssl/CipherBox;->isCBCMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 206
    move-object/from16 v0, p1

    invoke-static {v0, v12, v4}, Lsun/security/ssl/InputRecord;->calculateRemainingLen(Lsun/security/ssl/MAC;II)I

    move-result v8

    .line 214
    .local v8, "remainingLen":I
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    array-length v1, v1

    if-le v8, v1, :cond_5

    .line 216
    new-instance v1, Ljava/lang/RuntimeException;

    .line 217
    const-string/jumbo v2, "Internal buffer capacity error"

    .line 216
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    .end local v4    # "contentLen":I
    .end local v8    # "remainingLen":I
    .end local v13    # "macOffset":I
    .restart local v14    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    :catch_0
    move-exception v11

    .line 165
    .local v11, "bpe":Ljavax/crypto/BadPaddingException;
    move-object v14, v11

    .local v14, "reservedBPE":Ljavax/crypto/BadPaddingException;
    goto :goto_0

    .line 224
    .end local v11    # "bpe":Ljavax/crypto/BadPaddingException;
    .end local v14    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    .restart local v4    # "contentLen":I
    .restart local v8    # "remainingLen":I
    .restart local v13    # "macOffset":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v9, p1

    invoke-static/range {v5 .. v10}, Lsun/security/ssl/InputRecord;->checkMacTags(B[BIILsun/security/ssl/MAC;Z)Z

    .line 229
    .end local v4    # "contentLen":I
    .end local v8    # "remainingLen":I
    .end local v13    # "macOffset":I
    :cond_6
    if-eqz v14, :cond_7

    .line 230
    throw v14

    .line 138
    :cond_7
    return-void
.end method

.method doHashes()V
    .locals 3

    .prologue
    .line 326
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    sub-int v0, v1, v2

    .line 328
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 329
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    invoke-direct {p0, v1, v2, v0}, Lsun/security/ssl/InputRecord;->hashInternal([BII)V

    .line 330
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v1, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    .line 325
    :cond_0
    return-void
.end method

.method enableFormatChecks()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    .line 104
    return-void
.end method

.method getHandshakeHash()Lsun/security/ssl/HandshakeHash;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lsun/security/ssl/InputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    return-object v0
.end method

.method getHelloVersion()Lsun/security/ssl/ProtocolVersion;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lsun/security/ssl/InputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    return-object v0
.end method

.method ignore(I)V
    .locals 1
    .param p1, "bytes"    # I

    .prologue
    .line 311
    if-lez p1, :cond_0

    .line 312
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 313
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v0, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    .line 310
    :cond_0
    return-void
.end method

.method isAppDataValid()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lsun/security/ssl/InputRecord;->appDataValid:Z

    return v0
.end method

.method queueHandshake(Lsun/security/ssl/InputRecord;)V
    .locals 8
    .param p1, "r"    # Lsun/security/ssl/InputRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x5

    .line 364
    invoke-virtual {p0}, Lsun/security/ssl/InputRecord;->doHashes()V

    .line 370
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    if-le v2, v7, :cond_1

    .line 371
    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v3, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int v0, v2, v3

    .line 372
    .local v0, "len":I
    if-eqz v0, :cond_0

    .line 373
    iget-object v2, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v3, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    invoke-static {v2, v3, v4, v7, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 375
    :cond_0
    iput v7, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 376
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    .line 377
    add-int/lit8 v2, v0, 0x5

    iput v2, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 383
    .end local v0    # "len":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    iget v3, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int v0, v2, v3

    .line 384
    .restart local v0    # "len":I
    iget-object v2, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    array-length v2, v2

    if-ge v2, v0, :cond_2

    .line 387
    new-array v1, v0, [B

    .line 388
    .local v1, "newbuf":[B
    iget-object v2, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v3, p0, Ljava/io/ByteArrayInputStream;->count:I

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 389
    iput-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 395
    .end local v1    # "newbuf":[B
    :cond_2
    iget-object v2, p1, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v3, p1, Ljava/io/ByteArrayInputStream;->pos:I

    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v5, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v6, p0, Ljava/io/ByteArrayInputStream;->count:I

    sub-int v6, v0, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 396
    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 403
    iget v2, p1, Lsun/security/ssl/InputRecord;->lastHashed:I

    iget v3, p1, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int v0, v2, v3

    .line 404
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    if-ne v2, v7, :cond_3

    .line 405
    iget v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    add-int/2addr v2, v0

    iput v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    .line 410
    iget v2, p1, Ljava/io/ByteArrayInputStream;->count:I

    iput v2, p1, Ljava/io/ByteArrayInputStream;->pos:I

    .line 358
    return-void

    .line 407
    :cond_3
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v3, "?? confused buffer hashing ??"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method read(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "s"    # Ljava/io/InputStream;
    .param p2, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 471
    iget-boolean v1, p0, Lsun/security/ssl/InputRecord;->isClosed:Z

    if-eqz v1, :cond_0

    .line 472
    return-void

    .line 479
    :cond_0
    iget v1, p0, Lsun/security/ssl/InputRecord;->exlen:I

    if-ge v1, v5, :cond_2

    .line 480
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v2, p0, Lsun/security/ssl/InputRecord;->exlen:I

    iget v3, p0, Lsun/security/ssl/InputRecord;->exlen:I

    rsub-int/lit8 v3, v3, 0x5

    invoke-direct {p0, p1, v1, v2, v3}, Lsun/security/ssl/InputRecord;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 481
    .local v0, "really":I
    if-gez v0, :cond_1

    .line 482
    new-instance v1, Ljava/io/EOFException;

    const-string/jumbo v2, "SSL peer shut down incorrectly"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_1
    iput v5, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 486
    iput v5, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 487
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v1, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    .line 496
    .end local v0    # "really":I
    :cond_2
    iget-boolean v1, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    if-nez v1, :cond_4

    .line 497
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    .line 503
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v1, v1, v4

    const/16 v2, 0x16

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v1, v1, v4

    const/16 v2, 0x15

    if-eq v1, v2, :cond_3

    .line 504
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/InputRecord;->handleUnknownRecord(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 470
    :goto_0
    return-void

    .line 506
    :cond_3
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/InputRecord;->readV3Record(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 509
    :cond_4
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/InputRecord;->readV3Record(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method setAppDataValid(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lsun/security/ssl/InputRecord;->appDataValid:Z

    .line 113
    return-void
.end method

.method setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V
    .locals 0
    .param p1, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;

    .prologue
    .line 131
    iput-object p1, p0, Lsun/security/ssl/InputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    .line 130
    return-void
.end method

.method setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 0
    .param p1, "helloVersion"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    .line 94
    iput-object p1, p0, Lsun/security/ssl/InputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    .line 93
    return-void
.end method

.method writeBuffer(Ljava/io/OutputStream;[BII)V
    .locals 1
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
    .line 687
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 688
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 686
    return-void
.end method
