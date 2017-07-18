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

    new-instance v0, Lsun/security/util/ByteArrayLexOrder;

    invoke-direct {v0}, Lsun/security/util/ByteArrayLexOrder;-><init>()V

    sput-object v0, Lsun/security/util/DerOutputStream;->lexOrder:Lsun/security/util/ByteArrayLexOrder;

    new-instance v0, Lsun/security/util/ByteArrayTagOrder;

    invoke-direct {v0}, Lsun/security/util/ByteArrayTagOrder;-><init>()V

    sput-object v0, Lsun/security/util/DerOutputStream;->tagOrder:Lsun/security/util/ByteArrayTagOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method private putIntegerContents(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    new-array v0, v9, [B

    const/4 v3, 0x0

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    const v4, 0xff00

    and-int/2addr v4, p1

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    const/4 v5, 0x2

    aput-byte v4, v0, v5

    const/high16 v4, 0xff0000

    and-int/2addr v4, p1

    ushr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v0, v5

    const/high16 v4, -0x1000000

    and-int/2addr v4, p1

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    aget-byte v4, v0, v6

    if-ne v4, v8, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_1

    aget-byte v4, v0, v1

    if-ne v4, v8, :cond_1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-byte v4, v0, v6

    if-nez v4, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_1

    aget-byte v4, v0, v1

    if-nez v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    rsub-int/lit8 v4, v3, 0x4

    invoke-virtual {p0, v4}, Lsun/security/util/DerOutputStream;->putLength(I)V

    move v2, v3

    :goto_2
    if-ge v2, v9, :cond_2

    aget-byte v4, v0, v2

    invoke-virtual {p0, v4}, Lsun/security/util/DerOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private putOrderedSet(B[Lsun/security/util/DerEncoder;Ljava/util/Comparator;)V
    .locals 6
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

    array-length v4, p2

    new-array v3, v4, [Lsun/security/util/DerOutputStream;

    const/4 v2, 0x0

    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_0

    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v4, v3, v2

    aget-object v4, p2, v2

    aget-object v5, v3, v2

    invoke-interface {v4, v5}, Lsun/security/util/DerEncoder;->derEncode(Ljava/io/OutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v4, v3

    new-array v0, v4, [[B

    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v4, v3, v2

    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    const/4 v2, 0x0

    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Lsun/security/util/DerOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method private putTime(Ljava/util/Date;B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    const/4 v0, 0x0

    const/16 v4, 0x17

    if-ne p2, v4, :cond_0

    const-string/jumbo v0, "yyMMddHHmmss\'Z\'"

    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, p2}, Lsun/security/util/DerOutputStream;->write(I)V

    array-length v4, v2

    invoke-virtual {p0, v4}, Lsun/security/util/DerOutputStream;->putLength(I)V

    invoke-virtual {p0, v2}, Lsun/security/util/DerOutputStream;->write([B)V

    return-void

    :cond_0
    const/16 p2, 0x18

    const-string/jumbo v0, "yyyyMMddHHmmss\'Z\'"

    goto :goto_0
.end method

.method private writeString(Ljava/lang/String;BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p2}, Lsun/security/util/DerOutputStream;->write(I)V

    array-length v1, v0

    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->putLength(I)V

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public putBMPString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "UnicodeBigUnmarked"

    const/16 v1, 0x1e

    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    return-void
.end method

.method public putBitString([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    invoke-virtual {p0, p1}, Lsun/security/util/DerOutputStream;->write([B)V

    return-void
.end method

.method public putBoolean(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    goto :goto_0
.end method

.method public putDerValue(Lsun/security/util/DerValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public putEnumerated(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    invoke-direct {p0, p1}, Lsun/security/util/DerOutputStream;->putIntegerContents(I)V

    return-void
.end method

.method public putGeneralString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "ASCII"

    const/16 v1, 0x1b

    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    return-void
.end method

.method public putGeneralizedTime(Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerOutputStream;->putTime(Ljava/util/Date;B)V

    return-void
.end method

.method public putIA5String(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "ASCII"

    const/16 v1, 0x16

    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    return-void
.end method

.method public putInteger(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    invoke-direct {p0, p1}, Lsun/security/util/DerOutputStream;->putIntegerContents(I)V

    return-void
.end method

.method public putInteger(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    return-void
.end method

.method public putInteger(Ljava/math/BigInteger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->putLength(I)V

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lsun/security/util/DerOutputStream;->write([BII)V

    return-void
.end method

.method public putLength(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    const/16 v0, -0x7f

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    const/16 v0, -0x7e

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_3

    const/16 v0, -0x7d

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    goto :goto_0

    :cond_3
    const/16 v0, -0x7c

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

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

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    return-void
.end method

.method public putOID(Lsun/security/util/ObjectIdentifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lsun/security/util/ObjectIdentifier;->encode(Lsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public putOctetString([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lsun/security/util/DerOutputStream;->write(B[B)V

    return-void
.end method

.method public putOrderedSet(B[Lsun/security/util/DerEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun/security/util/DerOutputStream;->tagOrder:Lsun/security/util/ByteArrayTagOrder;

    invoke-direct {p0, p1, p2, v0}, Lsun/security/util/DerOutputStream;->putOrderedSet(B[Lsun/security/util/DerEncoder;Ljava/util/Comparator;)V

    return-void
.end method

.method public putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun/security/util/DerOutputStream;->lexOrder:Lsun/security/util/ByteArrayLexOrder;

    invoke-direct {p0, p1, p2, v0}, Lsun/security/util/DerOutputStream;->putOrderedSet(B[Lsun/security/util/DerEncoder;Ljava/util/Comparator;)V

    return-void
.end method

.method public putPrintableString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "ASCII"

    const/16 v1, 0x13

    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    return-void
.end method

.method public putSequence([Lsun/security/util/DerValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x30

    invoke-virtual {p0, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public putSet([Lsun/security/util/DerValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x31

    invoke-virtual {p0, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public putT61String(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "ISO-8859-1"

    const/16 v1, 0x14

    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    return-void
.end method

.method public putTag(BZB)V
    .locals 2

    or-int v1, p1, p3

    int-to-byte v0, v1

    if-eqz p2, :cond_0

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    return-void
.end method

.method public putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun/security/util/BitArray;->truncate()Lsun/security/util/BitArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putUnalignedBitString(Lsun/security/util/BitArray;)V

    return-void
.end method

.method public putUTCTime(Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerOutputStream;->putTime(Ljava/util/Date;B)V

    return-void
.end method

.method public putUTF8String(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "UTF8"

    const/16 v1, 0xc

    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    return-void
.end method

.method public putUnalignedBitString(Lsun/security/util/BitArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->putLength(I)V

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p1}, Lsun/security/util/BitArray;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write([B)V

    return-void
.end method

.method public write(BLsun/security/util/DerOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun/security/util/DerOutputStream;->write(I)V

    iget v0, p2, Lsun/security/util/DerOutputStream;->count:I

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    iget-object v0, p2, Lsun/security/util/DerOutputStream;->buf:[B

    iget v1, p2, Lsun/security/util/DerOutputStream;->count:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lsun/security/util/DerOutputStream;->write([BII)V

    return-void
.end method

.method public write(B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun/security/util/DerOutputStream;->write(I)V

    array-length v0, p2

    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0}, Lsun/security/util/DerOutputStream;->write([BII)V

    return-void
.end method

.method public writeImplicit(BLsun/security/util/DerOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun/security/util/DerOutputStream;->write(I)V

    iget-object v0, p2, Lsun/security/util/DerOutputStream;->buf:[B

    iget v1, p2, Lsun/security/util/DerOutputStream;->count:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lsun/security/util/DerOutputStream;->write([BII)V

    return-void
.end method
