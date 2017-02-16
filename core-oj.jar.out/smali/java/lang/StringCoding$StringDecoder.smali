.class Ljava/lang/StringCoding$StringDecoder;
.super Ljava/lang/Object;
.source "StringCoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringCoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringDecoder"
.end annotation


# instance fields
.field private final cd:Ljava/nio/charset/CharsetDecoder;

.field private final cs:Ljava/nio/charset/Charset;

.field private final isTrusted:Z

.field private final requestedCharsetName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "rcn"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Ljava/lang/StringCoding$StringDecoder;->requestedCharsetName:Ljava/lang/String;

    .line 142
    iput-object p1, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    .line 143
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 144
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 143
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 145
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 143
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/lang/StringCoding$StringDecoder;->isTrusted:Z

    .line 140
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/StringCoding$StringDecoder;)V
    .locals 0
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "rcn"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/StringCoding$StringDecoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method charsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    iget-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method decode([BII)[C
    .locals 10
    .param p1, "ba"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 160
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v7}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v7

    invoke-static {p3, v7}, Ljava/lang/StringCoding;->-wrap2(IF)I

    move-result v5

    .line 161
    .local v5, "en":I
    new-array v1, v5, [C

    .line 162
    .local v1, "ca":[C
    if-nez p3, :cond_0

    .line 163
    return-object v1

    .line 164
    :cond_0
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    instance-of v7, v7, Lsun/nio/cs/ArrayDecoder;

    if-eqz v7, :cond_1

    .line 165
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    check-cast v7, Lsun/nio/cs/ArrayDecoder;

    invoke-interface {v7, p1, p2, p3, v1}, Lsun/nio/cs/ArrayDecoder;->decode([BII[C)I

    move-result v3

    .line 166
    .local v3, "clen":I
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    iget-boolean v8, p0, Ljava/lang/StringCoding$StringDecoder;->isTrusted:Z

    invoke-static {v1, v3, v7, v8}, Ljava/lang/StringCoding;->-wrap1([CILjava/nio/charset/Charset;Z)[C

    move-result-object v7

    return-object v7

    .line 168
    .end local v3    # "clen":I
    :cond_1
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v7}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 169
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 170
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 172
    .local v2, "cb":Ljava/nio/CharBuffer;
    :try_start_0
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    const/4 v8, 0x1

    invoke-virtual {v7, v0, v2, v8}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 173
    .local v4, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_2

    .line 174
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 175
    :cond_2
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v7, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 176
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_3

    .line 177
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_3
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v7

    iget-object v8, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    iget-boolean v9, p0, Ljava/lang/StringCoding$StringDecoder;->isTrusted:Z

    invoke-static {v1, v7, v8, v9}, Ljava/lang/StringCoding;->-wrap1([CILjava/nio/charset/Charset;Z)[C

    move-result-object v7

    return-object v7

    .line 178
    .end local v4    # "cr":Ljava/nio/charset/CoderResult;
    :catch_0
    move-exception v6

    .line 181
    .local v6, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v6}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method final requestedCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->requestedCharsetName:Ljava/lang/String;

    return-object v0
.end method
