.class Ljava/lang/StringCoding;
.super Ljava/lang/Object;
.source "StringCoding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StringCoding$StringDecoder;,
        Ljava/lang/StringCoding$StringEncoder;
    }
.end annotation


# static fields
.field private static final decoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/StringCoding$StringDecoder;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final encoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/StringCoding$StringEncoder;",
            ">;>;"
        }
    .end annotation
.end field

.field private static warnUnsupportedCharset:Z


# direct methods
.method static synthetic -wrap0([BILjava/nio/charset/Charset;Z)[B
    .locals 1

    invoke-static {p0, p1, p2, p3}, Ljava/lang/StringCoding;->safeTrim([BILjava/nio/charset/Charset;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([CILjava/nio/charset/Charset;Z)[C
    .locals 1

    invoke-static {p0, p1, p2, p3}, Ljava/lang/StringCoding;->safeTrim([CILjava/nio/charset/Charset;Z)[C

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(IF)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/StringCoding;->scale(IF)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava/lang/StringCoding;->decoder:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava/lang/StringCoding;->encoder:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    sput-boolean v0, Ljava/lang/StringCoding;->warnUnsupportedCharset:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode(Ljava/lang/String;[BII)[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v5, Ljava/lang/StringCoding;->decoder:Ljava/lang/ThreadLocal;

    invoke-static {v5}, Ljava/lang/StringCoding;->deref(Ljava/lang/ThreadLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringCoding$StringDecoder;

    if-nez p0, :cond_1

    const-string/jumbo v1, "ISO-8859-1"

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringCoding$StringDecoder;->requestedCharsetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringCoding$StringDecoder;->charsetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {v2, p1, p2, p3}, Ljava/lang/StringCoding$StringDecoder;->decode([BII)[C

    move-result-object v5

    return-object v5

    :cond_1
    move-object v1, p0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/StringCoding;->lookupCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/StringCoding$StringDecoder;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v1, v5}, Ljava/lang/StringCoding$StringDecoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/StringCoding$StringDecoder;)V
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    new-instance v5, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v5, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    sget-object v5, Ljava/lang/StringCoding;->decoder:Ljava/lang/ThreadLocal;

    invoke-static {v5, v2}, Ljava/lang/StringCoding;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method static decode(Ljava/nio/charset/Charset;[BII)[C
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v11

    invoke-static {p3, v11}, Ljava/lang/StringCoding;->scale(IF)I

    move-result v6

    new-array v1, v6, [C

    if-nez p3, :cond_0

    return-object v1

    :cond_0
    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    if-nez v11, :cond_2

    move v7, v9

    :goto_0
    if-nez v7, :cond_1

    add-int v9, p2, p3

    invoke-static {p1, p2, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p2, 0x0

    :cond_1
    sget-object v9, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v9}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v9

    sget-object v10, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    instance-of v9, v3, Lsun/nio/cs/ArrayDecoder;

    if-eqz v9, :cond_3

    check-cast v3, Lsun/nio/cs/ArrayDecoder;

    invoke-interface {v3, p1, p2, p3, v1}, Lsun/nio/cs/ArrayDecoder;->decode([BII[C)I

    move-result v4

    invoke-static {v1, v4, p0, v7}, Ljava/lang/StringCoding;->safeTrim([CILjava/nio/charset/Charset;Z)[C

    move-result-object v9

    return-object v9

    :cond_2
    move v7, v10

    goto :goto_0

    :cond_3
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v3, v0, v2, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_4
    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v9

    invoke-static {v1, v9, p0, v7}, Ljava/lang/StringCoding;->safeTrim([CILjava/nio/charset/Charset;Z)[C

    move-result-object v9

    return-object v9

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/Error;

    invoke-direct {v9, v8}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method static decode([BII)[C
    .locals 4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p0, p1, p2}, Ljava/lang/StringCoding;->decode(Ljava/lang/String;[BII)[C
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    invoke-static {v0}, Ljava/lang/StringCoding;->warnUnsupportedCharset(Ljava/lang/String;)V

    :try_start_1
    const-string/jumbo v2, "ISO-8859-1"

    invoke-static {v2, p0, p1, p2}, Ljava/lang/StringCoding;->decode(Ljava/lang/String;[BII)[C
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISO-8859-1 charset not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/misc/MessageUtils;->err(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    const/4 v2, 0x0

    return-object v2
.end method

.method private static deref(Ljava/lang/ThreadLocal;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static encode(Ljava/lang/String;[CII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v5, Ljava/lang/StringCoding;->encoder:Ljava/lang/ThreadLocal;

    invoke-static {v5}, Ljava/lang/StringCoding;->deref(Ljava/lang/ThreadLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringCoding$StringEncoder;

    if-nez p0, :cond_1

    const-string/jumbo v1, "ISO-8859-1"

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringCoding$StringEncoder;->requestedCharsetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringCoding$StringEncoder;->charsetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {v2, p1, p2, p3}, Ljava/lang/StringCoding$StringEncoder;->encode([CII)[B

    move-result-object v5

    return-object v5

    :cond_1
    move-object v1, p0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/StringCoding;->lookupCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/StringCoding$StringEncoder;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v1, v5}, Ljava/lang/StringCoding$StringEncoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/StringCoding$StringEncoder;)V
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    new-instance v5, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v5, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    sget-object v5, Ljava/lang/StringCoding;->encoder:Ljava/lang/ThreadLocal;

    invoke-static {v5, v2}, Ljava/lang/StringCoding;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B
    .locals 3

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method static encode(Ljava/nio/charset/Charset;[CII)[B
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v11

    invoke-static {p3, v11}, Ljava/lang/StringCoding;->scale(IF)I

    move-result v6

    new-array v0, v6, [B

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    if-nez v11, :cond_2

    move v7, v9

    :goto_0
    if-nez v7, :cond_1

    add-int v9, p2, p3

    invoke-static {p1, p2, v9}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    const/4 p2, 0x0

    :cond_1
    sget-object v9, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v4, v9}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v9

    sget-object v10, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    instance-of v9, v4, Lsun/nio/cs/ArrayEncoder;

    if-eqz v9, :cond_3

    check-cast v4, Lsun/nio/cs/ArrayEncoder;

    invoke-interface {v4, p1, p2, p3, v0}, Lsun/nio/cs/ArrayEncoder;->encode([CII[B)I

    move-result v2

    invoke-static {v0, v2, p0, v7}, Ljava/lang/StringCoding;->safeTrim([BILjava/nio/charset/Charset;Z)[B

    move-result-object v9

    return-object v9

    :cond_2
    move v7, v10

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->asReadOnlyBuffer()Ljava/nio/CharBuffer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v1, v10}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_4
    invoke-virtual {v4, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-static {v0, v9, p0, v7}, Ljava/lang/StringCoding;->safeTrim([BILjava/nio/charset/Charset;Z)[B

    move-result-object v9

    return-object v9

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/Error;

    invoke-direct {v9, v8}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method static encode([CII)[B
    .locals 4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p0, p1, p2}, Ljava/lang/StringCoding;->encode(Ljava/lang/String;[CII)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    invoke-static {v0}, Ljava/lang/StringCoding;->warnUnsupportedCharset(Ljava/lang/String;)V

    :try_start_1
    const-string/jumbo v2, "ISO-8859-1"

    invoke-static {v2, p0, p1, p2}, Ljava/lang/StringCoding;->encode(Ljava/lang/String;[CII)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISO-8859-1 charset not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/misc/MessageUtils;->err(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    const/4 v2, 0x0

    return-object v2
.end method

.method private static lookupCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2

    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static safeTrim([BILjava/nio/charset/Charset;Z)[B
    .locals 1

    array-length v0, p0

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private static safeTrim([CILjava/nio/charset/Charset;Z)[C
    .locals 1

    array-length v0, p0

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    return-object v0
.end method

.method private static scale(IF)I
    .locals 4

    int-to-double v0, p0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private static set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;>;TT;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private static warnUnsupportedCharset(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Ljava/lang/StringCoding;->warnUnsupportedCharset:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WARNING: Default charset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " not supported, using ISO-8859-1 instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/MessageUtils;->err(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Ljava/lang/StringCoding;->warnUnsupportedCharset:Z

    :cond_0
    return-void
.end method
