.class final Ljava/nio/channels/Channels$1;
.super Ljava/io/OutputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private b1:[B

.field private bb:Ljava/nio/ByteBuffer;

.field private bs:[B

.field final synthetic val$ch:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Ljava/nio/channels/Channels$1;->val$ch:Ljava/nio/channels/WritableByteChannel;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/Channels$1;->bb:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Ljava/nio/channels/Channels$1;->bs:[B

    iput-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/channels/Channels$1;->val$ch:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    :cond_0
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    invoke-virtual {p0, v0}, Ljava/nio/channels/Channels$1;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-ltz p2, :cond_0

    :try_start_0
    array-length v1, p1

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    if-ltz p3, :cond_0

    add-int v1, p2, p3

    :try_start_1
    array-length v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v2, :cond_0

    add-int v1, p2, p3

    if-ltz v1, :cond_0

    if-nez p3, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v1, p0, Ljava/nio/channels/Channels$1;->bs:[B

    if-ne v1, p1, :cond_3

    iget-object v0, p0, Ljava/nio/channels/Channels$1;->bb:Ljava/nio/ByteBuffer;

    :goto_0
    add-int v1, p2, p3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v0, p0, Ljava/nio/channels/Channels$1;->bb:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Ljava/nio/channels/Channels$1;->bs:[B

    iget-object v1, p0, Ljava/nio/channels/Channels$1;->val$ch:Ljava/nio/channels/WritableByteChannel;

    invoke-static {v1, v0}, Ljava/nio/channels/Channels;->-wrap0(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0
.end method
