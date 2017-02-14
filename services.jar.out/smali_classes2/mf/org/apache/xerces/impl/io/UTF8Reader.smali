.class public final Lmf/org/apache/xerces/impl/io/UTF8Reader;
.super Ljava/io/Reader;
.source "UTF8Reader.java"


# static fields
.field private static final DEBUG_READ:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected final fBuffer:[B

.field private final fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

.field protected final fInputStream:Ljava/io/InputStream;

.field private final fLocale:Ljava/util/Locale;

.field protected fOffset:I

.field private fSurrogate:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/16 v0, 0x800

    new-instance v1, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    new-array v0, p2, [B

    invoke-direct {p0, p1, v0, p3, p4}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    iput-object p3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iput-object p4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method private expectedByte(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ExpectedByte"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private invalidByte(III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidByte"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private invalidSurrogate(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidHighSurrogate"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "OperationNotSupported"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "mark()"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "UTF-8"

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x80

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, -0x1

    iget v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    if-eq v0, v6, :cond_0

    iput v6, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eqz v0, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v0, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    :goto_1
    if-eq v1, v6, :cond_3

    if-lt v1, v8, :cond_4

    and-int/lit16 v3, v1, 0xe0

    const/16 v4, 0xc0

    if-eq v3, v4, :cond_5

    :cond_1
    and-int/lit16 v3, v1, 0xf0

    const/16 v4, 0xe0

    if-eq v3, v4, :cond_9

    and-int/lit16 v3, v1, 0xf8

    const/16 v4, 0xf0

    if-eq v3, v4, :cond_14

    const/4 v0, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_1

    :cond_3
    return v6

    :cond_4
    int-to-char v0, v1

    goto :goto_0

    :cond_5
    and-int/lit8 v3, v1, 0x1e

    if-eqz v3, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v0, v2, :cond_6

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    :goto_2
    if-eq v0, v6, :cond_7

    :goto_3
    and-int/lit16 v2, v0, 0xc0

    if-ne v2, v8, :cond_8

    :goto_4
    shl-int/lit8 v1, v1, 0x6

    and-int/lit16 v1, v1, 0x7c0

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_2

    :cond_7
    invoke-direct {p0, v7, v7}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_3

    :cond_8
    invoke-direct {p0, v7, v7, v0}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_4

    :cond_9
    iget v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v0, v2, :cond_c

    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    move v9, v2

    move v2, v0

    move v0, v9

    :goto_5
    if-eq v2, v6, :cond_d

    :goto_6
    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v8, :cond_e

    :cond_a
    :goto_7
    invoke-direct {p0, v7, v5, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_b
    :goto_8
    iget v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v0, v3, :cond_11

    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    :goto_9
    if-eq v0, v6, :cond_12

    :goto_a
    and-int/lit16 v3, v0, 0xc0

    if-ne v3, v8, :cond_13

    :goto_b
    shl-int/lit8 v1, v1, 0xc

    const v3, 0xf000

    and-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x6

    and-int/lit16 v2, v2, 0xfc0

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_5

    :cond_d
    invoke-direct {p0, v7, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_6

    :cond_e
    const/16 v3, 0xed

    if-eq v1, v3, :cond_10

    :cond_f
    and-int/lit8 v3, v1, 0xf

    if-nez v3, :cond_b

    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_a

    goto :goto_8

    :cond_10
    const/16 v3, 0xa0

    if-lt v2, v3, :cond_f

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_9

    :cond_12
    invoke-direct {p0, v5, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_a

    :cond_13
    invoke-direct {p0, v5, v5, v0}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_b

    :cond_14
    iget v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v0, v2, :cond_17

    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    move v9, v2

    move v2, v0

    move v0, v9

    :goto_c
    if-eq v2, v6, :cond_18

    :goto_d
    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v8, :cond_19

    :cond_15
    invoke-direct {p0, v7, v5, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_16
    :goto_e
    iget v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v0, v3, :cond_1a

    iget-object v4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    move v9, v3

    move v3, v0

    move v0, v9

    :goto_f
    if-eq v3, v6, :cond_1b

    :goto_10
    and-int/lit16 v4, v3, 0xc0

    if-ne v4, v8, :cond_1c

    :goto_11
    iget v4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v0, v4, :cond_1d

    iget-object v4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    :goto_12
    if-eq v0, v6, :cond_1e

    :goto_13
    and-int/lit16 v4, v0, 0xc0

    if-ne v4, v8, :cond_1f

    :goto_14
    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x1c

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v1, v4

    const/16 v4, 0x10

    if-gt v1, v4, :cond_20

    :goto_15
    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v1, v1, 0x6

    and-int/lit16 v1, v1, 0x3c0

    const v4, 0xd800

    or-int/2addr v1, v4

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3c

    or-int/2addr v1, v2

    shr-int/lit8 v2, v3, 0x4

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x6

    and-int/lit16 v2, v2, 0x3c0

    const v3, 0xdc00

    or-int/2addr v2, v3

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_c

    :cond_18
    const/4 v3, 0x4

    invoke-direct {p0, v7, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_d

    :cond_19
    and-int/lit8 v3, v2, 0x30

    if-nez v3, :cond_16

    and-int/lit8 v3, v1, 0x7

    if-eqz v3, :cond_15

    goto :goto_e

    :cond_1a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_f

    :cond_1b
    const/4 v4, 0x4

    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_10

    :cond_1c
    invoke-direct {p0, v5, v5, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_11

    :cond_1d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_12

    :cond_1e
    const/4 v4, 0x4

    const/4 v5, 0x4

    invoke-direct {p0, v4, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_13

    :cond_1f
    const/4 v4, 0x4

    const/4 v5, 0x4

    invoke-direct {p0, v4, v5, v0}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_14

    :cond_20
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    goto :goto_15
.end method

.method public read([CII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    move v1, p2

    :goto_0
    const/4 v2, 0x0

    move v4, v1

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v3, v2, v1

    if-gez v3, :cond_5

    move v2, v0

    :goto_2
    if-ge v1, v0, :cond_32

    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v5, v3, v1

    if-gez v5, :cond_7

    and-int/lit16 v8, v5, 0xff

    and-int/lit16 v3, v8, 0xe0

    const/16 v5, 0xc0

    if-eq v3, v5, :cond_8

    :cond_0
    and-int/lit16 v3, v8, 0xf0

    const/16 v5, 0xe0

    if-eq v3, v5, :cond_e

    and-int/lit16 v3, v8, 0xf8

    const/16 v5, 0xf0

    if-eq v3, v5, :cond_1d

    if-gt v4, p2, :cond_31

    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v3, v5, v8}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    move v3, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    array-length v0, v0

    if-gt p3, v0, :cond_2

    :goto_4
    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    move v0, p2

    :goto_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    sub-int v2, v0, p2

    add-int/2addr v1, v2

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    array-length p3, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, p1, p2

    const/4 v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    return v0

    :cond_5
    add-int/lit8 v2, v4, 0x1

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p1, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v2

    goto :goto_1

    :cond_6
    move v2, v0

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v4, 0x1

    int-to-char v5, v5

    int-to-char v5, v5

    aput-char v5, p1, v4

    goto :goto_3

    :cond_8
    and-int/lit8 v3, v8, 0x1e

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_9

    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_a

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move v5, v2

    move v2, v3

    :goto_7
    and-int/lit16 v3, v2, 0xc0

    const/16 v6, 0x80

    if-ne v3, v6, :cond_c

    :goto_8
    shl-int/lit8 v3, v8, 0x6

    and-int/lit16 v3, v3, 0x7c0

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, p1, v4

    add-int/lit8 v2, v5, -0x1

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    move v5, v2

    move v2, v3

    goto :goto_7

    :cond_a
    if-gt v4, p2, :cond_b

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v0, v4, p2

    return v0

    :cond_c
    if-gt v4, p2, :cond_d

    const/4 v3, 0x2

    const/4 v6, 0x2

    invoke-direct {p0, v3, v6, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_8

    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v3, v8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x2

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v0, v4, p2

    return v0

    :cond_e
    add-int/lit8 v5, v1, 0x1

    if-lt v5, v0, :cond_11

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_12

    :goto_9
    add-int/lit8 v3, v2, 0x1

    move v6, v1

    :goto_a
    and-int/lit16 v1, v6, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_14

    :cond_f
    :goto_b
    if-gt v4, p2, :cond_17

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_10
    :goto_c
    add-int/lit8 v1, v5, 0x1

    if-lt v1, v0, :cond_18

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_19

    :goto_d
    add-int/lit8 v3, v3, 0x1

    move v5, v3

    :goto_e
    and-int/lit16 v3, v2, 0xc0

    const/16 v7, 0x80

    if-ne v3, v7, :cond_1b

    :goto_f
    shl-int/lit8 v3, v8, 0xc

    const v7, 0xf000

    and-int/2addr v3, v7

    shl-int/lit8 v6, v6, 0x6

    and-int/lit16 v6, v6, 0xfc0

    or-int/2addr v3, v6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, p1, v4

    add-int/lit8 v2, v5, -0x2

    goto/16 :goto_3

    :cond_11
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    move v6, v1

    move v3, v2

    goto :goto_a

    :cond_12
    if-gt v4, p2, :cond_13

    const/4 v3, 0x2

    const/4 v6, 0x3

    invoke-direct {p0, v3, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_9

    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v0, v4, p2

    return v0

    :cond_14
    const/16 v1, 0xed

    if-eq v8, v1, :cond_16

    :cond_15
    and-int/lit8 v1, v8, 0xf

    if-nez v1, :cond_10

    and-int/lit8 v1, v6, 0x20

    if-eqz v1, :cond_f

    goto :goto_c

    :cond_16
    const/16 v1, 0xa0

    if-lt v6, v1, :cond_15

    goto :goto_b

    :cond_17
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x2

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v0, v4, p2

    return v0

    :cond_18
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    move v5, v3

    goto :goto_e

    :cond_19
    if-gt v4, p2, :cond_1a

    const/4 v5, 0x3

    const/4 v7, 0x3

    invoke-direct {p0, v5, v7}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_d

    :cond_1a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x2

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v0, v4, p2

    return v0

    :cond_1b
    if-gt v4, p2, :cond_1c

    const/4 v3, 0x3

    const/4 v7, 0x3

    invoke-direct {p0, v3, v7, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto/16 :goto_f

    :cond_1c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v3, v8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x3

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v0, v4, p2

    return v0

    :cond_1d
    add-int/lit8 v5, v1, 0x1

    if-lt v5, v0, :cond_20

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_21

    :goto_10
    add-int/lit8 v3, v2, 0x1

    move v7, v1

    :goto_11
    and-int/lit16 v1, v7, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_23

    :cond_1e
    if-gt v4, p2, :cond_24

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v7}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_1f
    :goto_12
    add-int/lit8 v2, v5, 0x1

    if-lt v2, v0, :cond_25

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_26

    :goto_13
    add-int/lit8 v3, v3, 0x1

    move v6, v1

    :goto_14
    and-int/lit16 v1, v6, 0xc0

    const/16 v5, 0x80

    if-ne v1, v5, :cond_28

    :goto_15
    add-int/lit8 v1, v2, 0x1

    if-lt v1, v0, :cond_2a

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2b

    :goto_16
    add-int/lit8 v3, v3, 0x1

    move v5, v3

    :goto_17
    and-int/lit16 v3, v2, 0xc0

    const/16 v9, 0x80

    if-ne v3, v9, :cond_2d

    :goto_18
    shl-int/lit8 v3, v8, 0x2

    and-int/lit8 v3, v3, 0x1c

    shr-int/lit8 v8, v7, 0x4

    and-int/lit8 v8, v8, 0x3

    or-int/2addr v3, v8

    const/16 v8, 0x10

    if-gt v3, v8, :cond_2f

    :goto_19
    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v7, v7, 0xf

    and-int/lit8 v6, v6, 0x3f

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit16 v3, v3, 0x3c0

    const v8, 0xd800

    or-int/2addr v3, v8

    shl-int/lit8 v7, v7, 0x2

    or-int/2addr v3, v7

    shr-int/lit8 v7, v6, 0x4

    or-int/2addr v7, v3

    shl-int/lit8 v3, v6, 0x6

    and-int/lit16 v3, v3, 0x3c0

    const v6, 0xdc00

    or-int/2addr v3, v6

    or-int v6, v3, v2

    add-int/lit8 v3, v4, 0x1

    int-to-char v2, v7

    int-to-char v2, v2

    aput-char v2, p1, v4

    add-int/lit8 v2, v5, -0x2

    if-le v2, p3, :cond_30

    iput v6, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_3

    :cond_20
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    move v7, v1

    move v3, v2

    goto :goto_11

    :cond_21
    if-gt v4, p2, :cond_22

    const/4 v3, 0x2

    const/4 v6, 0x4

    invoke-direct {p0, v3, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto/16 :goto_10

    :cond_22
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v0, v4, p2

    return v0

    :cond_23
    and-int/lit8 v1, v7, 0x30

    if-nez v1, :cond_1f

    and-int/lit8 v1, v8, 0x7

    if-eqz v1, :cond_1e

    goto/16 :goto_12

    :cond_24
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x2

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v0, v4, p2

    return v0

    :cond_25
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    move v6, v1

    goto/16 :goto_14

    :cond_26
    if-gt v4, p2, :cond_27

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {p0, v5, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto/16 :goto_13

    :cond_27
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x2

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v0, v4, p2

    return v0

    :cond_28
    if-gt v4, p2, :cond_29

    const/4 v1, 0x3

    const/4 v5, 0x4

    invoke-direct {p0, v1, v5, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto/16 :goto_15

    :cond_29
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x2

    int-to-byte v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x3

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v0, v4, p2

    return v0

    :cond_2a
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    move v5, v3

    goto/16 :goto_17

    :cond_2b
    if-gt v4, p2, :cond_2c

    const/4 v5, 0x4

    const/4 v9, 0x4

    invoke-direct {p0, v5, v9}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto/16 :goto_16

    :cond_2c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x2

    int-to-byte v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x3

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v0, v4, p2

    return v0

    :cond_2d
    if-gt v4, p2, :cond_2e

    const/4 v3, 0x4

    const/4 v9, 0x4

    invoke-direct {p0, v3, v9, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto/16 :goto_18

    :cond_2e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v3, v8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v3, v7

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x2

    int-to-byte v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x4

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v0, v4, p2

    return v0

    :cond_2f
    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    goto/16 :goto_19

    :cond_30
    add-int/lit8 v4, v3, 0x1

    int-to-char v5, v6

    int-to-char v5, v5

    aput-char v5, p1, v3

    move v3, v4

    goto/16 :goto_3

    :cond_31
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v0, v4, p2

    return v0

    :cond_32
    return v2
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    return-void
.end method

.method public skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    array-length v0, v0

    new-array v5, v0, [C

    move-wide v0, p1

    :cond_0
    array-length v2, v5

    int-to-long v6, v2

    cmp-long v2, v6, v0

    if-ltz v2, :cond_1

    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    array-length v2, v5

    :goto_1
    invoke-virtual {p0, v5, v4, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->read([CII)I

    move-result v2

    if-gtz v2, :cond_3

    :goto_2
    sub-long v0, p1, v0

    return-wide v0

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    long-to-int v2, v0

    goto :goto_1

    :cond_3
    int-to-long v6, v2

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-lez v2, :cond_4

    move v2, v3

    :goto_3
    if-nez v2, :cond_0

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_3
.end method
