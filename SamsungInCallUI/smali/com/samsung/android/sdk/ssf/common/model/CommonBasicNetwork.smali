.class public Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;
.super Lcom/android/volley/toolbox/BasicNetwork;


# static fields
.field private static SLOW_REQUEST_THRESHOLD_MS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private authorizationListener:Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    const/16 v0, 0xbb8

    sput v0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method private attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    :try_start_0
    invoke-interface {v0, p3}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    throw v0
.end method

.method private checkBadRequestForAuthFailureOrThrowException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/ServerError;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->authorizationListener:Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->hasTriedForAuthFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    throw p3

    :cond_0
    const-string v0, "Bad request encountered. Refresh authorization and retry."

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->authorizationListener:Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;

    iget-object v1, p3, Lcom/android/volley/ServerError;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-interface {v0, p2, v1}, Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;->refreshAccessToken(Lcom/android/volley/Request;Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Request;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Retrying request after refreshing access token"

    sget-object v2, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "%s-retry [timeout=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    instance-of v1, v0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->triedForAuthFailure(Z)V

    :cond_1
    return-void

    :cond_2
    throw p3

    :cond_3
    throw p3
.end method

.method private commonAddCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "If-None-Match"

    iget-object v1, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v0, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private commonLogSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request",
            "<*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->DEBUG:Z

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v3, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    if-eqz p4, :cond_2

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x3

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method

.method private entityToBytes(Lorg/apache/http/HttpEntity;Lcom/android/volley/Request;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/android/volley/Request",
            "<*>;)[B"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v5, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-direct {v5, v0, v2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    if-eqz v0, :cond_7

    check-cast p2, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    :try_start_1
    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0}, Lcom/android/volley/ServerError;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    :goto_2
    if-eqz v6, :cond_0

    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_3
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :goto_4
    :try_start_5
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v5}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v0

    :cond_1
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v2

    move v4, v3

    move v0, v3

    :goto_6
    :try_start_7
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    add-int/2addr v0, v8

    rem-int/lit16 v9, v4, 0xc8

    if-nez v9, :cond_2

    if-eqz p2, :cond_2

    const-wide/16 v10, 0x1

    invoke-virtual {p2, v0, v10, v11}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->deliverProgress(IJ)V

    move v0, v3

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v5, v2, v9, v8}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_3
    invoke-virtual {v5}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v0

    if-eqz v6, :cond_4

    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_4
    :goto_7
    :try_start_9
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_8
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v5}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v0

    :catch_1
    move-exception v1

    :try_start_a
    invoke-virtual {v7, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7

    :catch_2
    move-exception v1

    const-string v1, "Error occured when calling consumingContent"

    sget-object v3, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_3
    move-exception v3

    :try_start_b
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    :catch_4
    move-exception v1

    const-string v1, "Error occured when calling consumingContent"

    sget-object v3, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :cond_7
    move-object p2, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    :goto_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->commonAddCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    invoke-interface {v3, p1, v0}, Lcom/android/volley/toolbox/HttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/ssf/common/model/CancelException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v8

    :try_start_1
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/samsung/android/sdk/ssf/common/model/CancelException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v7

    const/16 v0, 0x130

    if-ne v9, v0, :cond_1

    :try_start_2
    new-instance v0, Lcom/android/volley/NetworkResponse;

    const/16 v2, 0x130

    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v7, v3}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/volley/Cache$Entry;->data:[B

    goto :goto_1

    :cond_1
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->entityToBytes(Lorg/apache/http/HttpEntity;Lcom/android/volley/Request;)[B

    move-result-object v5

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, v10

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->commonLogSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V

    const/16 v0, 0xc8

    if-lt v9, v0, :cond_2

    const/16 v0, 0x12b

    if-le v9, v0, :cond_4

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/samsung/android/sdk/ssf/common/model/CancelException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :catch_0
    move-exception v0

    const-string v0, "socket"

    new-instance v1, Lcom/android/volley/TimeoutError;

    invoke-direct {v1}, Lcom/android/volley/TimeoutError;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_3
    new-array v5, v0, [B

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/android/volley/NetworkResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v5, v7, v1}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/samsung/android/sdk/ssf/common/model/CancelException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v0, "connection"

    new-instance v1, Lcom/android/volley/TimeoutError;

    invoke-direct {v1}, Lcom/android/volley/TimeoutError;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    const-string v1, "cancel error"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/common/model/CancelError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/ssf/common/model/SocketError;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/ssf/common/model/SocketError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    :goto_4
    sget-object v3, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    if-eqz v5, :cond_9

    new-instance v2, Lcom/android/volley/NetworkResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v5, v1, v3}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    const/16 v1, 0x191

    if-eq v0, v1, :cond_5

    const/16 v1, 0x193

    if-ne v0, v1, :cond_7

    :cond_5
    const-string v0, "auth"

    new-instance v1, Lcom/android/volley/AuthFailureError;

    invoke-direct {v1, v2}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lcom/android/volley/NoConnectionError;

    invoke-direct {v1, v0}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    const/16 v1, 0x190

    if-ne v0, v1, :cond_8

    const-string v0, "BadRequest"

    new-instance v1, Lcom/android/volley/ServerError;

    invoke-direct {v1, v2}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->checkBadRequestForAuthFailureOrThrowException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/ServerError;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0, v2}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/android/volley/NetworkError;

    invoke-direct {v0, v3}, Lcom/android/volley/NetworkError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v0

    :catch_6
    move-exception v0

    move-object v2, v8

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    goto :goto_4
.end method

.method public setAuthorizationListener(Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->authorizationListener:Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;

    return-void
.end method
