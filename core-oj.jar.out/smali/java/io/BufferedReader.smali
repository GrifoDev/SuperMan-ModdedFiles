.class public Ljava/io/BufferedReader;
.super Ljava/io/Reader;
.source "BufferedReader.java"


# static fields
.field private static final INVALIDATED:I = -0x2

.field private static final UNMARKED:I = -0x1

.field private static defaultCharBufferSize:I

.field private static defaultExpectedLineLength:I


# instance fields
.field private cb:[C

.field private in:Ljava/io/Reader;

.field private markedChar:I

.field private markedSkipLF:Z

.field private nChars:I

.field private nextChar:I

.field private readAheadLimit:I

.field private skipLF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2000

    sput v0, Ljava/io/BufferedReader;->defaultCharBufferSize:I

    const/16 v0, 0x50

    sput v0, Ljava/io/BufferedReader;->defaultExpectedLineLength:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    sget v0, Ljava/io/BufferedReader;->defaultCharBufferSize:I

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedReader;->markedChar:I

    iput v1, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    iput-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    iput-boolean v1, p0, Ljava/io/BufferedReader;->markedSkipLF:Z

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedReader;->cb:[C

    iput v1, p0, Ljava/io/BufferedReader;->nChars:I

    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private fill()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    iget v5, p0, Ljava/io/BufferedReader;->markedChar:I

    const/4 v6, -0x1

    if-gt v5, v6, :cond_2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-object v5, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    iget-object v6, p0, Ljava/io/BufferedReader;->cb:[C

    iget-object v7, p0, Ljava/io/BufferedReader;->cb:[C

    array-length v7, v7

    sub-int/2addr v7, v1

    invoke-virtual {v5, v6, v1, v7}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-eqz v2, :cond_0

    if-lez v2, :cond_1

    add-int v5, v1, v2

    iput v5, p0, Ljava/io/BufferedReader;->nChars:I

    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    :cond_1
    return-void

    :cond_2
    iget v5, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v6, p0, Ljava/io/BufferedReader;->markedChar:I

    sub-int v0, v5, v6

    iget v5, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    if-lt v0, v5, :cond_3

    const/4 v5, -0x2

    iput v5, p0, Ljava/io/BufferedReader;->markedChar:I

    iput v8, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v5, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    iget-object v6, p0, Ljava/io/BufferedReader;->cb:[C

    array-length v6, v6

    if-gt v5, v6, :cond_4

    iget-object v5, p0, Ljava/io/BufferedReader;->cb:[C

    iget v6, p0, Ljava/io/BufferedReader;->markedChar:I

    iget-object v7, p0, Ljava/io/BufferedReader;->cb:[C

    invoke-static {v5, v6, v7, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput v8, p0, Ljava/io/BufferedReader;->markedChar:I

    move v1, v0

    :goto_1
    iput v0, p0, Ljava/io/BufferedReader;->nChars:I

    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I

    goto :goto_0

    :cond_4
    iget-object v5, p0, Ljava/io/BufferedReader;->cb:[C

    array-length v5, v5

    mul-int/lit8 v4, v5, 0x2

    iget v5, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    if-le v4, v5, :cond_5

    iget v4, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    :cond_5
    new-array v3, v4, [C

    iget-object v5, p0, Ljava/io/BufferedReader;->cb:[C

    iget v6, p0, Ljava/io/BufferedReader;->markedChar:I

    invoke-static {v5, v6, v3, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput-object v3, p0, Ljava/io/BufferedReader;->cb:[C

    iput v8, p0, Ljava/io/BufferedReader;->markedChar:I

    move v1, v0

    goto :goto_1
.end method

.method private read1([CII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    array-length v1, v1

    if-lt p3, v1, :cond_0

    iget v1, p0, Ljava/io/BufferedReader;->markedChar:I

    if-gt v1, v3, :cond_0

    iget-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    :cond_1
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v1, v2, :cond_3

    return v3

    :cond_2
    iget-object v1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    return v1

    :cond_3
    iget-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    iget-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v1, v2, :cond_4

    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    :cond_4
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v1, v2, :cond_5

    return v3

    :cond_5
    iget v1, p0, Ljava/io/BufferedReader;->nChars:I

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedReader;->cb:[C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public lines()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedReader$1;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader$1;-><init>(Ljava/io/BufferedReader;)V

    const/16 v1, 0x110

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method

.method public mark(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Read-ahead limit < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    iput p1, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iput v0, p0, Ljava/io/BufferedReader;->markedChar:I

    iget-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    iput-boolean v0, p0, Ljava/io/BufferedReader;->markedSkipLF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    :goto_0
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v0, v2, :cond_0

    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    iget-object v0, p0, Ljava/io/BufferedReader;->cb:[C

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedReader;->cb:[C

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v0, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return v0
.end method

.method public read([CII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    if-ltz p2, :cond_0

    array-length v2, p1

    if-le p2, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    if-ltz p3, :cond_0

    add-int v2, p2, p3

    :try_start_1
    array-length v4, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v2, v4, :cond_0

    add-int v2, p2, p3

    if-ltz v2, :cond_0

    if-nez p3, :cond_2

    monitor-exit v3

    return v5

    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read1([CII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-gtz v0, :cond_4

    monitor-exit v3

    return v0

    :cond_3
    add-int/2addr v0, v1

    :cond_4
    if-ge v0, p3, :cond_5

    :try_start_3
    iget-object v2, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->ready()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int v2, p2, v0

    sub-int v4, p3, v0

    invoke-direct {p0, p1, v2, v4}, Ljava/io/BufferedReader;->read1([CII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-gtz v1, :cond_3

    :cond_5
    monitor-exit v3

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/BufferedReader;->readLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readLine(Z)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v13, 0xd

    const/16 v12, 0xa

    const/4 v11, 0x0

    const/4 v4, 0x0

    iget-object v9, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    if-nez p1, :cond_1

    iget-boolean v3, p0, Ljava/io/BufferedReader;->skipLF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    :goto_0
    :try_start_1
    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v10, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v8, v10, :cond_0

    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    :cond_0
    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v10, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v8, v10, :cond_3

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    monitor-exit v9

    return-object v8

    :cond_1
    const/4 v3, 0x1

    move-object v5, v4

    goto :goto_0

    :cond_2
    monitor-exit v9

    return-object v11

    :cond_3
    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz v3, :cond_4

    :try_start_2
    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    iget v10, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v8, v8, v10

    if-ne v8, v12, :cond_4

    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/io/BufferedReader;->nextChar:I

    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljava/io/BufferedReader;->skipLF:Z

    const/4 v3, 0x0

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    :goto_1
    iget v8, p0, Ljava/io/BufferedReader;->nChars:I

    if-ge v2, v8, :cond_6

    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    aget-char v0, v8, v2

    if-eq v0, v12, :cond_5

    if-ne v0, v13, :cond_8

    :cond_5
    const/4 v1, 0x1

    :cond_6
    iget v6, p0, Ljava/io/BufferedReader;->nextChar:I

    iput v2, p0, Ljava/io/BufferedReader;->nextChar:I

    if-eqz v1, :cond_a

    if-nez v5, :cond_9

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    sub-int v10, v2, v6

    invoke-direct {v7, v8, v6, v10}, Ljava/lang/String;-><init>([CII)V

    :goto_2
    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/io/BufferedReader;->nextChar:I

    if-ne v0, v13, :cond_7

    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/io/BufferedReader;->skipLF:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_7
    monitor-exit v9

    return-object v7

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    :try_start_3
    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    sub-int v10, v2, v6

    invoke-virtual {v5, v8, v6, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_a
    if-nez v5, :cond_b

    new-instance v4, Ljava/lang/StringBuffer;

    sget v8, Ljava/io/BufferedReader;->defaultExpectedLineLength:I

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    :try_start_4
    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    sub-int v10, v2, v6

    invoke-virtual {v4, v8, v6, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v4

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    :goto_4
    monitor-exit v9

    throw v8

    :catchall_1
    move-exception v8

    move-object v4, v5

    goto :goto_4

    :cond_b
    move-object v4, v5

    goto :goto_3
.end method

.method public ready()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    iget-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-eqz v0, :cond_2

    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    :cond_0
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Ljava/io/BufferedReader;->cb:[C

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    :cond_2
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    iget v0, p0, Ljava/io/BufferedReader;->markedChar:I

    if-gez v0, :cond_1

    new-instance v2, Ljava/io/IOException;

    iget v0, p0, Ljava/io/BufferedReader;->markedChar:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "Mark invalid"

    :goto_0
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "Stream not marked"

    goto :goto_0

    :cond_1
    iget v0, p0, Ljava/io/BufferedReader;->markedChar:I

    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget-boolean v0, p0, Ljava/io/BufferedReader;->markedSkipLF:Z

    iput-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public skip(J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    cmp-long v4, p1, v8

    if-gez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "skip value is negative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v5, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    move-wide v2, p1

    :goto_0
    cmp-long v4, v2, v8

    if-lez v4, :cond_2

    iget v4, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v6, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v4, v6, :cond_1

    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    :cond_1
    iget v4, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v6, p0, Ljava/io/BufferedReader;->nChars:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v4, v6, :cond_3

    :cond_2
    :goto_1
    sub-long v6, p1, v2

    monitor-exit v5

    return-wide v6

    :cond_3
    :try_start_1
    iget-boolean v4, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/io/BufferedReader;->skipLF:Z

    iget-object v4, p0, Ljava/io/BufferedReader;->cb:[C

    iget v6, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v4, v4, v6

    const/16 v6, 0xa

    if-ne v4, v6, :cond_4

    iget v4, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/io/BufferedReader;->nextChar:I

    :cond_4
    iget v4, p0, Ljava/io/BufferedReader;->nChars:I

    iget v6, p0, Ljava/io/BufferedReader;->nextChar:I

    sub-int/2addr v4, v6

    int-to-long v0, v4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_5

    iget v4, p0, Ljava/io/BufferedReader;->nextChar:I

    int-to-long v6, v4

    add-long/2addr v6, v2

    long-to-int v4, v6

    iput v4, p0, Ljava/io/BufferedReader;->nextChar:I

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_5
    sub-long/2addr v2, v0

    iget v4, p0, Ljava/io/BufferedReader;->nChars:I

    iput v4, p0, Ljava/io/BufferedReader;->nextChar:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
