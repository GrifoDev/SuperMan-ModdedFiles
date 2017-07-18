.class Ljava/nio/channels/Channels$ReadableByteChannelImpl;
.super Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.source "Channels.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadableByteChannelImpl"
.end annotation


# static fields
.field private static final TRANSFER_SIZE:I = 0x2000


# instance fields
.field private buf:[B

.field in:Ljava/io/InputStream;

.field private open:Z

.field private readLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->open:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->readLock:Ljava/lang/Object;

    iput-object p1, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method protected implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->open:Z

    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v7

    :goto_0
    if-ge v3, v2, :cond_1

    sub-int v4, v2, v3

    const/16 v8, 0x2000

    :try_start_0
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    array-length v4, v4

    if-ge v4, v1, :cond_0

    new-array v4, v1, [B

    iput-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    :cond_0
    if-lez v3, :cond_2

    iget-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-gtz v4, :cond_2

    :cond_1
    if-gez v0, :cond_5

    if-nez v3, :cond_5

    const/4 v4, -0x1

    monitor-exit v7

    return v4

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->begin()V

    iget-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    iget-object v8, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_3

    move v4, v5

    :goto_1
    :try_start_2
    invoke-virtual {p0, v4}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->end(Z)V

    if-ltz v0, :cond_1

    add-int/2addr v3, v0

    iget-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    const/4 v8, 0x0

    invoke-virtual {p1, v4, v8, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v7

    throw v4

    :cond_3
    move v4, v6

    goto :goto_1

    :catchall_1
    move-exception v4

    if-lez v0, :cond_4

    :goto_2
    :try_start_3
    invoke-virtual {p0, v5}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->end(Z)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    move v5, v6

    goto :goto_2

    :cond_5
    monitor-exit v7

    return v3
.end method
