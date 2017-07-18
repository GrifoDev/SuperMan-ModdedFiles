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

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    iput-object p1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

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

    const/4 v0, 0x0

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

    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method peek()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    iget v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v1, :cond_0

    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    return v0

    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    return v1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p3, :cond_0

    return v2

    :cond_0
    iget v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-gez v2, :cond_1

    iget-object v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    return v2

    :cond_1
    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 p3, p3, -0x1

    const/4 v2, -0x1

    iput v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    iget-object v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    return-wide v2

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v1, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    const/4 v0, 0x1

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    :cond_1
    int-to-long v2, v0

    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$PeekInputStream;->skip(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    return-wide v2
.end method
