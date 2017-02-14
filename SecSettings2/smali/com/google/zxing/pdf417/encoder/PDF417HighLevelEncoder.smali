.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# static fields
.field private static final MIXED:[B

.field private static final PUNCTUATION:[B

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, -0x1

    const/16 v8, 0xa

    const/16 v7, 0xd

    const/16 v6, 0x9

    const/4 v5, 0x0

    const/16 v2, 0x1e

    new-array v2, v2, [B

    const/16 v3, 0x30

    aput-byte v3, v2, v5

    const/4 v3, 0x1

    const/16 v4, 0x31

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x32

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x33

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x34

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x35

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x36

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x37

    aput-byte v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x38

    aput-byte v4, v2, v3

    const/16 v3, 0x39

    aput-byte v3, v2, v6

    const/16 v3, 0x26

    aput-byte v3, v2, v8

    const/16 v3, 0xb

    aput-byte v7, v2, v3

    const/16 v3, 0xc

    aput-byte v6, v2, v3

    const/16 v3, 0x2c

    aput-byte v3, v2, v7

    const/16 v3, 0xe

    const/16 v4, 0x3a

    aput-byte v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x23

    aput-byte v4, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0x2d

    aput-byte v4, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0x2e

    aput-byte v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x24

    aput-byte v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x2f

    aput-byte v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0x2b

    aput-byte v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0x25

    aput-byte v4, v2, v3

    const/16 v3, 0x16

    const/16 v4, 0x2a

    aput-byte v4, v2, v3

    const/16 v3, 0x17

    const/16 v4, 0x3d

    aput-byte v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0x5e

    aput-byte v4, v2, v3

    const/16 v3, 0x19

    aput-byte v5, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x20

    aput-byte v4, v2, v3

    const/16 v3, 0x1b

    aput-byte v5, v2, v3

    const/16 v3, 0x1c

    aput-byte v5, v2, v3

    const/16 v3, 0x1d

    aput-byte v5, v2, v3

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    const/16 v2, 0x1e

    new-array v2, v2, [B

    const/16 v3, 0x3b

    aput-byte v3, v2, v5

    const/4 v3, 0x1

    const/16 v4, 0x3c

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x3e

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x40

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x5b

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x5c

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x5d

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x5f

    aput-byte v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x60

    aput-byte v4, v2, v3

    const/16 v3, 0x7e

    aput-byte v3, v2, v6

    const/16 v3, 0x21

    aput-byte v3, v2, v8

    const/16 v3, 0xb

    aput-byte v7, v2, v3

    const/16 v3, 0xc

    aput-byte v6, v2, v3

    const/16 v3, 0x2c

    aput-byte v3, v2, v7

    const/16 v3, 0xe

    const/16 v4, 0x3a

    aput-byte v4, v2, v3

    const/16 v3, 0xf

    aput-byte v8, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0x2d

    aput-byte v4, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0x2e

    aput-byte v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x24

    aput-byte v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x2f

    aput-byte v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0x22

    aput-byte v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0x7c

    aput-byte v4, v2, v3

    const/16 v3, 0x16

    const/16 v4, 0x2a

    aput-byte v4, v2, v3

    const/16 v3, 0x17

    const/16 v4, 0x28

    aput-byte v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0x29

    aput-byte v4, v2, v3

    const/16 v3, 0x19

    const/16 v4, 0x3f

    aput-byte v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x7b

    aput-byte v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x7d

    aput-byte v4, v2, v3

    const/16 v3, 0x1c

    const/16 v4, 0x27

    aput-byte v4, v2, v3

    const/16 v3, 0x1d

    aput-byte v5, v2, v3

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    array-length v2, v2

    if-lt v1, v2, :cond_2

    return-void

    :cond_0
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    aget-byte v0, v2, v1

    if-gtz v0, :cond_1

    :goto_2
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    aget-byte v0, v2, v1

    if-gtz v0, :cond_3

    :goto_3
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v9, 0x3f

    const/16 v8, 0xd

    const/4 v7, 0x5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v2, p2

    :goto_0
    if-lt v2, v3, :cond_0

    sub-int v6, v2, p2

    return v6

    :cond_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v8, :cond_4

    :cond_1
    if-ge v4, v8, :cond_5

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v7, :cond_6

    :cond_2
    if-ge v5, v7, :cond_7

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    aget-byte v6, p1, v2

    if-eq v6, v9, :cond_8

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    add-int v1, v2, v4

    if-ge v1, v3, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_5
    sub-int v6, v2, p2

    return v6

    :cond_6
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    add-int v1, v2, v5

    if-ge v1, v3, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_2

    :cond_7
    sub-int v6, v2, p2

    return v6

    :cond_8
    if-eq v0, v9, :cond_3

    new-instance v6, Lcom/google/zxing/WriterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Non-encodable character detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (Unicode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 5

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v2, p1

    if-lt p1, v3, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private static determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I
    .locals 6

    const/16 v5, 0xd

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, p1

    :cond_0
    :goto_0
    if-lt v1, v2, :cond_2

    :cond_1
    sub-int v4, v1, p1

    return v4

    :cond_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v3, 0x0

    :cond_3
    :goto_1
    if-lt v3, v5, :cond_5

    :cond_4
    if-ge v3, v5, :cond_6

    if-gtz v3, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_4

    if-ge v1, v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_3

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_6
    sub-int v4, v1, p1

    sub-int/2addr v4, v3

    return v4
.end method

.method private static encodeBinary([BIIILjava/lang/StringBuilder;)V
    .locals 10

    const/4 v5, 0x1

    if-eq p2, v5, :cond_2

    :cond_0
    rem-int/lit8 v5, p2, 0x6

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_4

    const/16 v5, 0x385

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v3, p1

    const/4 v5, 0x6

    if-ge p2, v5, :cond_5

    :cond_1
    move v2, v3

    :goto_2
    add-int v5, p1, p2

    if-lt v2, v5, :cond_9

    return-void

    :cond_2
    if-nez p3, :cond_0

    const/16 v5, 0x391

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/16 v5, 0x39c

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/4 v5, 0x5

    new-array v1, v5, [C

    :goto_3
    add-int v5, p1, p2

    sub-int/2addr v5, v3

    const/4 v8, 0x6

    if-lt v5, v8, :cond_1

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v5, 0x6

    if-lt v2, v5, :cond_6

    const/4 v2, 0x0

    :goto_5
    const/4 v5, 0x5

    if-lt v2, v5, :cond_7

    array-length v5, v1

    add-int/lit8 v2, v5, -0x1

    :goto_6
    if-gez v2, :cond_8

    add-int/lit8 v3, v3, 0x6

    goto :goto_3

    :cond_6
    const/16 v5, 0x8

    shl-long/2addr v6, v5

    add-int v5, v3, v2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v8, v5

    add-long/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    const-wide/16 v8, 0x384

    rem-long v8, v6, v8

    long-to-int v5, v8

    int-to-char v5, v5

    int-to-char v5, v5

    aput-char v5, v1, v2

    const-wide/16 v8, 0x384

    div-long/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    aget-char v5, v1, v2

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_9
    aget-byte v5, p0, v2

    and-int/lit16 v0, v5, 0xff

    int-to-char v5, v0

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v12, 0x386

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/google/zxing/pdf417/encoder/Compaction;->TEXT:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-eq p1, v9, :cond_0

    sget-object v9, Lcom/google/zxing/pdf417/encoder/Compaction;->BYTE:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-eq p1, v9, :cond_1

    sget-object v9, Lcom/google/zxing/pdf417/encoder/Compaction;->NUMERIC:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-eq p1, v9, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-lt v5, v3, :cond_3

    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_0
    invoke-static {p0, v10, v3, v6, v10}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->getBytesForMessage(Ljava/lang/String;)[B

    move-result-object v1

    array-length v9, v1

    invoke-static {v1, v10, v9, v11, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v10, v3, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_1

    :cond_3
    invoke-static {p0, v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v4

    const/16 v9, 0xd

    if-ge v4, v9, :cond_5

    invoke-static {p0, v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I

    move-result v7

    const/4 v9, 0x5

    if-lt v7, v9, :cond_6

    :cond_4
    if-nez v2, :cond_8

    :goto_2
    invoke-static {p0, v5, v7, v6, v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v8

    add-int/2addr v5, v7

    goto :goto_0

    :cond_5
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const/4 v8, 0x0

    invoke-static {p0, v5, v4, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    add-int/2addr v5, v4

    goto :goto_0

    :cond_6
    if-eq v4, v3, :cond_4

    if-eqz v1, :cond_9

    :goto_3
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I

    move-result v0

    if-eqz v0, :cond_a

    :goto_4
    if-eq v0, v11, :cond_b

    :cond_7
    invoke-static {v1, v5, v0, v2, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    const/4 v2, 0x1

    const/4 v8, 0x0

    :goto_5
    add-int/2addr v5, v0

    goto :goto_0

    :cond_8
    const/16 v9, 0x384

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v8, 0x0

    goto :goto_2

    :cond_9
    invoke-static {p0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->getBytesForMessage(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_3

    :cond_a
    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    if-nez v2, :cond_7

    invoke-static {v1, v5, v11, v10, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_5
.end method

.method private static encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    div-int/lit8 v8, p2, 0x3

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-wide/16 v8, 0x384

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    :goto_0
    add-int/lit8 v8, p2, -0x1

    if-lt v2, v8, :cond_0

    return-void

    :cond_0
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v8, 0x2c

    sub-int v9, p2, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x31

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int v9, p1, v2

    add-int v10, p1, v2

    add-int/2addr v10, v3

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_1
    if-gez v1, :cond_2

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private static encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .locals 11

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v7, p4

    const/4 v3, 0x0

    :cond_0
    :goto_0
    add-int v9, p1, v3

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    packed-switch v7, :pswitch_data_0

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-nez v9, :cond_e

    const/4 v7, 0x0

    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-nez v9, :cond_4

    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    if-lt v3, p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v4, :cond_f

    rem-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_12

    :goto_3
    return v7

    :cond_1
    const/16 v9, 0x20

    if-eq v0, v9, :cond_2

    add-int/lit8 v9, v0, -0x41

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/4 v7, 0x2

    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-nez v9, :cond_8

    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v9, 0x20

    if-eq v0, v9, :cond_6

    add-int/lit8 v9, v0, -0x61

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v0, -0x41

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    const/4 v7, 0x2

    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-nez v9, :cond_c

    add-int v9, p1, v3

    add-int/lit8 v9, v9, 0x1

    if-lt v9, p2, :cond_d

    :cond_9
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_b
    const/4 v7, 0x0

    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_c
    const/4 v7, 0x1

    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_d
    add-int v9, p1, v3

    add-int/lit8 v9, v9, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v7, 0x3

    const/16 v9, 0x19

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_e
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_f
    rem-int/lit8 v9, v2, 0x2

    if-nez v9, :cond_10

    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_11

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_10
    const/4 v6, 0x1

    goto :goto_4

    :cond_11
    mul-int/lit8 v9, v1, 0x1e

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    add-int/2addr v9, v10

    int-to-char v1, v9

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_12
    mul-int/lit8 v9, v1, 0x1e

    add-int/lit8 v9, v9, 0x1d

    int-to-char v9, v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getBytesForMessage(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static isAlphaLower(C)Z
    .locals 1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x61

    if-ge p0, v0, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x7a

    if-le p0, v0, :cond_0

    goto :goto_1
.end method

.method private static isAlphaUpper(C)Z
    .locals 1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x41

    if-ge p0, v0, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    if-le p0, v0, :cond_0

    goto :goto_1
.end method

.method private static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-ge p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isMixed(C)Z
    .locals 2

    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isPunctuation(C)Z
    .locals 2

    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isText(C)Z
    .locals 1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ge p0, v0, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x7e

    if-le p0, v0, :cond_0

    goto :goto_1
.end method
