.class public Lcom/android/internal/util/FastPrintWriter;
.super Ljava/io/PrintWriter;
.source "FastPrintWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FastPrintWriter$DummyWriter;
    }
.end annotation


# instance fields
.field private final mAutoFlush:Z

.field private final mBufferLen:I

.field private final mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mIoError:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mPrinter:Landroid/util/Printer;

.field private final mSeparator:Ljava/lang/String;

.field private final mText:[C

.field private final mWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Landroid/util/Printer;)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;I)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Printer;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$DummyWriter;)V

    invoke-direct {p0, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "pr is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p2, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    new-array v0, p2, [C

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    iput-boolean v2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$DummyWriter;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "out is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    new-array v0, p3, [C

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZI)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$DummyWriter;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "wr is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    new-array v0, p3, [C

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    return-void
.end method

.method private appendLocked(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    aput-char p1, v1, v0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    return-void
.end method

.method private appendLocked(Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    if-le p3, v0, :cond_2

    add-int v1, p2, p3

    :goto_0
    if-ge p2, v1, :cond_1

    add-int v2, p2, v0

    if-ge v2, v1, :cond_0

    move v4, v0

    :goto_1
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    move p2, v2

    goto :goto_0

    :cond_0
    sub-int v4, v1, p2

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    add-int v4, v3, p3

    if-le v4, v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    :cond_3
    add-int v4, p2, p3

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    invoke-virtual {p1, p2, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    add-int v4, v3, p3

    iput v4, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    return-void
.end method

.method private appendLocked([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    if-le p3, v0, :cond_2

    add-int v1, p2, p3

    :goto_0
    if-ge p2, v1, :cond_1

    add-int v2, p2, v0

    if-ge v2, v1, :cond_0

    move v4, v0

    :goto_1
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V

    move p2, v2

    goto :goto_0

    :cond_0
    sub-int v4, v1, p2

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    add-int v4, v3, p3

    if-le v4, v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    :cond_3
    iget-object v4, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    invoke-static {p1, p2, v4, v3, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    add-int v4, v3, p3

    iput v4, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    return-void
.end method

.method private flushBytesLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private flushLocked()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v9, 0x0

    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v6, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    invoke-static {v5, v9, v6}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0, v6, v7}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0, v6, v7}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    :cond_2
    :goto_1
    iput v9, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    :cond_3
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v7, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    invoke-virtual {v5, v6, v9, v7}, Ljava/io/Writer;->write([CII)V

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-ge v4, v5, :cond_6

    move v1, v4

    :goto_2
    if-ge v2, v1, :cond_7

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v6, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    aget-char v5, v5, v6

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    goto :goto_2

    :cond_7
    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-lt v2, v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    const-string/jumbo v6, ""

    invoke-interface {v5, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v8, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    sub-int/2addr v8, v2

    invoke-direct {v6, v7, v9, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v5, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final initDefaultEncoder()V
    .locals 2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method private final initEncoder(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/util/FastPrintWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected clearError()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public close()V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public flush()V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public print(C)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public print(I)V
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0
.end method

.method public print(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_0
.end method

.method public print(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    check-cast v1, Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public print([C)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    array-length v1, p1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public println()V
    .locals 5

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public println(C)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print(C)V

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    return-void
.end method

.method public println(I)V
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0
.end method

.method public println(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_0
.end method

.method public println([C)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print([C)V

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    return-void
.end method

.method protected setError()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public write(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    int-to-char v1, p1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write([CII)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
