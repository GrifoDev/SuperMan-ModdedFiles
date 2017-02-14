.class public abstract Ljava/io/Reader;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Readable;
.implements Ljava/io/Closeable;


# static fields
.field private static final maxSkipBufferSize:I = 0x2000


# instance fields
.field protected lock:Ljava/lang/Object;

.field private skipBuffer:[C


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/Reader;->skipBuffer:[C

    iput-object p0, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/Reader;->skipBuffer:[C

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mark(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark() not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    new-array v0, v1, [C

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    aget-char v1, v0, v3

    return v1
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [C

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    :cond_0
    return v2
.end method

.method public read([C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method

.method public abstract read([CII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "reset() not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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
    const-wide/16 v4, 0x2000

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v5, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    array-length v4, v4

    if-ge v4, v1, :cond_2

    :cond_1
    new-array v4, v1, [C

    iput-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    :cond_2
    move-wide v2, p1

    :goto_0
    cmp-long v4, v2, v8

    if-lez v4, :cond_3

    iget-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    int-to-long v6, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7, v6}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    :cond_3
    sub-long v6, p1, v2

    monitor-exit v5

    return-wide v6

    :cond_4
    int-to-long v6, v0

    sub-long/2addr v2, v6

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
