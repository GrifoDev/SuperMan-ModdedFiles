.class Lsun/security/ssl/ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "ByteBufferInputStream.java"


# instance fields
.field bb:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 45
    iput-object p1, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    .line 44
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "available on a closed InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    .line 153
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    .prologue
    monitor-enter p0

    monitor-exit p0

    .line 160
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "read on a closed InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    const/4 v0, -0x1

    return v0

    .line 62
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "read on a closed InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/security/ssl/ByteBufferInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v1, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "read on a closed InputStream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    if-nez p1, :cond_1

    .line 91
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 92
    :cond_1
    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 93
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 92
    :cond_3
    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt p3, v1, :cond_2

    .line 94
    if-nez p3, :cond_4

    .line 95
    return v2

    .line 98
    :cond_4
    iget-object v1, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 99
    .local v0, "length":I
    if-nez v0, :cond_5

    .line 100
    const/4 v1, -0x1

    return v1

    .line 103
    :cond_5
    iget-object v1, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 104
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 167
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 113
    iget-object v2, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 114
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "skip on a closed InputStream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_0
    cmp-long v2, p1, v4

    if-gtz v2, :cond_1

    .line 118
    return-wide v4

    .line 125
    :cond_1
    long-to-int v0, p1

    .line 126
    .local v0, "nInt":I
    iget-object v2, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 128
    .local v1, "skip":I
    iget-object v2, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 130
    int-to-long v2, v0

    return-wide v2
.end method
