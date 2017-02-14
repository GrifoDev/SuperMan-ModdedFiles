.class public Ljava/io/BufferedWriter;
.super Ljava/io/Writer;
.source "BufferedWriter.java"


# static fields
.field private static defaultCharBufferSize:I


# instance fields
.field private cb:[C

.field private lineSeparator:Ljava/lang/String;

.field private nChars:I

.field private nextChar:I

.field private out:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2000

    sput v0, Ljava/io/BufferedWriter;->defaultCharBufferSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    sget v0, Ljava/io/BufferedWriter;->defaultCharBufferSize:I

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedWriter;->cb:[C

    iput p2, p0, Ljava/io/BufferedWriter;->nChars:I

    iput v1, p0, Ljava/io/BufferedWriter;->nextChar:I

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "line.separator"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private min(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    return p2
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedWriter;->cb:[C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/io/BufferedWriter;->cb:[C

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method flushBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    iget v0, p0, Ljava/io/BufferedWriter;->nextChar:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/BufferedWriter;->nextChar:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public newLine()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    iget v0, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v2, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    :cond_0
    iget-object v0, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v2, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    int-to-char v3, p1

    aput-char v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    move v0, p2

    add-int v2, p2, p3

    :cond_0
    :goto_0
    if-ge v0, v2, :cond_1

    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    sub-int/2addr v3, v5

    sub-int v5, v2, v0

    invoke-direct {p0, v3, v5}, Ljava/io/BufferedWriter;->min(II)I

    move-result v1

    add-int v3, v0, v1

    iget-object v5, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v6, p0, Ljava/io/BufferedWriter;->nextChar:I

    invoke-virtual {p1, v0, v3, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v0, v1

    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v5, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v3, v5, :cond_0

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    monitor-exit v4

    return-void
.end method

.method public write([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    if-ltz p2, :cond_0

    array-length v3, p1

    if-le p2, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    if-ltz p3, :cond_0

    add-int v3, p2, p3

    :try_start_1
    array-length v5, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v3, v5, :cond_0

    add-int v3, p2, p3

    if-ltz v3, :cond_0

    if-nez p3, :cond_2

    monitor-exit v4

    return-void

    :cond_2
    :try_start_2
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt p3, v3, :cond_3

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    iget-object v3, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-void

    :cond_3
    move v0, p2

    add-int v2, p2, p3

    :cond_4
    :goto_0
    if-ge v0, v2, :cond_5

    :try_start_3
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    sub-int/2addr v3, v5

    sub-int v5, v2, v0

    invoke-direct {p0, v3, v5}, Ljava/io/BufferedWriter;->min(II)I

    move-result v1

    iget-object v3, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    invoke-static {p1, v0, v3, v5, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    add-int/2addr v0, v1

    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v5, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v3, v5, :cond_4

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_5
    monitor-exit v4

    return-void
.end method
