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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/lang/StringCoding$StringDecoder;->requestedCharsetName:Ljava/lang/String;

    iput-object p1, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/lang/StringCoding$StringDecoder;->isTrusted:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/StringCoding$StringDecoder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/StringCoding$StringDecoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method charsetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method decode([BII)[C
    .locals 10

    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v7}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v7

    invoke-static {p3, v7}, Ljava/lang/StringCoding;->-wrap2(IF)I

    move-result v5

    new-array v1, v5, [C

    if-nez p3, :cond_0

    return-object v1

    :cond_0
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    instance-of v7, v7, Lsun/nio/cs/ArrayDecoder;

    if-eqz v7, :cond_1

    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    check-cast v7, Lsun/nio/cs/ArrayDecoder;

    invoke-interface {v7, p1, p2, p3, v1}, Lsun/nio/cs/ArrayDecoder;->decode([BII[C)I

    move-result v3

    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    iget-boolean v8, p0, Ljava/lang/StringCoding$StringDecoder;->isTrusted:Z

    invoke-static {v1, v3, v7, v8}, Ljava/lang/StringCoding;->-wrap1([CILjava/nio/charset/Charset;Z)[C

    move-result-object v7

    return-object v7

    :cond_1
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v7}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    :try_start_0
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    const/4 v8, 0x1

    invoke-virtual {v7, v0, v2, v8}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_2
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v7, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v7

    iget-object v8, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    iget-boolean v9, p0, Ljava/lang/StringCoding$StringDecoder;->isTrusted:Z

    invoke-static {v1, v7, v8, v9}, Ljava/lang/StringCoding;->-wrap1([CILjava/nio/charset/Charset;Z)[C

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v6}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method final requestedCharsetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->requestedCharsetName:Ljava/lang/String;

    return-object v0
.end method
