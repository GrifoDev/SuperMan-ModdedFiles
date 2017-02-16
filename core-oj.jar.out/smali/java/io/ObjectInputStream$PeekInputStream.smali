.class Ljava/io/ObjectInputStream$PeekInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeekInputStream"
.end annotation


# instance fields
.field private final in:Ljava/io/InputStream;

.field private peekb:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 2290
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2285
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2291
    iput-object p1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    .line 2290
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2351
    iget-object v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    iget v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v0, v1

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
    .line 2355
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2354
    return-void
.end method

.method peek()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2299
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v0, :cond_0

    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    goto :goto_0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2303
    iget v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v1, :cond_0

    .line 2304
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2305
    .local v0, "v":I
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2306
    return v0

    .line 2308
    .end local v0    # "v":I
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    return v1
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

    .line 2313
    if-nez p3, :cond_0

    .line 2314
    return v2

    .line 2315
    :cond_0
    iget v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-gez v2, :cond_1

    .line 2316
    iget-object v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    return v2

    .line 2318
    :cond_1
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 2319
    add-int/lit8 p3, p3, -0x1

    .line 2320
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2321
    iget-object v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2322
    .local v0, "n":I
    if-ltz v0, :cond_2

    add-int/lit8 v2, v0, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method readFully([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2327
    const/4 v1, 0x0

    .line 2328
    .local v1, "n":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 2329
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v0

    .line 2330
    .local v0, "count":I
    if-gez v0, :cond_0

    .line 2331
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 2333
    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    .line 2326
    .end local v0    # "count":I
    :cond_1
    return-void
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
    const-wide/16 v2, 0x0

    .line 2338
    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 2339
    return-wide v2

    .line 2341
    :cond_0
    const/4 v0, 0x0

    .line 2342
    .local v0, "skipped":I
    iget v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v1, :cond_1

    .line 2343
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2344
    const/4 v0, 0x1

    .line 2345
    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    .line 2347
    :cond_1
    int-to-long v2, v0

    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$PeekInputStream;->skip(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    return-wide v2
.end method
