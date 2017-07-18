.class public abstract Lsun/misc/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field private cis:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized cachedInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/misc/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/misc/Resource;->cachedInputStream()Ljava/io/InputStream;

    move-result-object v0

    instance-of v1, v0, Lsun/nio/ByteBuffered;

    if-eqz v1, :cond_0

    check-cast v0, Lsun/nio/ByteBuffered;

    invoke-interface {v0}, Lsun/nio/ByteBuffered;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBytes()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/misc/Resource;->cachedInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lsun/misc/Resource;->getContentLength()I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/4 v9, 0x0

    :try_start_1
    new-array v0, v9, [B

    const/4 v9, -0x1

    if-ne v7, v9, :cond_0

    const v7, 0x7fffffff

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_5

    array-length v9, v0

    if-lt v8, v9, :cond_3

    sub-int v9, v7, v8

    array-length v10, v0

    add-int/lit16 v10, v10, 0x400

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    array-length v9, v0

    add-int v10, v8, v1

    if-ge v9, v10, :cond_1

    add-int v9, v8, v1

    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_1
    :goto_2
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v5, v0, v8, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    :goto_3
    if-gez v2, :cond_7

    const v9, 0x7fffffff

    if-eq v7, v9, :cond_4

    :try_start_3
    new-instance v9, Ljava/io/EOFException;

    const-string/jumbo v10, "Detect premature EOF"

    invoke-direct {v9, v10}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v9

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v9

    :catch_0
    move-exception v4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    :try_start_5
    array-length v9, v0

    sub-int v1, v9, v8

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    array-length v9, v0

    if-eq v9, v8, :cond_5

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    :cond_5
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_5
    if-eqz v6, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    return-object v0

    :cond_7
    add-int/2addr v8, v2

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_5

    :catch_3
    move-exception v4

    const/4 v6, 0x1

    goto :goto_5

    :catch_4
    move-exception v3

    goto :goto_4

    :catch_5
    move-exception v4

    const/4 v6, 0x1

    goto :goto_4
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCodeSourceURL()Ljava/net/URL;
.end method

.method public abstract getContentLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getURL()Ljava/net/URL;
.end method
