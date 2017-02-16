.class public Lsun/security/util/DerOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "DerOutputStream.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field private static lexOrder:Lsun/security/util/ByteArrayLexOrder;

.field private static tagOrder:Lsun/security/util/ByteArrayTagOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lsun/security/util/ByteArrayLexOrder;

    invoke-direct {v0}, Lsun/security/util/ByteArrayLexOrder;-><init>()V

    sput-object v0, Lsun/security/util/DerOutputStream;->lexOrder:Lsun/security/util/ByteArrayLexOrder;

    .line 365
    new-instance v0, Lsun/security/util/ByteArrayTagOrder;

    invoke-direct {v0}, Lsun/security/util/ByteArrayTagOrder;-><init>()V

    sput-object v0, Lsun/security/util/DerOutputStream;->tagOrder:Lsun/security/util/ByteArrayTagOrder;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method private putIntegerContents(I)V
    .locals 10
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 189
    new-array v0, v9, [B

    .line 190
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .line 194
    .local v3, "start":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    .line 195
    const v4, 0xff00

    and-int/2addr v4, p1

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    const/4 v5, 0x2

    aput-byte v4, v0, v5

    .line 196
    const/high16 v4, 0xff0000

    and-int/2addr v4, p1

    ushr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v0, v5

    .line 197
    const/high16 v4, -0x1000000

    and-int/2addr v4, p1

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 202
    aget-byte v4, v0, v6

    if-ne v4, v8, :cond_0

    .line 206
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 207
    aget-byte v4, v0, v1

    if-ne v4, v8, :cond_1

    .line 208
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_1

    .line 209
    add-int/lit8 v3, v3, 0x1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "j":I
    :cond_0
    aget-byte v4, v0, v6

    if-nez v4, :cond_1

    .line 217
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1
    if-ge v1, v7, :cond_1

    .line 218
    aget-byte v4, v0, v1

    if-nez v4, :cond_1

    .line 219
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_1

    .line 220
    add-int/lit8 v3, v3, 0x1

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    .end local v1    # "j":I
    :cond_1
    rsub-int/lit8 v4, v3, 0x4

    invoke-virtual {p0, v4}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 227
    move v2, v3

    .local v2, "k":I
    :goto_2
    if-ge v2, v9, :cond_2

    .line 228
    aget-byte v4, v0, v2

    invoke-virtual {p0, v4}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 187
    :cond_2
    return-void
.end method

.method private putOrderedSet(B[Lsun/security/util/DerEncoder;Ljava/util/Comparator;)V
    .locals 6
    .param p1, "tag"    # B
    .param p2, "set"    # [Lsun/security/util/DerEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B[",
            "Lsun/security/util/DerEncoder;",
            "Ljava/util/Comparator",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    .local p3, "order":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    array-length v4, p2

    new-array v3, v4, [Lsun/security/util/DerOutputStream;

    .line 377
    .local v3, "streams":[Lsun/security/util/DerOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_0

    .line 378
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v4, v3, v2

    .line 379
    aget-object v4, p2, v2

    aget-object v5, v3, v2

    invoke-interface {v4, v5}, Lsun/security/util/DerEncoder;->derEncode(Ljava/io/OutputStream;)V

    .line 377
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    :cond_0
    array-length v4, v3

    new-array v0, v4, [[B

    .line 384
    .local v0, "bufs":[[B
    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 385
    aget-object v4, v3, v2

    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    aput-object v4, v0, v2

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 387
    :cond_1
    invoke-static {v0, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 389
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 390
    .local v1, "bytes":Lsun/security/util/DerOutputStream;
    const/4 v2, 0x0

    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 391
    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 390
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 393
    :cond_2
    invoke-virtual {p0, p1, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 374
    return-void
.end method

.method private putTime(Ljava/util/Date;B)V
    .locals 6
    .param p1, "d"    # Ljava/util/Date;
    .param p2, "tag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    const-string/jumbo v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 494
    .local v3, "tz":Ljava/util/TimeZone;
    const/4 v0, 0x0

    .line 496
    .local v0, "pattern":Ljava/lang/String;
    const/16 v4, 0x17

    if-ne p2, v4, :cond_0

    .line 497
    const-string/jumbo v0, "yyMMddHHmmss\'Z\'"

    .line 503
    .end local p2    # "tag":B
    .local v0, "pattern":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 504
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 505
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 511
    .local v2, "time":[B
    invoke-virtual {p0, p2}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 512
    array-length v4, v2

    invoke-virtual {p0, v4}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 513
    invoke-virtual {p0, v2}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 487
    return-void

    .line 499
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v2    # "time":[B
    .local v0, "pattern":Ljava/lang/String;
    .restart local p2    # "tag":B
    :cond_0
    const/16 p2, 0x18

    .line 500
    .local p2, "tag":B
    const-string/jumbo v0, "yyyyMMddHHmmss\'Z\'"

    .local v0, "pattern":Ljava/lang/String;
    goto :goto_0
.end method

.method private writeString(Ljava/lang/String;BLjava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stringTag"    # B
    .param p3, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 455
    .local v0, "data":[B
    invoke-virtual {p0, p2}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 456
    array-length v1, v0

    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 457
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 452
    return-void
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    invoke-virtual {p0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 573
    return-void
.end method

.method public putBMPString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    const-string/jumbo v0, "UnicodeBigUnmarked"

    const/16 v1, 0x1e

    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    .line 432
    return-void
.end method

.method public putBitString([B)V
    .locals 1
    .param p1, "bits"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 239
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 241
    invoke-virtual {p0, p1}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 237
    return-void
.end method

.method public putBoolean(Z)V
    .locals 1
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 141
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 142
    if-eqz p1, :cond_0

    .line 143
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 139
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    goto :goto_0
.end method

.method public putDerValue(Lsun/security/util/DerValue;)V
    .locals 0
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1, p0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 124
    return-void
.end method

.method public putEnumerated(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 155
    invoke-direct {p0, p1}, Lsun/security/util/DerOutputStream;->putIntegerContents(I)V

    .line 153
    return-void
.end method

.method public putGeneralString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    const-string/jumbo v0, "ASCII"

    const/16 v1, 0x1b

    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    .line 439
    return-void
.end method

.method public putGeneralizedTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "d"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerOutputStream;->putTime(Ljava/util/Date;B)V

    .line 476
    return-void
.end method

.method public putIA5String(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    const-string/jumbo v0, "ASCII"

    const/16 v1, 0x16

    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    .line 425
    return-void
.end method

.method public putInteger(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 184
    invoke-direct {p0, p1}, Lsun/security/util/DerOutputStream;->putIntegerContents(I)V

    .line 182
    return-void
.end method

.method public putInteger(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "i"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 174
    return-void
.end method

.method public putInteger(Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "i"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 165
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 166
    .local v0, "buf":[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 167
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lsun/security/util/DerOutputStream;->write([BII)V

    .line 163
    return-void
.end method

.method public putLength(I)V
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 524
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 522
    :goto_0
    return-void

    .line 526
    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    .line 527
    const/16 v0, -0x7f

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 528
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    goto :goto_0

    .line 530
    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    .line 531
    const/16 v0, -0x7e

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 532
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 533
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    goto :goto_0

    .line 535
    :cond_2
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_3

    .line 536
    const/16 v0, -0x7d

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 537
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 538
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 539
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    goto :goto_0

    .line 542
    :cond_3
    const/16 v0, -0x7c

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 543
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 544
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 545
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 546
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    goto :goto_0
.end method

.method public putNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 282
    return-void
.end method

.method public putOID(Lsun/security/util/ObjectIdentifier;)V
    .locals 0
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p1, p0}, Lsun/security/util/ObjectIdentifier;->encode(Lsun/security/util/DerOutputStream;)V

    .line 291
    return-void
.end method

.method public putOctetString([B)V
    .locals 1
    .param p1, "octets"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 274
    return-void
.end method

.method public putOrderedSet(B[Lsun/security/util/DerEncoder;)V
    .locals 1
    .param p1, "tag"    # B
    .param p2, "set"    # [Lsun/security/util/DerEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    sget-object v0, Lsun/security/util/DerOutputStream;->tagOrder:Lsun/security/util/ByteArrayTagOrder;

    invoke-direct {p0, p1, p2, v0}, Lsun/security/util/DerOutputStream;->putOrderedSet(B[Lsun/security/util/DerEncoder;Ljava/util/Comparator;)V

    .line 351
    return-void
.end method

.method public putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V
    .locals 1
    .param p1, "tag"    # B
    .param p2, "set"    # [Lsun/security/util/DerEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    sget-object v0, Lsun/security/util/DerOutputStream;->lexOrder:Lsun/security/util/ByteArrayLexOrder;

    invoke-direct {p0, p1, p2, v0}, Lsun/security/util/DerOutputStream;->putOrderedSet(B[Lsun/security/util/DerEncoder;Ljava/util/Comparator;)V

    .line 337
    return-void
.end method

.method public putPrintableString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    const-string/jumbo v0, "ASCII"

    const/16 v1, 0x13

    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    .line 407
    return-void
.end method

.method public putSequence([Lsun/security/util/DerValue;)V
    .locals 3
    .param p1, "seq"    # [Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 304
    .local v0, "bytes":Lsun/security/util/DerOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 305
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_0
    const/16 v2, 0x30

    invoke-virtual {p0, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 300
    return-void
.end method

.method public putSet([Lsun/security/util/DerValue;)V
    .locals 3
    .param p1, "set"    # [Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 321
    .local v0, "bytes":Lsun/security/util/DerOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 322
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    const/16 v2, 0x31

    invoke-virtual {p0, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 317
    return-void
.end method

.method public putT61String(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    const-string/jumbo v0, "ISO-8859-1"

    const/16 v1, 0x14

    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    .line 414
    return-void
.end method

.method public putTag(BZB)V
    .locals 2
    .param p1, "tagClass"    # B
    .param p2, "form"    # Z
    .param p3, "val"    # B

    .prologue
    .line 560
    or-int v1, p1, p3

    int-to-byte v0, v1

    .line 561
    .local v0, "tag":B
    if-eqz p2, :cond_0

    .line 562
    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 564
    :cond_0
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 559
    return-void
.end method

.method public putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V
    .locals 1
    .param p1, "ba"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p1}, Lsun/security/util/BitArray;->truncate()Lsun/security/util/BitArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 265
    return-void
.end method

.method public putUTCTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "d"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    const/16 v0, 0x17

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerOutputStream;->putTime(Ljava/util/Date;B)V

    .line 466
    return-void
.end method

.method public putUTF8String(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    const-string/jumbo v0, "UTF8"

    const/16 v1, 0xc

    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    .line 400
    return-void
.end method

.method public putUnalignedBitString(Lsun/security/util/BitArray;)V
    .locals 3
    .param p1, "ba"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v0

    .line 253
    .local v0, "bits":[B
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 254
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 255
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p1}, Lsun/security/util/BitArray;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 256
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 250
    return-void
.end method

.method public write(BLsun/security/util/DerOutputStream;)V
    .locals 3
    .param p1, "tag"    # B
    .param p2, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 94
    iget v0, p2, Lsun/security/util/DerOutputStream;->count:I

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 95
    iget-object v0, p2, Lsun/security/util/DerOutputStream;->buf:[B

    iget v1, p2, Lsun/security/util/DerOutputStream;->count:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lsun/security/util/DerOutputStream;->write([BII)V

    .line 92
    return-void
.end method

.method public write(B[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 79
    array-length v0, p2

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 80
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0}, Lsun/security/util/DerOutputStream;->write([BII)V

    .line 77
    return-void
.end method

.method public writeImplicit(BLsun/security/util/DerOutputStream;)V
    .locals 3
    .param p1, "tag"    # B
    .param p2, "value"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 118
    iget-object v0, p2, Lsun/security/util/DerOutputStream;->buf:[B

    iget v1, p2, Lsun/security/util/DerOutputStream;->count:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lsun/security/util/DerOutputStream;->write([BII)V

    .line 116
    return-void
.end method
