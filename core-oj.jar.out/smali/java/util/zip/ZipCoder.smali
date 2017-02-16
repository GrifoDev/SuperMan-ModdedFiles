.class final Ljava/util/zip/ZipCoder;
.super Ljava/lang/Object;
.source "ZipCoder.java"


# instance fields
.field private cs:Ljava/nio/charset/Charset;

.field private dec:Ljava/nio/charset/CharsetDecoder;

.field private enc:Ljava/nio/charset/CharsetEncoder;

.field private isUTF8:Z

.field private utf8:Ljava/util/zip/ZipCoder;


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    .line 135
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    .line 133
    return-void
.end method

.method private decoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->dec:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 145
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 144
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 146
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 144
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipCoder;->dec:Ljava/nio/charset/CharsetDecoder;

    .line 148
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->dec:Ljava/nio/charset/CharsetDecoder;

    return-object v0
.end method

.method private encoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->enc:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 154
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 153
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 155
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 153
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipCoder;->enc:Ljava/nio/charset/CharsetEncoder;

    .line 157
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->enc:Ljava/nio/charset/CharsetEncoder;

    return-object v0
.end method

.method static get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;
    .locals 1
    .param p0, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 139
    new-instance v0, Ljava/util/zip/ZipCoder;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipCoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method


# virtual methods
.method getBytes(Ljava/lang/String;)[B
    .locals 11
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 77
    invoke-direct {p0}, Ljava/util/zip/ZipCoder;->encoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    move-result-object v5

    .line 78
    .local v5, "ce":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 79
    .local v3, "ca":[C
    array-length v8, v3

    int-to-float v8, v8

    invoke-virtual {v5}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v7, v8

    .line 80
    .local v7, "len":I
    new-array v0, v7, [B

    .line 81
    .local v0, "ba":[B
    if-nez v7, :cond_0

    .line 82
    return-object v0

    .line 85
    :cond_0
    iget-boolean v8, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    if-eqz v8, :cond_2

    instance-of v8, v5, Lsun/nio/cs/ArrayEncoder;

    if-eqz v8, :cond_2

    .line 86
    check-cast v5, Lsun/nio/cs/ArrayEncoder;

    .end local v5    # "ce":Ljava/nio/charset/CharsetEncoder;
    array-length v8, v3

    invoke-interface {v5, v3, v10, v8, v0}, Lsun/nio/cs/ArrayEncoder;->encode([CII[B)I

    move-result v2

    .line 87
    .local v2, "blen":I
    const/4 v8, -0x1

    if-ne v2, v8, :cond_1

    .line 88
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "MALFORMED"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 89
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    return-object v8

    .line 91
    .end local v2    # "blen":I
    .restart local v5    # "ce":Ljava/nio/charset/CharsetEncoder;
    :cond_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 92
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v3}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 93
    .local v4, "cb":Ljava/nio/CharBuffer;
    const/4 v8, 0x1

    invoke-virtual {v5, v4, v1, v8}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v6

    .line 94
    .local v6, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v8

    if-nez v8, :cond_3

    .line 95
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 96
    :cond_3
    invoke-virtual {v5, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v6

    .line 97
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v8

    if-nez v8, :cond_4

    .line 98
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 99
    :cond_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_5

    .line 100
    return-object v0

    .line 102
    :cond_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    return-object v8
.end method

.method getBytesUTF8(Ljava/lang/String;)[B
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-boolean v0, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Ljava/util/zip/ZipCoder;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipCoder;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    .line 111
    :cond_1
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method isUTF8()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    return v0
.end method

.method toString([B)Ljava/lang/String;
    .locals 1
    .param p1, "ba"    # [B

    .prologue
    .line 73
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString([BI)Ljava/lang/String;
    .locals 10
    .param p1, "ba"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v9, 0x0

    .line 47
    invoke-direct {p0}, Ljava/util/zip/ZipCoder;->decoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    .line 48
    .local v3, "cd":Ljava/nio/charset/CharsetDecoder;
    int-to-float v7, p2

    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v6, v7

    .line 49
    .local v6, "len":I
    new-array v1, v6, [C

    .line 50
    .local v1, "ca":[C
    if-nez v6, :cond_0

    .line 51
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([C)V

    return-object v7

    .line 55
    :cond_0
    iget-boolean v7, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    if-eqz v7, :cond_2

    instance-of v7, v3, Lsun/nio/cs/ArrayDecoder;

    if-eqz v7, :cond_2

    .line 56
    check-cast v3, Lsun/nio/cs/ArrayDecoder;

    .end local v3    # "cd":Ljava/nio/charset/CharsetDecoder;
    invoke-interface {v3, p1, v9, p2, v1}, Lsun/nio/cs/ArrayDecoder;->decode([BII[C)I

    move-result v4

    .line 57
    .local v4, "clen":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    .line 58
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "MALFORMED"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 59
    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1, v9, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v7

    .line 61
    .end local v4    # "clen":I
    .restart local v3    # "cd":Ljava/nio/charset/CharsetDecoder;
    :cond_2
    invoke-static {p1, v9, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 63
    .local v2, "cb":Ljava/nio/CharBuffer;
    const/4 v7, 0x1

    invoke-virtual {v3, v0, v2, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 64
    .local v5, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_3

    .line 65
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 66
    :cond_3
    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 67
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_4

    .line 68
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 69
    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v8

    invoke-direct {v7, v1, v9, v8}, Ljava/lang/String;-><init>([CII)V

    return-object v7
.end method

.method toStringUTF8([BI)Ljava/lang/String;
    .locals 2
    .param p1, "ba"    # [B
    .param p2, "len"    # I

    .prologue
    .line 116
    iget-boolean v0, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p1, p2}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Ljava/util/zip/ZipCoder;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipCoder;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    .line 120
    :cond_1
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0, p1, p2}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
