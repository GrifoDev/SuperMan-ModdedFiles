.class public final Ljava/nio/channels/Channels;
.super Ljava/lang/Object;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/Channels$ReadableByteChannelImpl;,
        Ljava/nio/channels/Channels$WritableByteChannelImpl;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFully(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .locals 2

    const-string/jumbo v0, "in"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    const-class v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
    .locals 1

    const-string/jumbo v0, "out"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/nio/channels/Channels$WritableByteChannelImpl;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$WritableByteChannelImpl;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;
    .locals 1

    const-string/jumbo v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lsun/nio/ch/ChannelInputStream;

    invoke-direct {v0, p0}, Lsun/nio/ch/ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    return-object v0
.end method

.method public static newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;
    .locals 1

    const-string/jumbo v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/nio/channels/Channels$1;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$1;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    return-object v0
.end method

.method public static newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2

    const-string/jumbo v0, "csName"

    invoke-static {p1, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public static newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;
    .locals 1

    const-string/jumbo v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lsun/nio/cs/StreamDecoder;->forDecoder(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Lsun/nio/cs/StreamDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/lang/String;)Ljava/io/Writer;
    .locals 2

    const-string/jumbo v0, "csName"

    invoke-static {p1, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public static newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;
    .locals 1

    const-string/jumbo v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lsun/nio/cs/StreamEncoder;->forEncoder(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    return-object v0
.end method

.method private static writeFully(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v1, p0, Ljava/nio/channels/SelectableChannel;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private static writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "no bytes written"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method
