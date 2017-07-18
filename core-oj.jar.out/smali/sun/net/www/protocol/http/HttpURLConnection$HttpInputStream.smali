.class Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;
.super Ljava/io/FilterInputStream;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpInputStream"
.end annotation


# static fields
.field private static final SKIP_BUFFER_SIZE:I = 0x1fa0


# instance fields
.field private cacheRequest:Ljava/net/CacheRequest;

.field private inCache:I

.field private markCount:I

.field private marked:Z

.field private outputStream:Ljava/io/OutputStream;

.field private skipBuffer:[B

.field final synthetic this$0:Lsun/net/www/protocol/http/HttpURLConnection;


# direct methods
.method public constructor <init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-boolean v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    iput v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    iput v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/InputStream;Ljava/net/CacheRequest;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    iput v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    iput v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    iput-object p3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    :try_start_0
    invoke-virtual {p3}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v1}, Ljava/net/CacheRequest;->abort()V

    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v1}, Ljava/net/CacheRequest;->abort()V

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    iput-object v3, v1, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1, v4}, Lsun/net/www/protocol/http/HttpURLConnection;->-wrap0(Lsun/net/www/protocol/http/HttpURLConnection;Z)V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v1}, Ljava/net/CacheRequest;->abort()V

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    iput-object v3, v2, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-static {v2, v4}, Lsun/net/www/protocol/http/HttpURLConnection;->-wrap0(Lsun/net/www/protocol/http/HttpURLConnection;Z)V

    throw v1
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    const/4 v0, 0x0

    iput v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [B

    invoke-virtual {p0, v0}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x0

    aget-byte v3, v0, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v3, 0xff

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v3}, Ljava/net/CacheRequest;->abort()V

    :cond_1
    throw v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v2

    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    if-lez v3, :cond_4

    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    if-lt v3, v2, :cond_2

    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    sub-int/2addr v3, v2

    iput v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_0

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    sub-int v4, v2, v1

    add-int/2addr v4, p2

    invoke-virtual {v3, p1, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    iget-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    :cond_1
    return v2

    :cond_2
    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    sub-int v1, v2, v3

    const/4 v3, 0x0

    iput v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v3}, Ljava/net/CacheRequest;->abort()V

    :cond_3
    throw v0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    iget v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    iget v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    move-wide v2, p1

    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->skipBuffer:[B

    if-nez v4, :cond_0

    const/16 v4, 0x1fa0

    new-array v4, v4, [B

    iput-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->skipBuffer:[B

    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->skipBuffer:[B

    cmp-long v4, p1, v6

    if-gtz v4, :cond_2

    return-wide v6

    :cond_1
    int-to-long v4, v1

    sub-long/2addr v2, v4

    :cond_2
    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    const-wide/16 v4, 0x1fa0    # 4.0E-320

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v0, v8, v4}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_1

    :cond_3
    sub-long v4, p1, v2

    return-wide v4
.end method
