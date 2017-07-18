.class public Ljava/util/zip/CheckedInputStream;
.super Ljava/io/FilterInputStream;
.source "CheckedInputStream.java"


# instance fields
.field private cksum:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/util/zip/Checksum;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    return-object v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    :cond_0
    return p3
.end method

.method public skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x200

    new-array v0, v1, [B

    const-wide/16 v4, 0x0

    :goto_0
    cmp-long v1, v4, p1

    if-gez v1, :cond_2

    sub-long v2, p1, v4

    array-length v1, v0

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    long-to-int v1, v2

    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6, v1}, Ljava/util/zip/CheckedInputStream;->read([BII)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    return-wide v4

    :cond_0
    array-length v1, v0

    goto :goto_1

    :cond_1
    add-long/2addr v4, v2

    goto :goto_0

    :cond_2
    return-wide v4
.end method
