.class public Landroid/util/jar/StrictJarFile$RAFStream;
.super Ljava/io/InputStream;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RAFStream"
.end annotation


# instance fields
.field private endOffset:J

.field private offset:J

.field private final sharedRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/util/jar/StrictJarFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Landroid/util/jar/StrictJarFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    iput-wide p4, p0, Landroid/util/jar/StrictJarFile$RAFStream;->endOffset:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$RAFStream;->endOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Landroid/util/jar/StrictJarFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    monitor-enter v4

    :try_start_0
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$RAFStream;->endOffset:J

    iget-wide v8, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    sub-long v2, v6, v8

    int-to-long v6, p3

    cmp-long v1, v6, v2

    if-lez v1, :cond_0

    long-to-int p3, v2

    :cond_0
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Landroid/util/jar/StrictJarFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return v0

    :cond_1
    const/4 v1, -0x1

    monitor-exit v4

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$RAFStream;->endOffset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$RAFStream;->endOffset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    sub-long p1, v0, v2

    :cond_0
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    return-wide p1
.end method
