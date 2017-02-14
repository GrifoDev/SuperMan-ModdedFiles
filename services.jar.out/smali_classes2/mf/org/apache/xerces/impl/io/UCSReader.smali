.class public final Lmf/org/apache/xerces/impl/io/UCSReader;
.super Ljava/io/Reader;
.source "UCSReader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final UCS2BE:S = 0x2s

.field public static final UCS2LE:S = 0x1s

.field public static final UCS4BE:S = 0x8s

.field public static final UCS4LE:S = 0x4s


# instance fields
.field protected final fBuffer:[B

.field protected final fEncoding:S

.field protected final fInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IS)V
    .locals 1

    new-array v0, p2, [B

    invoke-direct {p0, p1, v0, p3}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;[BS)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;S)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;IS)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BS)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

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

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xff

    const/4 v4, -0x1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v5, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eq v1, v5, :cond_1

    iget-short v2, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    iget-short v2, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0

    :cond_0
    return v4

    :cond_1
    return v4

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v5, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v5, :cond_4

    iget-short v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_3
    return v4

    :cond_4
    return v4

    :cond_5
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0

    :cond_6
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public read([CII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v3, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    if-ge v0, v10, :cond_0

    move v0, v1

    :goto_0
    shl-int v0, p3, v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    array-length v4, v4

    if-gt v0, v4, :cond_1

    :goto_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    invoke-virtual {v4, v5, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v9, :cond_2

    iget-short v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    if-ge v4, v10, :cond_3

    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_7

    :goto_2
    iget-short v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    if-ge v4, v10, :cond_9

    :goto_3
    shr-int v4, v0, v1

    move v1, v3

    :goto_4
    if-ge v1, v4, :cond_d

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    iget-object v6, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v0, v5, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    iget-short v6, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    if-ge v6, v10, :cond_a

    iget-short v6, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    if-eq v6, v2, :cond_c

    add-int v6, p2, v1

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v3, v5

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p1, v6

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_4

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    array-length v0, v0

    goto :goto_1

    :cond_2
    return v9

    :cond_3
    and-int/lit8 v4, v0, 0x3

    rsub-int/lit8 v4, v4, 0x4

    and-int/lit8 v5, v4, 0x3

    move v4, v3

    :goto_6
    if-ge v4, v5, :cond_6

    iget-object v6, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    if-eq v6, v9, :cond_5

    iget-object v7, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int v8, v0, v4

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int v7, v0, v4

    aput-byte v3, v6, v7

    add-int/lit8 v4, v4, 0x1

    :cond_5
    if-lt v4, v5, :cond_4

    :cond_6
    add-int/2addr v0, v5

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-eq v4, v9, :cond_8

    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    aput-byte v3, v4, v0

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_3

    :cond_a
    iget-object v6, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v7, v0, 0x1

    aget-byte v0, v6, v0

    and-int/lit16 v6, v0, 0xff

    iget-object v8, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v0, v7, 0x1

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    iget-short v8, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/16 v9, 0x8

    if-eq v8, v9, :cond_b

    add-int v8, p2, v1

    shl-int/lit8 v7, v7, 0x18

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v7

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p1, v8

    goto :goto_5

    :cond_b
    add-int v8, p2, v1

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v3, v5

    shl-int/lit8 v5, v6, 0x8

    add-int/2addr v3, v5

    add-int/2addr v3, v7

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p1, v8

    goto :goto_5

    :cond_c
    add-int v6, p2, v1

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v5

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p1, v6

    goto/16 :goto_5

    :cond_d
    return v4
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    shl-long v2, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    or-int/lit8 v1, v0, 0x1

    int-to-long v4, v1

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    shr-long v0, v2, v0

    return-wide v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    shr-long v0, v2, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method
