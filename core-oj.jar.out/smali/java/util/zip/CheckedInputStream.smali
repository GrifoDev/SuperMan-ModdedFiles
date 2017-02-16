.class public Ljava/util/zip/CheckedInputStream;
.super Ljava/io/FilterInputStream;
.source "CheckedInputStream.java"


# instance fields
.field private cksum:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "cksum"    # Ljava/util/zip/Checksum;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    iput-object p2, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    .line 48
    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/util/zip/Checksum;
    .locals 1

    .prologue
    .line 114
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

    .prologue
    .line 59
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 60
    .local v0, "b":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 63
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    .line 83
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 84
    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 86
    :cond_0
    return p3
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/16 v1, 0x200

    new-array v0, v1, [B

    .line 97
    .local v0, "buf":[B
    const-wide/16 v4, 0x0

    .line 98
    .local v4, "total":J
    :goto_0
    cmp-long v1, v4, p1

    if-gez v1, :cond_2

    .line 99
    sub-long v2, p1, v4

    .line 100
    .local v2, "len":J
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

    .line 101
    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 102
    return-wide v4

    .line 100
    :cond_0
    array-length v1, v0

    goto :goto_1

    .line 104
    :cond_1
    add-long/2addr v4, v2

    goto :goto_0

    .line 106
    .end local v2    # "len":J
    :cond_2
    return-wide v4
.end method
