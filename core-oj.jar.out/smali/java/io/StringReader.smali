.class public Ljava/io/StringReader;
.super Ljava/io/Reader;
.source "StringReader.java"


# instance fields
.field private length:I

.field private mark:I

.field private next:I

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput v0, p0, Ljava/io/StringReader;->next:I

    iput v0, p0, Ljava/io/StringReader;->mark:I

    iput-object p1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/io/StringReader;->length:I

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    return-void
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
    iget-object v1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    iget v0, p0, Ljava/io/StringReader;->next:I

    iput v0, p0, Ljava/io/StringReader;->mark:I
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

    iget-object v1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    iget v0, p0, Ljava/io/StringReader;->next:I

    iget v2, p0, Ljava/io/StringReader;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    iget v2, p0, Ljava/io/StringReader;->next:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/StringReader;->next:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public read([CII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    if-ltz p2, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    if-ltz p3, :cond_0

    add-int v1, p2, p3

    :try_start_1
    array-length v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v3, :cond_0

    add-int v1, p2, p3

    if-ltz v1, :cond_0

    if-nez p3, :cond_2

    monitor-exit v2

    return v4

    :cond_2
    :try_start_2
    iget v1, p0, Ljava/io/StringReader;->next:I

    iget v3, p0, Ljava/io/StringReader;->length:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v1, v3, :cond_3

    const/4 v1, -0x1

    monitor-exit v2

    return v1

    :cond_3
    :try_start_3
    iget v1, p0, Ljava/io/StringReader;->length:I

    iget v3, p0, Ljava/io/StringReader;->next:I

    sub-int/2addr v1, v3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    iget v3, p0, Ljava/io/StringReader;->next:I

    iget v4, p0, Ljava/io/StringReader;->next:I

    add-int/2addr v4, v0

    invoke-virtual {v1, v3, v4, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Ljava/io/StringReader;->next:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/StringReader;->next:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return v0
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    iget v0, p0, Ljava/io/StringReader;->mark:I

    iput v0, p0, Ljava/io/StringReader;->next:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    iget v2, p0, Ljava/io/StringReader;->next:I

    iget v4, p0, Ljava/io/StringReader;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v4, :cond_0

    const-wide/16 v4, 0x0

    monitor-exit v3

    return-wide v4

    :cond_0
    :try_start_1
    iget v2, p0, Ljava/io/StringReader;->length:I

    iget v4, p0, Ljava/io/StringReader;->next:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget v2, p0, Ljava/io/StringReader;->next:I

    neg-int v2, v2

    int-to-long v4, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget v2, p0, Ljava/io/StringReader;->next:I

    int-to-long v4, v2

    add-long/2addr v4, v0

    long-to-int v2, v4

    iput v2, p0, Ljava/io/StringReader;->next:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-wide v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
