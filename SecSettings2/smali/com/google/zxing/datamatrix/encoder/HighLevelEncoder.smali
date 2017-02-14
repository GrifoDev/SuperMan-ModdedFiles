.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
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
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

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

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x81

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x6

    new-array v3, v6, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    aput-object v6, v3, v7

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    aput-object v7, v3, v6

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    aput-object v6, v3, v8

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    aput-object v7, v3, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    aput-object v7, v3, v6

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    aput-object v6, v3, v9

    new-instance v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v2, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    invoke-virtual {v2, p2, p3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V

    const-string/jumbo v6, "[)>\u001e05\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_0
    const-string/jumbo v6, "[)>\u001e06\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    if-lt v5, v0, :cond_7

    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lt v6, v0, :cond_8

    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lt v6, v0, :cond_9

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_4
    const-string/jumbo v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xec

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    invoke-virtual {v2, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    iget v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string/jumbo v7, "[)>\u001e05\u001d"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0xed

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    invoke-virtual {v2, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    iget v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string/jumbo v7, "[)>\u001e06\u001d"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_0

    :cond_6
    aget-object v6, v3, v4

    invoke-interface {v6, v2}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_3

    if-eq v4, v9, :cond_3

    const/16 v6, 0xfe

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v10, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->randomize253State(CI)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static findMinimums([F[II[B)I
    .locals 5

    const/4 v4, 0x0

    invoke-static {p3, v4}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    return p2

    :cond_0
    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    aget v0, p1, v1

    if-gt p2, v0, :cond_1

    :goto_1
    if-eq p2, v0, :cond_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    invoke-static {p3, v4}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1

    :cond_2
    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    goto :goto_2
.end method

.method private static getMinimumCount([B)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static illegalCharacter(C)V
    .locals 5

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0000"

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
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

.method static isExtendedASCII(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNativeC40(C)Z
    .locals 1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/16 v0, 0x30

    if-ge p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x41

    if-ge p0, v0, :cond_4

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_4
    const/16 v0, 0x5a

    if-le p0, v0, :cond_0

    goto :goto_2
.end method

.method private static isNativeEDIFACT(C)Z
    .locals 1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x5e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNativeText(C)Z
    .locals 1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/16 v0, 0x30

    if-ge p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x61

    if-ge p0, v0, :cond_4

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_4
    const/16 v0, 0x7a

    if-le p0, v0, :cond_0

    goto :goto_2
.end method

.method private static isNativeX12(C)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/16 v1, 0x20

    if-eq p0, v1, :cond_0

    const/16 v1, 0x30

    if-ge p0, v1, :cond_4

    :cond_3
    const/16 v1, 0x41

    if-lt p0, v1, :cond_1

    const/16 v1, 0x5a

    if-le p0, v1, :cond_0

    goto :goto_1

    :cond_4
    const/16 v1, 0x39

    if-gt p0, v1, :cond_3

    goto :goto_0
.end method

.method private static isSpecialB256(C)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static isX12TermSep(C)Z
    .locals 1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .locals 14

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge p1, v9, :cond_3

    if-eqz p2, :cond_4

    const/4 v9, 0x6

    new-array v1, v9, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v1, v9

    const/4 v9, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    aput v10, v1, v9

    const/4 v9, 0x2

    const/high16 v10, 0x40000000    # 2.0f

    aput v10, v1, v9

    const/4 v9, 0x3

    const/high16 v10, 0x40000000    # 2.0f

    aput v10, v1, v9

    const/4 v9, 0x4

    const/high16 v10, 0x40000000    # 2.0f

    aput v10, v1, v9

    const/4 v9, 0x5

    const/high16 v10, 0x40100000    # 2.25f

    aput v10, v1, v9

    const/4 v9, 0x0

    aput v9, v1, p2

    :goto_0
    const/4 v2, 0x0

    :cond_0
    add-int v9, p1, v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-eq v9, v10, :cond_5

    add-int v9, p1, v2

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-nez v9, :cond_10

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v10, v10

    aput v10, v1, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    aput v10, v1, v9

    :goto_1
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-nez v9, :cond_12

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v1, v10

    const v11, 0x3faaaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    :goto_2
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v9

    if-nez v9, :cond_13

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-nez v9, :cond_14

    const/4 v9, 0x2

    const/4 v10, 0x2

    aget v10, v1, v10

    const v11, 0x3faaaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    :goto_3
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-nez v9, :cond_15

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-nez v9, :cond_16

    const/4 v9, 0x3

    const/4 v10, 0x3

    aget v10, v1, v10

    const v11, 0x40555555

    add-float/2addr v10, v11

    aput v10, v1, v9

    :goto_4
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v9

    if-nez v9, :cond_17

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-nez v9, :cond_18

    const/4 v9, 0x4

    const/4 v10, 0x4

    aget v10, v1, v10

    const/high16 v11, 0x40500000    # 3.25f

    add-float/2addr v10, v11

    aput v10, v1, v9

    :goto_5
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isSpecialB256(C)Z

    move-result v9

    if-nez v9, :cond_19

    const/4 v9, 0x5

    const/4 v10, 0x5

    aget v10, v1, v10

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    aput v10, v1, v9

    :goto_6
    const/4 v9, 0x4

    if-lt v2, v9, :cond_0

    const/4 v9, 0x6

    new-array v3, v9, [I

    const/4 v9, 0x6

    new-array v6, v9, [B

    const v9, 0x7fffffff

    invoke-static {v1, v3, v9, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v5

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x5

    aget v10, v3, v10

    if-lt v9, v10, :cond_1a

    :cond_1
    const/4 v9, 0x5

    aget v9, v3, v9

    const/4 v10, 0x0

    aget v10, v3, v10

    if-ge v9, v10, :cond_1b

    :cond_2
    const/4 v9, 0x5

    return v9

    :cond_3
    return p2

    :cond_4
    const/4 v9, 0x6

    new-array v1, v9, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v1, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v1, v9

    const/4 v9, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v1, v9

    const/4 v9, 0x3

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v1, v9

    const/4 v9, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v1, v9

    const/4 v9, 0x5

    const/high16 v10, 0x3fa00000    # 1.25f

    aput v10, v1, v9

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x6

    new-array v6, v9, [B

    const/4 v9, 0x6

    new-array v3, v9, [I

    const v9, 0x7fffffff

    invoke-static {v1, v3, v9, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v4

    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v5

    const/4 v9, 0x0

    aget v9, v3, v9

    if-eq v9, v4, :cond_a

    const/4 v9, 0x1

    if-eq v5, v9, :cond_b

    :cond_6
    const/4 v9, 0x1

    if-eq v5, v9, :cond_c

    :cond_7
    const/4 v9, 0x1

    if-eq v5, v9, :cond_d

    :cond_8
    const/4 v9, 0x1

    if-eq v5, v9, :cond_e

    :cond_9
    const/4 v9, 0x1

    return v9

    :cond_a
    const/4 v9, 0x0

    return v9

    :cond_b
    const/4 v9, 0x5

    aget-byte v9, v6, v9

    if-lez v9, :cond_6

    const/4 v9, 0x5

    return v9

    :cond_c
    const/4 v9, 0x4

    aget-byte v9, v6, v9

    if-lez v9, :cond_7

    const/4 v9, 0x4

    return v9

    :cond_d
    const/4 v9, 0x2

    aget-byte v9, v6, v9

    if-lez v9, :cond_8

    const/4 v9, 0x2

    return v9

    :cond_e
    const/4 v9, 0x3

    aget-byte v9, v6, v9

    if-lez v9, :cond_9

    const/4 v9, 0x3

    return v9

    :cond_f
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    float-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v1, v9

    goto/16 :goto_1

    :cond_10
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v10, v10

    aput v10, v1, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    const/high16 v11, 0x40000000    # 2.0f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_1

    :cond_11
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v1, v10

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_2

    :cond_12
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v1, v10

    const v11, 0x402aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_2

    :cond_13
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget v10, v1, v10

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_3

    :cond_14
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget v10, v1, v10

    const v11, 0x402aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_3

    :cond_15
    const/4 v9, 0x3

    const/4 v10, 0x3

    aget v10, v1, v10

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_4

    :cond_16
    const/4 v9, 0x3

    const/4 v10, 0x3

    aget v10, v1, v10

    const v11, 0x408aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_4

    :cond_17
    const/4 v9, 0x4

    const/4 v10, 0x4

    aget v10, v1, v10

    const/high16 v11, 0x3f400000    # 0.75f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_5

    :cond_18
    const/4 v9, 0x4

    const/4 v10, 0x4

    aget v10, v1, v10

    const/high16 v11, 0x40880000    # 4.25f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_5

    :cond_19
    const/4 v9, 0x5

    const/4 v10, 0x5

    aget v10, v1, v10

    const/high16 v11, 0x40800000    # 4.0f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_6

    :cond_1a
    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x2

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x4

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    const/4 v9, 0x0

    return v9

    :cond_1b
    const/4 v9, 0x1

    aget-byte v9, v6, v9

    const/4 v10, 0x2

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    const/4 v10, 0x3

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    const/4 v10, 0x4

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    if-eq v5, v9, :cond_20

    :cond_1c
    const/4 v9, 0x1

    if-eq v5, v9, :cond_21

    :cond_1d
    const/4 v9, 0x1

    if-eq v5, v9, :cond_22

    :cond_1e
    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aget v10, v3, v10

    if-ge v9, v10, :cond_0

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x5

    aget v10, v3, v10

    if-ge v9, v10, :cond_0

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    aget v10, v3, v10

    if-ge v9, v10, :cond_0

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x2

    aget v10, v3, v10

    if-ge v9, v10, :cond_0

    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-lt v9, v10, :cond_23

    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ne v9, v10, :cond_0

    add-int v9, p1, v2

    add-int/lit8 v7, v9, 0x1

    :goto_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt v7, v9, :cond_24

    :cond_1f
    const/4 v9, 0x1

    return v9

    :cond_20
    const/4 v9, 0x4

    aget-byte v9, v6, v9

    if-lez v9, :cond_1c

    const/4 v9, 0x4

    return v9

    :cond_21
    const/4 v9, 0x2

    aget-byte v9, v6, v9

    if-lez v9, :cond_1d

    const/4 v9, 0x2

    return v9

    :cond_22
    const/4 v9, 0x3

    aget-byte v9, v6, v9

    if-lez v9, :cond_1e

    const/4 v9, 0x3

    return v9

    :cond_23
    const/4 v9, 0x1

    return v9

    :cond_24
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v9

    if-nez v9, :cond_25

    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-eqz v9, :cond_1f

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_25
    const/4 v9, 0x3

    return v9
.end method

.method private static randomize253State(CI)C
    .locals 3

    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xfd

    add-int/lit8 v0, v2, 0x1

    add-int v1, p0, v0

    const/16 v2, 0xfe

    if-le v1, v2, :cond_0

    add-int/lit16 v2, v1, -0xfe

    int-to-char v2, v2

    :goto_0
    return v2

    :cond_0
    int-to-char v2, v1

    goto :goto_0
.end method
