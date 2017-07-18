.class public Lsun/net/www/http/HttpClient;
.super Lsun/net/NetworkClient;
.source "HttpClient.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final HTTP_CONTINUE:I = 0x64

.field static final httpPortNumber:I = 0x50

.field protected static kac:Lsun/net/www/http/KeepAliveCache;

.field private static keepAliveProp:Z

.field private static final logger:Lsun/util/logging/PlatformLogger;

.field private static retryPostProp:Z


# instance fields
.field private cacheRequest:Ljava/net/CacheRequest;

.field protected cachedHttpClient:Z

.field private capture:Lsun/net/www/http/HttpCapture;

.field failedOnce:Z

.field protected host:Ljava/lang/String;

.field private ignoreContinue:Z

.field protected inCache:Z

.field keepAliveConnections:I

.field keepAliveTimeout:I

.field volatile keepingAlive:Z

.field protected port:I

.field poster:Lsun/net/www/http/PosterOutputStream;

.field protected proxyDisabled:Z

.field requests:Lsun/net/www/MessageHeader;

.field public reuse:Z

.field streaming:Z

.field protected url:Ljava/net/URL;

.field public usingProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v3, 0x1

    const-class v2, Lsun/net/www/http/HttpClient;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lsun/net/www/http/HttpClient;->-assertionsDisabled:Z

    new-instance v2, Lsun/net/www/http/KeepAliveCache;

    invoke-direct {v2}, Lsun/net/www/http/KeepAliveCache;-><init>()V

    sput-object v2, Lsun/net/www/http/HttpClient;->kac:Lsun/net/www/http/KeepAliveCache;

    sput-boolean v3, Lsun/net/www/http/HttpClient;->keepAliveProp:Z

    sput-boolean v3, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    sput-object v2, Lsun/net/www/http/HttpClient;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "http.keepAlive"

    invoke-direct {v2, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "sun.net.http.retryPost"

    invoke-direct {v2, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lsun/net/www/http/HttpClient;->keepAliveProp:Z

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    :goto_2
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    sput-boolean v3, Lsun/net/www/http/HttpClient;->keepAliveProp:Z

    goto :goto_1

    :cond_2
    sput-boolean v3, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    goto :goto_2
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lsun/net/NetworkClient;-><init>()V

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    iput-object v2, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    iput v1, p0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I

    iput-object v2, p0, Lsun/net/www/http/HttpClient;->cacheRequest:Ljava/net/CacheRequest;

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->reuse:Z

    iput-object v2, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    return-void
.end method

.method private constructor <init>(Ljava/net/URL;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    nop

    nop

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/lang/String;IZ)V

    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :goto_0
    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/net/Proxy;I)V

    return-void

    :cond_0
    const-string/jumbo v0, "http"

    invoke-static {p2, p3, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;IZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :goto_0
    invoke-direct {p0, p1, v0, p5}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/net/Proxy;I)V

    return-void

    :cond_0
    const-string/jumbo v0, "http"

    invoke-static {p2, p3, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lsun/net/NetworkClient;-><init>()V

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    iput-object v2, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    iput v3, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    iput v1, p0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I

    iput-object v2, p0, Lsun/net/www/http/HttpClient;->cacheRequest:Ljava/net/CacheRequest;

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->reuse:Z

    iput-object v2, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    if-nez p2, :cond_0

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :cond_0
    iput-object p2, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    iput-object p1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lsun/net/www/http/HttpClient;->port:I

    iget v0, p0, Lsun/net/www/http/HttpClient;->port:I

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lsun/net/www/http/HttpClient;->port:I

    :cond_1
    invoke-virtual {p0, p3}, Lsun/net/NetworkClient;->setConnectTimeout(I)V

    invoke-static {p1}, Lsun/net/www/http/HttpCapture;->getCapture(Ljava/net/URL;)Lsun/net/www/http/HttpCapture;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->openServer()V

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static New(Ljava/net/URL;)Lsun/net/www/http/HttpClient;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static New(Ljava/net/URL;Ljava/lang/String;IZ)Lsun/net/www/http/HttpClient;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "http"

    invoke-static {p1, p2, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p3, v2}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static New(Ljava/net/URL;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "http"

    invoke-static {p1, p2, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    invoke-static {p0, v0, p4, p3, p5}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static New(Ljava/net/URL;Ljava/net/Proxy;ILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_6

    sget-object v2, Lsun/net/www/http/HttpClient;->kac:Lsun/net/www/http/KeepAliveCache;

    invoke-virtual {v2, p0, v3}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "POST"

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->available()Z

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v4, v0, Lsun/net/www/http/HttpClient;->inCache:Z

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_6

    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2, p1}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-nez v2, :cond_7

    if-nez p1, :cond_7

    :cond_3
    monitor-enter v0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    sget-boolean v2, Lsun/net/www/http/HttpClient;->-assertionsDisabled:Z

    if-nez v2, :cond_4

    iget-boolean v2, v0, Lsun/net/www/http/HttpClient;->inCache:Z

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    :cond_4
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, v0, Lsun/net/www/http/HttpClient;->inCache:Z

    if-eqz p4, :cond_5

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->needsTunneling()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    invoke-virtual {p4, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KeepAlive stream retrieved from the cache, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/net/www/http/HttpClient;->logFinest(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :cond_6
    :goto_0
    if-nez v0, :cond_8

    new-instance v0, Lsun/net/www/http/HttpClient;

    invoke-direct {v0, p0, p1, p2}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/net/Proxy;I)V

    :goto_1
    return-object v0

    :cond_7
    monitor-enter v0

    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, v0, Lsun/net/www/http/HttpClient;->inCache:Z

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v0

    throw v2

    :cond_8
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eq v2, v3, :cond_9

    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-nez v2, :cond_b

    :cond_9
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    :cond_a
    :goto_2
    iput-object p0, v0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public static New(Ljava/net/URL;Z)Lsun/net/www/http/HttpClient;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultPort(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    return v0

    :cond_0
    const-string/jumbo v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static logFinest(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lsun/net/www/http/HttpClient;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsun/net/www/http/HttpClient;->logger:Lsun/util/logging/PlatformLogger;

    invoke-virtual {v0, p0}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected static newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;
    .locals 4

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v2

    :cond_1
    if-gez p1, :cond_2

    invoke-static {p2}, Lsun/net/www/http/HttpClient;->getDefaultPort(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v2, v3, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v2

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method private parseHTTPHeader(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I

    const/16 v22, 0x0

    const/16 v3, 0x8

    new-array v2, v3, [B

    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    :goto_0
    const/16 v3, 0x8

    move/from16 v0, v17

    if-ge v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    rsub-int/lit8 v4, v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v19

    if-gez v19, :cond_5

    :cond_0
    const/16 v16, 0x0

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    const/16 v4, 0x48

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_7

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_7

    const/4 v3, 0x3

    aget-byte v3, v2, v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_7

    const/4 v3, 0x4

    aget-byte v3, v2, v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_7

    const/4 v3, 0x5

    aget-byte v3, v2, v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_7

    const/4 v3, 0x6

    aget-byte v3, v2, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_6

    const/16 v22, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->parseHeader(Ljava/io/InputStream;)V

    invoke-virtual/range {p3 .. p3}, Lsun/net/www/protocol/http/HttpURLConnection;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-static {v3}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v24

    if-eqz v24, :cond_1

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/MessageHeader;->getHeaders()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v3}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "Proxy-Connection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_2
    if-nez v16, :cond_3

    const-string/jumbo v3, "Connection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_3
    if-eqz v16, :cond_a

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "keep-alive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v18, Lsun/net/www/HeaderParser;

    const-string/jumbo v3, "Keep-Alive"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lsun/net/www/HeaderParser;-><init>(Ljava/lang/String;)V

    if-eqz v18, :cond_4

    const-string/jumbo v4, "max"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-eqz v3, :cond_8

    const/16 v3, 0x32

    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Lsun/net/www/HeaderParser;->findInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    const-string/jumbo v4, "timeout"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-eqz v3, :cond_9

    const/16 v3, 0x3c

    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Lsun/net/www/HeaderParser;->findInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_4
    const/4 v10, -0x1

    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v21

    const/16 v3, 0x20

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    :goto_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_11

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_5
    add-int v17, v17, v19

    goto/16 :goto_0

    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_1

    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x5

    goto :goto_2

    :cond_9
    const/4 v3, 0x5

    goto :goto_3

    :cond_a
    const/4 v3, 0x7

    :try_start_2
    aget-byte v3, v2, v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_4

    if-eqz v16, :cond_b

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v12

    throw v12

    :cond_b
    const/4 v3, 0x5

    :try_start_3
    move-object/from16 v0, p0

    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    goto :goto_4

    :cond_c
    const/16 v3, 0x8

    move/from16 v0, v17

    if-eq v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CONNECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual/range {p3 .. p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "POST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-boolean v3, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->streaming:Z

    if-eqz v3, :cond_e

    :cond_d
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Unexpected end of file from server"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->closeServer()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->openServer()V

    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->needsTunneling()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p3 .. p3}, Lsun/net/www/protocol/http/HttpURLConnection;->doTunneling()V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->afterConnect()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V

    invoke-virtual/range {p0 .. p3}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    move-result v3

    return v3

    :cond_10
    const-string/jumbo v3, "Content-type"

    const-string/jumbo v4, "unknown/unknown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :cond_11
    add-int/lit8 v3, v15, 0x3

    :try_start_4
    move-object/from16 v0, v21

    invoke-virtual {v0, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v10

    :goto_6
    const/16 v3, 0x64

    if-ne v10, v3, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    if-eqz v3, :cond_12

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/MessageHeader;->reset()V

    invoke-direct/range {p0 .. p3}, Lsun/net/www/http/HttpClient;->parseHTTPHeader(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    move-result v3

    return v3

    :cond_12
    const-wide/16 v6, -0x1

    const-string/jumbo v3, "Transfer-Encoding"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_17

    const-string/jumbo v3, "chunked"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lsun/net/www/http/ChunkedInputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v4, v0, v1}, Lsun/net/www/http/ChunkedInputStream;-><init>(Ljava/io/InputStream;Lsun/net/www/http/HttpClient;Lsun/net/www/MessageHeader;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_16

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    :cond_13
    :goto_8
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-lez v3, :cond_21

    if-eqz p2, :cond_14

    const-string/jumbo v3, "content-type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lsun/net/ProgressSource;->setContentType(Ljava/lang/String;)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    move-result v3

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "KeepAlive stream used: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/net/www/http/HttpClient;->logFinest(Ljava/lang/String;)V

    new-instance v3, Lsun/net/www/http/KeepAliveStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    move-object/from16 v5, p2

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lsun/net/www/http/KeepAliveStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;JLsun/net/www/http/HttpClient;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    :cond_15
    :goto_9
    return v22

    :cond_16
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    goto :goto_7

    :cond_17
    const-string/jumbo v3, "content-length"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_18

    :try_start_5
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-wide v6

    :cond_18
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_19

    const-string/jumbo v3, "HEAD"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_19
    const/16 v3, 0x130

    if-ne v10, v3, :cond_1d

    :cond_1a
    :goto_b
    const-wide/16 v6, 0x0

    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1f

    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-gez v3, :cond_1c

    const/16 v3, 0x130

    if-ne v10, v3, :cond_1e

    :cond_1c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    goto/16 :goto_8

    :catch_1
    move-exception v14

    const-wide/16 v6, -0x1

    goto :goto_a

    :cond_1d
    const/16 v3, 0xcc

    if-ne v10, v3, :cond_1b

    goto :goto_b

    :cond_1e
    const/16 v3, 0xcc

    if-eq v10, v3, :cond_1c

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    goto/16 :goto_8

    :cond_20
    new-instance v3, Lsun/net/www/MeteredStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    move-object/from16 v0, p2

    invoke-direct {v3, v4, v0, v6, v7}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    goto :goto_9

    :cond_21
    const-wide/16 v4, -0x1

    cmp-long v3, v6, v4

    if-nez v3, :cond_22

    if-eqz p2, :cond_15

    const-string/jumbo v3, "content-type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lsun/net/ProgressSource;->setContentType(Ljava/lang/String;)V

    new-instance v3, Lsun/net/www/MeteredStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    move-object/from16 v0, p2

    invoke-direct {v3, v4, v0, v6, v7}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    goto/16 :goto_9

    :cond_22
    if-eqz p2, :cond_15

    invoke-virtual/range {p2 .. p2}, Lsun/net/ProgressSource;->finishTracking()V

    goto/16 :goto_9

    :catch_2
    move-exception v13

    goto/16 :goto_6
.end method

.method private declared-synchronized privilegedOpenServer(Ljava/net/InetSocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Lsun/net/www/http/HttpClient$1;

    invoke-direct {v1, p0, p1}, Lsun/net/www/http/HttpClient$1;-><init>(Lsun/net/www/http/HttpClient;Ljava/net/InetSocketAddress;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized resetProperties()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lsun/net/www/http/HttpClient;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private superOpenServer(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lsun/net/NetworkClient;->openServer(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public afterConnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    return-void
.end method

.method protected declared-synchronized available()Z
    .locals 9

    const/4 v8, -0x1

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v3, -0x1

    :try_start_0
    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getSoTimeout()I

    move-result v3

    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    if-ne v4, v8, :cond_0

    const-string/jumbo v6, "HttpClient.available(): read returned -1: not available"

    invoke-static {v6}, Lsun/net/www/http/HttpClient;->logFinest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :cond_0
    if-eq v3, v8, :cond_1

    :try_start_1
    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v6, "HttpClient.available(): SocketTimeout: its available"

    invoke-static {v6}, Lsun/net/www/http/HttpClient;->logFinest(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v3, v8, :cond_1

    :try_start_3
    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_4
    const-string/jumbo v6, "HttpClient.available(): SocketException: not available"

    invoke-static {v6}, Lsun/net/www/http/HttpClient;->logFinest(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eq v3, v8, :cond_2

    :try_start_5
    iget-object v7, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v7, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_2
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public closeIdleConnection()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lsun/net/www/http/HttpClient;->kac:Lsun/net/www/http/KeepAliveCache;

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v1, v2, v3}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    :cond_0
    return-void
.end method

.method public closeServer()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    iget-object v1, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public finished()V
    .locals 1

    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->reuse:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    iget v0, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->checkError()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->closeServer()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->putInKeepAliveCache()V

    goto :goto_0
.end method

.method getCacheRequest()Ljava/net/CacheRequest;
    .locals 1

    iget-object v0, p0, Lsun/net/www/http/HttpClient;->cacheRequest:Ljava/net/CacheRequest;

    return-object v0
.end method

.method protected getDefaultPort()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public getHttpKeepAliveSet()Z
    .locals 1

    sget-boolean v0, Lsun/net/www/http/HttpClient;->keepAliveProp:Z

    return v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getKeepAliveTimeout()I
    .locals 1

    iget v0, p0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getProxyHostUsed()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyPortUsed()I
    .locals 1

    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getRequestMethod()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, v2}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getURLFile()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v0, "/"

    :cond_1
    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->proxyDisabled:Z

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string/jumbo v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    new-instance v2, Ljava/net/MalformedURLException;

    const-string/jumbo v3, "Illegal character in URL"

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized isCachedConnection()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized isInKeepAliveCache()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isKeepingAlive()Z
    .locals 1

    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->getHttpKeepAliveSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsTunneling()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized openServer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    iget v2, p0, Lsun/net/www/http/HttpClient;->port:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    :cond_0
    iget-boolean v1, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    invoke-static {v1}, Lsun/net/www/URLConnection;->setProxiedHost(Ljava/lang/String;)V

    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v1}, Lsun/net/www/http/HttpClient;->privilegedOpenServer(Ljava/net/InetSocketAddress;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    iget v2, p0, Lsun/net/www/http/HttpClient;->port:I

    invoke-virtual {p0, v1, v2}, Lsun/net/www/http/HttpClient;->openServer(Ljava/lang/String;I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    invoke-static {v1}, Lsun/net/www/URLConnection;->setProxiedHost(Ljava/lang/String;)V

    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v1}, Lsun/net/www/http/HttpClient;->privilegedOpenServer(Ljava/net/InetSocketAddress;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    iget v2, p0, Lsun/net/www/http/HttpClient;->port:I

    invoke-super {p0, v1, v2}, Lsun/net/NetworkClient;->openServer(Ljava/lang/String;I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public openServer(Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lsun/net/NetworkClient;->doConnect(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    :try_start_0
    iget-object v3, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v3, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    if-eqz v3, :cond_0

    new-instance v2, Lsun/net/www/http/HttpCaptureOutputStream;

    iget-object v3, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    invoke-direct {v2, v1, v3}, Lsun/net/www/http/HttpCaptureOutputStream;-><init>(Ljava/io/OutputStream;Lsun/net/www/http/HttpCapture;)V

    move-object v1, v2

    :cond_0
    new-instance v3, Ljava/io/PrintStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v5, Lsun/net/www/http/HttpClient;->encoding:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v3, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/InternalError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lsun/net/www/http/HttpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " encoding not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    if-eqz v2, :cond_0

    new-instance v2, Lsun/net/www/http/HttpCaptureInputStream;

    iget-object v3, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    iget-object v4, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    invoke-direct {v2, v3, v4}, Lsun/net/www/http/HttpCaptureInputStream;-><init>(Ljava/io/InputStream;Lsun/net/www/http/HttpCapture;)V

    iput-object v2, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    invoke-direct {p0, p1, p2, p3}, Lsun/net/www/http/HttpClient;->parseHTTPHeader(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->closeServer()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "CONNECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->streaming:Z

    if-eqz v2, :cond_2

    :cond_1
    throw v0

    :cond_2
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->openServer()V

    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->needsTunneling()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p3}, Lsun/net/www/protocol/http/HttpURLConnection;->doTunneling()V

    :cond_3
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->afterConnect()V

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    iget-object v3, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    invoke-virtual {p0, v2, v3}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V

    invoke-virtual {p0, p1, p2, p3}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    move-result v2

    return v2

    :catch_1
    move-exception v1

    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->closeServer()V

    :cond_4
    throw v1
.end method

.method protected declared-synchronized putInKeepAliveCache()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lsun/net/www/http/HttpClient;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Duplicate put to keep alive cache"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z

    sget-object v0, Lsun/net/www/http/HttpClient;->kac:Lsun/net/www/http/KeepAliveCache;

    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lsun/net/www/http/KeepAliveCache;->put(Ljava/net/URL;Ljava/lang/Object;Lsun/net/www/http/HttpClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setCacheRequest(Ljava/net/CacheRequest;)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/http/HttpClient;->cacheRequest:Ljava/net/CacheRequest;

    return-void
.end method

.method public setDoNotRetry(Z)V
    .locals 0

    iput-boolean p1, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    return-void
.end method

.method public setIgnoreContinue(Z)V
    .locals 0

    iput-boolean p1, p0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeRequests(Lsun/net/www/MessageHeader;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    iget-object v0, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    iget-object v1, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lsun/net/www/MessageHeader;->print(Ljava/io/PrintStream;)V

    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    iget-object v0, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    iget-object v1, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lsun/net/www/MessageHeader;->print(Ljava/io/PrintStream;)V

    iput-object p2, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    iget-object v0, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    iget-object v1, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    :cond_0
    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-boolean p3, p0, Lsun/net/www/http/HttpClient;->streaming:Z

    invoke-virtual {p0, p1, p2}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V

    return-void
.end method
