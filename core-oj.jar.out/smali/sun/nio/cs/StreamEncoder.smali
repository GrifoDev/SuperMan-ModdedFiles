.class public Lsun/nio/cs/StreamEncoder;
.super Ljava/io/Writer;
.source "StreamEncoder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000


# instance fields
.field private bb:Ljava/nio/ByteBuffer;

.field private ch:Ljava/nio/channels/WritableByteChannel;

.field private cs:Ljava/nio/charset/Charset;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private haveLeftoverChar:Z

.field private volatile isOpen:Z

.field private lcb:Ljava/nio/CharBuffer;

.field private leftoverChar:C

.field private final out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .locals 2

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    iput-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iput-object p1, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    iput-object v1, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    iput-object p3, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    iput-boolean v1, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    iput-object v2, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iput-object v2, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    iput-object p1, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    iput-object p2, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-gez p3, :cond_0

    const/16 p3, 0x2000

    :cond_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private flushLeftoverChar(Ljava/nio/CharBuffer;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v1, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_5

    :cond_0
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    if-nez v1, :cond_6

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    :goto_0
    iget-boolean v1, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iget-char v3, p0, Lsun/nio/cs/StreamEncoder;->leftoverChar:C

    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    :cond_2
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    :goto_1
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_b

    :cond_3
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iget-object v4, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3, v4, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    iput-char v1, p0, Lsun/nio/cs/StreamEncoder;->leftoverChar:C

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2}, Lsun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    :cond_4
    return-void

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-boolean v1, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_8
    move v1, v2

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    goto :goto_1

    :cond_a
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_1

    :cond_b
    iput-boolean v2, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    return-void
.end method

.method public static forEncoder(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Lsun/nio/cs/StreamEncoder;
    .locals 1

    new-instance v0, Lsun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)V

    return-object v0
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamEncoder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p2

    if-nez p2, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lsun/nio/cs/StreamEncoder;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    :cond_1
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v2, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;
    .locals 1

    new-instance v0, Lsun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)Lsun/nio/cs/StreamEncoder;
    .locals 1

    new-instance v0, Lsun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V

    return-object v0
.end method

.method private isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    return v0
.end method

.method private writeBytes()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sget-boolean v3, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    if-gt v1, v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    if-gt v1, v0, :cond_2

    sub-int v2, v0, v1

    :cond_2
    if-lez v2, :cond_4

    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    iget-object v4, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-eq v3, v2, :cond_4

    sget-boolean v3, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_3
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget-object v5, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    :cond_4
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implClose()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method encodingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->ensureOpen()V

    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implFlush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public flushBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implFlushBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->encodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method implClose()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3}, Lsun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    :goto_0
    :try_start_0
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    :cond_0
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/WritableByteChannel;->close()V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v3

    :goto_2
    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    throw v1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method implFlush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implFlushBuffer()V

    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method implFlushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    :cond_0
    return-void
.end method

.method implWrite([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    iget-boolean v2, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v4}, Lsun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v5, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-gt v2, v3, :cond_1

    move v4, v3

    :cond_1
    if-nez v4, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_2
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-ne v2, v3, :cond_3

    iput-boolean v3, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    iput-char v2, p0, Lsun/nio/cs/StreamEncoder;->leftoverChar:C

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v2, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-lez v2, :cond_5

    move v2, v3

    :goto_1
    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_0
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [C

    int-to-char v1, p1

    aput-char v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lsun/nio/cs/StreamEncoder;->write([CII)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-gez p3, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_0
    new-array v0, p3, [C

    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v0, v2, p3}, Lsun/nio/cs/StreamEncoder;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->ensureOpen()V

    if-ltz p2, :cond_0

    array-length v0, p1

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    if-ltz p3, :cond_0

    add-int v0, p2, p3

    :try_start_1
    array-length v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v0, v2, :cond_0

    add-int v0, p2, p3

    if-ltz v0, :cond_0

    if-nez p3, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/cs/StreamEncoder;->implWrite([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-void
.end method
