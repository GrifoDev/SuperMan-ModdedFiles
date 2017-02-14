.class public Ljava/io/CharArrayWriter;
.super Ljava/io/Writer;
.source "CharArrayWriter.java"


# instance fields
.field protected buf:[C

.field protected count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/io/CharArrayWriter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/CharArrayWriter;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;II)V

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/CharArrayWriter;->count:I

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/io/CharArrayWriter;->count:I

    return v0
.end method

.method public toCharArray()[C
    .locals 3

    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write(I)V
    .locals 5

    iget-object v2, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    iput-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    :cond_0
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    int-to-char v4, p1

    aput-char v4, v1, v3

    iput v0, p0, Ljava/io/CharArrayWriter;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5

    iget-object v2, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    add-int v0, v1, p3

    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    iput-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    :cond_0
    add-int v1, p2, p3

    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v4, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-virtual {p1, p2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    iput v0, p0, Ljava/io/CharArrayWriter;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write([CII)V
    .locals 4

    if-ltz p2, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_0

    add-int v1, p2, p3

    if-ltz v1, :cond_0

    if-nez p3, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    add-int v0, v1, p3

    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_3

    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    iput-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    :cond_3
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput v0, p0, Ljava/io/CharArrayWriter;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
