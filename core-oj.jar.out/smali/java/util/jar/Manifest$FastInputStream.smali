.class Ljava/util/jar/Manifest$FastInputStream;
.super Ljava/io/FilterInputStream;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FastInputStream"
.end annotation


# instance fields
.field private buf:[B

.field private count:I

.field private pos:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/util/jar/Manifest$FastInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    new-array v0, p2, [B

    iput-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    return-void
.end method

.method private fill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iput v4, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iput v4, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    iget-object v3, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    :cond_0
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

    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    iput-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    :cond_0
    return-void
.end method

.method public peek()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    :cond_0
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v0, v1, v2

    if-gtz v0, :cond_1

    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    array-length v1, v1

    if-lt p3, v1, :cond_0

    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    return v1

    :cond_0
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v0, v1, v2

    if-gtz v0, :cond_1

    const/4 v1, -0x1

    return v1

    :cond_1
    if-le p3, v0, :cond_2

    move p3, v0

    :cond_2
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    return p3
.end method

.method public readLine([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/jar/Manifest$FastInputStream;->readLine([BII)I

    move-result v0

    return v0
.end method

.method public readLine([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0xa

    iget-object v3, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    const/4 v4, 0x0

    :cond_0
    if-ge v4, p3, :cond_5

    iget v7, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v8, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v0, v7, v8

    if-gtz v0, :cond_1

    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    iget v7, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v8, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v0, v7, v8

    if-gtz v0, :cond_1

    const/4 v7, -0x1

    return v7

    :cond_1
    sub-int v2, p3, v4

    if-le v2, v0, :cond_2

    move v2, v0

    :cond_2
    iget v5, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    add-int v1, v5, v2

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_3

    add-int/lit8 v5, v6, 0x1

    aget-byte v7, v3, v6

    if-eq v7, v9, :cond_4

    move v6, v5

    goto :goto_0

    :cond_3
    move v5, v6

    :cond_4
    iget v7, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v2, v5, v7

    iget v7, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    invoke-static {v3, v7, p1, p2, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/2addr p2, v2

    add-int/2addr v4, v2

    iput v5, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    add-int/lit8 v7, v5, -0x1

    aget-byte v7, v3, v7

    if-ne v7, v9, :cond_0

    :cond_5
    return v4
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    return-wide v4

    :cond_0
    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v3, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v0, v2

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    iget-object v2, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    return-wide v2

    :cond_1
    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    move-wide p1, v0

    :cond_2
    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    return-wide p1
.end method
