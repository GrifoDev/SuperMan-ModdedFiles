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

    .prologue
    const/4 v3, 0x1

    const-class v2, Lsun/net/www/http/HttpClient;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lsun/net/www/http/HttpClient;->-assertionsDisabled:Z

    .line 93
    new-instance v2, Lsun/net/www/http/KeepAliveCache;

    invoke-direct {v2}, Lsun/net/www/http/KeepAliveCache;-><init>()V

    sput-object v2, Lsun/net/www/http/HttpClient;->kac:Lsun/net/www/http/KeepAliveCache;

    .line 95
    sput-boolean v3, Lsun/net/www/http/HttpClient;->keepAliveProp:Z

    .line 99
    sput-boolean v3, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    .line 126
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    sput-object v2, Lsun/net/www/http/HttpClient;->logger:Lsun/util/logging/PlatformLogger;

    .line 147
    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "http.keepAlive"

    invoke-direct {v2, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    .local v0, "keepAlive":Ljava/lang/String;
    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "sun.net.http.retryPost"

    invoke-direct {v2, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    .local v1, "retryPost":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lsun/net/www/http/HttpClient;->keepAliveProp:Z

    .line 158
    :goto_1
    if-eqz v1, :cond_2

    .line 159
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    .line 45
    :goto_2
    return-void

    .end local v0    # "keepAlive":Ljava/lang/String;
    .end local v1    # "retryPost":Ljava/lang/String;
    :cond_0
    move v2, v3

    goto :goto_0

    .line 155
    .restart local v0    # "keepAlive":Ljava/lang/String;
    .restart local v1    # "retryPost":Ljava/lang/String;
    :cond_1
    sput-boolean v3, Lsun/net/www/http/HttpClient;->keepAliveProp:Z

    goto :goto_1

    .line 161
    :cond_2
    sput-boolean v3, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    goto :goto_2
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Lsun/net/NetworkClient;-><init>()V

    .line 47
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    .line 55
    iput-object v2, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    .line 61
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    .line 87
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    .line 101
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    .line 112
    iput v1, p0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I

    .line 115
    iput-object v2, p0, Lsun/net/www/http/HttpClient;->cacheRequest:Ljava/net/CacheRequest;

    .line 121
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->reuse:Z

    .line 124
    iput-object v2, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    .line 174
    return-void
.end method

.method private constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    nop

    nop

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/lang/String;IZ)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/lang/String;IZ)V

    .line 196
    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "proxyDisabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    if-eqz p4, :cond_0

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 239
    :goto_0
    const/4 v1, -0x1

    .line 238
    invoke-direct {p0, p1, v0, v1}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/net/Proxy;I)V

    .line 237
    return-void

    .line 239
    :cond_0
    const-string/jumbo v0, "http"

    invoke-static {p2, p3, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;IZI)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "proxyDisabled"    # Z
    .param p5, "to"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    if-eqz p4, :cond_0

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :goto_0
    invoke-direct {p0, p1, v0, p5}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/net/Proxy;I)V

    .line 244
    return-void

    .line 246
    :cond_0
    const-string/jumbo v0, "http"

    invoke-static {p2, p3, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;I)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "to"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Lsun/net/NetworkClient;-><init>()V

    .line 47
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    .line 55
    iput-object v2, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    .line 61
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    .line 87
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    .line 101
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    .line 102
    iput v3, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    .line 112
    iput v1, p0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I

    .line 115
    iput-object v2, p0, Lsun/net/www/http/HttpClient;->cacheRequest:Ljava/net/CacheRequest;

    .line 121
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->reuse:Z

    .line 124
    iput-object v2, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    .line 201
    if-nez p2, :cond_0

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .end local p2    # "p":Ljava/net/Proxy;
    :cond_0
    iput-object p2, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    .line 202
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    .line 203
    iput-object p1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    .line 204
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lsun/net/www/http/HttpClient;->port:I

    .line 205
    iget v0, p0, Lsun/net/www/http/HttpClient;->port:I

    if-ne v0, v3, :cond_1

    .line 206
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lsun/net/www/http/HttpClient;->port:I

    .line 208
    :cond_1
    invoke-virtual {p0, p3}, Lsun/net/NetworkClient;->setConnectTimeout(I)V

    .line 210
    invoke-static {p1}, Lsun/net/www/http/HttpCapture;->getCapture(Ljava/net/URL;)Lsun/net/www/http/HttpCapture;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    .line 211
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->openServer()V

    .line 200
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Z)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyDisabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/lang/String;IZ)V

    .line 183
    return-void
.end method

.method public static New(Ljava/net/URL;)Lsun/net/www/http/HttpClient;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
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
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    const-string/jumbo v0, "http"

    invoke-static {p1, p2, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    .line 333
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 332
    invoke-static {p0, v0, v1, p3, v2}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static New(Ljava/net/URL;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "useCache"    # Z
    .param p4, "to"    # I
    .param p5, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    const-string/jumbo v0, "http"

    invoke-static {p1, p2, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    invoke-static {p0, v0, p4, p3, p5}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static New(Ljava/net/URL;Ljava/net/Proxy;ILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "p"    # Ljava/net/Proxy;
    .param p2, "to"    # I
    .param p3, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 5
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "p"    # Ljava/net/Proxy;
    .param p2, "to"    # I
    .param p3, "useCache"    # Z
    .param p4, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 266
    if-nez p1, :cond_0

    .line 267
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 269
    :cond_0
    const/4 v0, 0x0

    .line 271
    .local v0, "ret":Lsun/net/www/http/HttpClient;
    if-eqz p3, :cond_6

    .line 272
    sget-object v2, Lsun/net/www/http/HttpClient;->kac:Lsun/net/www/http/KeepAliveCache;

    invoke-virtual {v2, p0, v3}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    .line 273
    .local v0, "ret":Lsun/net/www/http/HttpClient;
    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 274
    invoke-virtual {p4}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v2

    .line 273
    if-eqz v2, :cond_1

    .line 275
    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "POST"

    if-ne v2, v3, :cond_1

    .line 276
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->available()Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    iput-boolean v4, v0, Lsun/net/www/http/HttpClient;->inCache:Z

    .line 278
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    .line 279
    const/4 v0, 0x0

    .line 283
    .end local v0    # "ret":Lsun/net/www/http/HttpClient;
    :cond_1
    if-eqz v0, :cond_6

    .line 284
    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2, p1}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 285
    :cond_2
    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-nez v2, :cond_7

    if-nez p1, :cond_7

    .line 286
    :cond_3
    monitor-enter v0

    .line 287
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    .line 288
    sget-boolean v2, Lsun/net/www/http/HttpClient;->-assertionsDisabled:Z

    if-nez v2, :cond_4

    iget-boolean v2, v0, Lsun/net/www/http/HttpClient;->inCache:Z

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    .line 289
    :cond_4
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, v0, Lsun/net/www/http/HttpClient;->inCache:Z

    .line 290
    if-eqz p4, :cond_5

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->needsTunneling()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 291
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    invoke-virtual {p4, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V

    .line 292
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

    .line 307
    :cond_6
    :goto_0
    if-nez v0, :cond_8

    .line 308
    new-instance v0, Lsun/net/www/http/HttpClient;

    invoke-direct {v0, p0, p1, p2}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/net/Proxy;I)V

    .line 320
    :goto_1
    return-object v0

    .line 299
    :cond_7
    monitor-enter v0

    .line 300
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, v0, Lsun/net/www/http/HttpClient;->inCache:Z

    .line 301
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    .line 303
    const/4 v0, 0x0

    .local v0, "ret":Lsun/net/www/http/HttpClient;
    goto :goto_0

    .line 299
    .end local v0    # "ret":Lsun/net/www/http/HttpClient;
    :catchall_1
    move-exception v2

    monitor-exit v0

    throw v2

    .line 310
    :cond_8
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 311
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_a

    .line 312
    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eq v2, v3, :cond_9

    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-nez v2, :cond_b

    .line 313
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

    .line 318
    :cond_a
    :goto_2
    iput-object p0, v0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    goto :goto_1

    .line 315
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
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultPort(Ljava/lang/String;)I
    .locals 1
    .param p0, "proto"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string/jumbo v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/16 v0, 0x50

    return v0

    .line 76
    :cond_0
    const-string/jumbo v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/16 v0, 0x1bb

    return v0

    .line 78
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static logFinest(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v0, Lsun/net/www/http/HttpClient;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lsun/net/www/http/HttpClient;->logger:Lsun/util/logging/PlatformLogger;

    invoke-virtual {v0, p0}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method protected static newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;
    .locals 4
    .param p0, "proxyHost"    # Ljava/lang/String;
    .param p1, "proxyPort"    # I
    .param p2, "proto"    # Ljava/lang/String;

    .prologue
    .line 216
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 217
    :cond_0
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v2

    .line 218
    :cond_1
    if-gez p1, :cond_2

    invoke-static {p2}, Lsun/net/www/http/HttpClient;->getDefaultPort(Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, "pport":I
    :goto_0
    invoke-static {p0, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 220
    .local v1, "saddr":Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v2, v3, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v2

    .end local v0    # "pport":I
    .end local v1    # "saddr":Ljava/net/InetSocketAddress;
    :cond_2
    move v0, p1

    .line 218
    goto :goto_0
.end method

.method private parseHTTPHeader(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z
    .locals 25
    .param p1, "responses"    # Lsun/net/www/MessageHeader;
    .param p2, "pi"    # Lsun/net/ProgressSource;
    .param p3, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    .line 678
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I

    .line 680
    const/16 v22, 0x0

    .line 681
    .local v22, "ret":Z
    const/16 v3, 0x8

    new-array v2, v3, [B

    .line 684
    .local v2, "b":[B
    const/16 v17, 0x0

    .line 685
    .local v17, "nread":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    .line 686
    :goto_0
    const/16 v3, 0x8

    move/from16 v0, v17

    if-ge v0, v3, :cond_0

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    rsub-int/lit8 v4, v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v19

    .line 688
    .local v19, "r":I
    if-gez v19, :cond_5

    .line 693
    .end local v19    # "r":I
    :cond_0
    const/16 v16, 0x0

    .line 694
    .local v16, "keep":Ljava/lang/String;
    const/4 v3, 0x0

    aget-byte v3, v2, v3

    const/16 v4, 0x48

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_7

    .line 695
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

    .line 696
    const/4 v3, 0x5

    aget-byte v3, v2, v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_7

    const/4 v3, 0x6

    aget-byte v3, v2, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_6

    const/16 v22, 0x1

    .line 697
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 698
    if-eqz v22, :cond_c

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->parseHeader(Ljava/io/InputStream;)V

    .line 703
    invoke-virtual/range {p3 .. p3}, Lsun/net/www/protocol/http/HttpURLConnection;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v11

    .line 704
    .local v11, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v11, :cond_1

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-static {v3}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v24

    .line 710
    .local v24, "uri":Ljava/net/URI;
    if-eqz v24, :cond_1

    .line 711
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/MessageHeader;->getHeaders()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v3}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 720
    .end local v24    # "uri":Ljava/net/URI;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-eqz v3, :cond_2

    .line 721
    const-string/jumbo v3, "Proxy-Connection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 723
    .end local v16    # "keep":Ljava/lang/String;
    :cond_2
    if-nez v16, :cond_3

    .line 724
    const-string/jumbo v3, "Connection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 726
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

    .line 730
    new-instance v18, Lsun/net/www/HeaderParser;

    .line 731
    const-string/jumbo v3, "Keep-Alive"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 730
    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lsun/net/www/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 732
    .local v18, "p":Lsun/net/www/HeaderParser;
    if-eqz v18, :cond_4

    .line 734
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

    .line 735
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

    .line 781
    .end local v11    # "cookieHandler":Ljava/net/CookieHandler;
    .end local v18    # "p":Lsun/net/www/HeaderParser;
    :cond_4
    :goto_4
    const/4 v10, -0x1

    .line 784
    .local v10, "code":I
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v21

    .line 790
    .local v21, "resp":Ljava/lang/String;
    const/16 v3, 0x20

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 791
    .local v15, "ind":I
    :goto_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_11

    .line 792
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 691
    .end local v10    # "code":I
    .end local v15    # "ind":I
    .end local v21    # "resp":Ljava/lang/String;
    .restart local v19    # "r":I
    :cond_5
    add-int v17, v17, v19

    goto/16 :goto_0

    .line 696
    .end local v19    # "r":I
    .restart local v16    # "keep":Ljava/lang/String;
    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 694
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 734
    .end local v16    # "keep":Ljava/lang/String;
    .restart local v11    # "cookieHandler":Ljava/net/CookieHandler;
    .restart local v18    # "p":Lsun/net/www/HeaderParser;
    :cond_8
    const/4 v3, 0x5

    goto :goto_2

    .line 735
    :cond_9
    const/4 v3, 0x5

    goto :goto_3

    .line 737
    .end local v18    # "p":Lsun/net/www/HeaderParser;
    :cond_a
    const/4 v3, 0x7

    :try_start_2
    aget-byte v3, v2, v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_4

    .line 742
    if-eqz v16, :cond_b

    .line 748
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 777
    .end local v11    # "cookieHandler":Ljava/net/CookieHandler;
    :catch_0
    move-exception v12

    .line 778
    .local v12, "e":Ljava/io/IOException;
    throw v12

    .line 750
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v11    # "cookieHandler":Ljava/net/CookieHandler;
    :cond_b
    const/4 v3, 0x5

    :try_start_3
    move-object/from16 v0, p0

    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    goto :goto_4

    .line 753
    .end local v11    # "cookieHandler":Ljava/net/CookieHandler;
    .restart local v16    # "keep":Ljava/lang/String;
    :cond_c
    const/16 v3, 0x8

    move/from16 v0, v17

    if-eq v0, v3, :cond_10

    .line 754
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    if-eqz v3, :cond_d

    .line 755
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    .line 756
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CONNECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 757
    invoke-virtual/range {p3 .. p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "POST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 758
    sget-boolean v3, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->streaming:Z

    .line 756
    if-eqz v3, :cond_e

    .line 772
    :cond_d
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Unexpected end of file from server"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 761
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->closeServer()V

    .line 762
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    .line 763
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->openServer()V

    .line 764
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->needsTunneling()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 765
    invoke-virtual/range {p3 .. p3}, Lsun/net/www/protocol/http/HttpURLConnection;->doTunneling()V

    .line 767
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->afterConnect()V

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V

    .line 769
    invoke-virtual/range {p0 .. p3}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    move-result v3

    return v3

    .line 775
    :cond_10
    const-string/jumbo v3, "Content-type"

    const-string/jumbo v4, "unknown/unknown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 793
    .end local v16    # "keep":Ljava/lang/String;
    .restart local v10    # "code":I
    .restart local v15    # "ind":I
    .restart local v21    # "resp":Ljava/lang/String;
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

    .line 796
    .end local v15    # "ind":I
    .end local v21    # "resp":Ljava/lang/String;
    :goto_6
    const/16 v3, 0x64

    if-ne v10, v3, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    if-eqz v3, :cond_12

    .line 797
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/MessageHeader;->reset()V

    .line 798
    invoke-direct/range {p0 .. p3}, Lsun/net/www/http/HttpClient;->parseHTTPHeader(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    move-result v3

    return v3

    .line 801
    :cond_12
    const-wide/16 v6, -0x1

    .line 809
    .local v6, "cl":J
    const-string/jumbo v3, "Transfer-Encoding"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 810
    .local v23, "te":Ljava/lang/String;
    if-eqz v23, :cond_17

    const-string/jumbo v3, "chunked"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 811
    new-instance v3, Lsun/net/www/http/ChunkedInputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v4, v0, v1}, Lsun/net/www/http/ChunkedInputStream;-><init>(Ljava/io/InputStream;Lsun/net/www/http/HttpClient;Lsun/net/www/MessageHeader;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    .line 817
    move-object/from16 v0, p0

    iget v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_16

    .line 818
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    .line 819
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    .line 823
    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    .line 867
    :cond_13
    :goto_8
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-lez v3, :cond_21

    .line 871
    if-eqz p2, :cond_14

    .line 873
    const-string/jumbo v3, "content-type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lsun/net/ProgressSource;->setContentType(Ljava/lang/String;)V

    .line 876
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 878
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

    .line 879
    new-instance v3, Lsun/net/www/http/KeepAliveStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    move-object/from16 v5, p2

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lsun/net/www/http/KeepAliveStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;JLsun/net/www/http/HttpClient;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    .line 880
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    .line 912
    :cond_15
    :goto_9
    return v22

    .line 821
    :cond_16
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    goto :goto_7

    .line 833
    :cond_17
    const-string/jumbo v3, "content-length"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 834
    .local v9, "cls":Ljava/lang/String;
    if-eqz v9, :cond_18

    .line 836
    :try_start_5
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-wide v6

    .line 841
    :cond_18
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    move-result-object v20

    .line 843
    .local v20, "requestLine":Ljava/lang/String;
    if-eqz v20, :cond_19

    .line 844
    const-string/jumbo v3, "HEAD"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 843
    if-nez v3, :cond_1a

    .line 845
    :cond_19
    const/16 v3, 0x130

    if-ne v10, v3, :cond_1d

    .line 847
    :cond_1a
    :goto_b
    const-wide/16 v6, 0x0

    .line 850
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1f

    .line 851
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-gez v3, :cond_1c

    .line 852
    const/16 v3, 0x130

    if-ne v10, v3, :cond_1e

    .line 854
    :cond_1c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    .line 855
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    goto/16 :goto_8

    .line 837
    .end local v20    # "requestLine":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 838
    .local v14, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v6, -0x1

    goto :goto_a

    .line 846
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    .restart local v20    # "requestLine":Ljava/lang/String;
    :cond_1d
    const/16 v3, 0xcc

    if-ne v10, v3, :cond_1b

    goto :goto_b

    .line 853
    :cond_1e
    const/16 v3, 0xcc

    if-eq v10, v3, :cond_1c

    .line 856
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    if-eqz v3, :cond_13

    .line 861
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    goto/16 :goto_8

    .line 883
    .end local v9    # "cls":Ljava/lang/String;
    .end local v20    # "requestLine":Ljava/lang/String;
    :cond_20
    new-instance v3, Lsun/net/www/MeteredStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    move-object/from16 v0, p2

    invoke-direct {v3, v4, v0, v6, v7}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    goto :goto_9

    .line 886
    :cond_21
    const-wide/16 v4, -0x1

    cmp-long v3, v6, v4

    if-nez v3, :cond_22

    .line 891
    if-eqz p2, :cond_15

    .line 894
    const-string/jumbo v3, "content-type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lsun/net/ProgressSource;->setContentType(Ljava/lang/String;)V

    .line 898
    new-instance v3, Lsun/net/www/MeteredStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    move-object/from16 v0, p2

    invoke-direct {v3, v4, v0, v6, v7}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    goto/16 :goto_9

    .line 908
    :cond_22
    if-eqz p2, :cond_15

    .line 909
    invoke-virtual/range {p2 .. p2}, Lsun/net/ProgressSource;->finishTracking()V

    goto/16 :goto_9

    .line 794
    .end local v6    # "cl":J
    .end local v23    # "te":Ljava/lang/String;
    :catch_2
    move-exception v13

    .local v13, "e":Ljava/lang/Exception;
    goto/16 :goto_6
.end method

.method private declared-synchronized privilegedOpenServer(Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "server"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 482
    :try_start_0
    new-instance v1, Lsun/net/www/http/HttpClient$1;

    invoke-direct {v1, p0, p1}, Lsun/net/www/http/HttpClient$1;-><init>(Lsun/net/www/http/HttpClient;Ljava/net/InetSocketAddress;)V

    .line 481
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 478
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    :try_start_1
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "pae":Ljava/security/PrivilegedActionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized resetProperties()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-class v0, Lsun/net/www/http/HttpClient;

    monitor-enter v0

    monitor-exit v0

    .line 138
    return-void
.end method

.method private superOpenServer(Ljava/lang/String;I)V
    .locals 0
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-super {p0, p1, p2}, Lsun/net/NetworkClient;->openServer(Ljava/lang/String;I)V

    .line 498
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

    .prologue
    .line 470
    return-void
.end method

.method protected declared-synchronized available()Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    monitor-enter p0

    .line 371
    const/4 v0, 0x1

    .line 372
    .local v0, "available":Z
    const/4 v3, -0x1

    .line 376
    .local v3, "old":I
    :try_start_0
    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getSoTimeout()I

    move-result v3

    .line 377
    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 379
    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 380
    .local v5, "tmpbuf":Ljava/io/BufferedInputStream;
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    .line 381
    .local v4, "r":I
    if-ne v4, v8, :cond_0

    .line 382
    const-string/jumbo v6, "HttpClient.available(): read returned -1: not available"

    invoke-static {v6}, Lsun/net/www/http/HttpClient;->logFinest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    const/4 v0, 0x0

    .line 390
    :cond_0
    if-eq v3, v8, :cond_1

    .line 391
    :try_start_1
    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "r":I
    .end local v5    # "tmpbuf":Ljava/io/BufferedInputStream;
    :cond_1
    :goto_0
    monitor-exit p0

    .line 398
    return v0

    .line 386
    :catch_0
    move-exception v2

    .line 387
    .local v2, "e":Ljava/net/SocketTimeoutException;
    :try_start_2
    const-string/jumbo v6, "HttpClient.available(): SocketTimeout: its available"

    invoke-static {v6}, Lsun/net/www/http/HttpClient;->logFinest(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    if-eq v3, v8, :cond_1

    .line 391
    :try_start_3
    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 393
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v1

    .line 394
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v6, "HttpClient.available(): SocketException: not available"

    invoke-static {v6}, Lsun/net/www/http/HttpClient;->logFinest(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 396
    const/4 v0, 0x0

    goto :goto_0

    .line 389
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 390
    if-eq v3, v8, :cond_2

    .line 391
    :try_start_5
    iget-object v7, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v7, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 389
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

    .prologue
    const/4 v3, 0x0

    .line 419
    sget-object v1, Lsun/net/www/http/HttpClient;->kac:Lsun/net/www/http/KeepAliveCache;

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v1, v2, v3}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    .line 420
    .local v0, "http":Lsun/net/www/http/HttpClient;
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    .line 418
    :cond_0
    return-void
.end method

.method public closeServer()V
    .locals 2

    .prologue
    .line 969
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    .line 970
    iget-object v1, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    :goto_0
    return-void

    .line 971
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 951
    return-void
.end method

.method public finished()V
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->reuse:Z

    if-eqz v0, :cond_0

    .line 356
    return-void

    .line 357
    :cond_0
    iget v0, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    .line 359
    iget v0, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->checkError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    :cond_1
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->closeServer()V

    .line 354
    :goto_0
    return-void

    .line 364
    :cond_2
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->putInKeepAliveCache()V

    goto :goto_0
.end method

.method getCacheRequest()Ljava/net/CacheRequest;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lsun/net/www/http/HttpClient;->cacheRequest:Ljava/net/CacheRequest;

    return-object v0
.end method

.method protected getDefaultPort()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x50

    return v0
.end method

.method public getHttpKeepAliveSet()Z
    .locals 1

    .prologue
    .line 170
    sget-boolean v0, Lsun/net/www/http/HttpClient;->keepAliveProp:Z

    return v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    monitor-enter p0

    .line 916
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

    .prologue
    .line 142
    iget v0, p0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getProxyHostUsed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 979
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-nez v0, :cond_0

    .line 980
    const/4 v0, 0x0

    return-object v0

    .line 982
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

    .prologue
    .line 991
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    .line 993
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getRequestMethod()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 941
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    if-eqz v1, :cond_0

    .line 942
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, v2}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, "requestLine":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 944
    const-string/jumbo v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    return-object v1

    .line 947
    .end local v0    # "requestLine":Ljava/lang/String;
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

    .prologue
    .line 552
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 554
    :cond_0
    const-string/jumbo v0, "/"

    .line 559
    :cond_1
    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->proxyDisabled:Z

    if-eqz v2, :cond_3

    .line 580
    :cond_2
    :goto_0
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 581
    return-object v0

    .line 563
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 564
    .local v1, "result":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
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

    .line 567
    const-string/jumbo v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 568
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    :cond_4
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 571
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    :cond_5
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 574
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 575
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 583
    .end local v1    # "result":Ljava/lang/StringBuffer;
    :cond_7
    new-instance v2, Ljava/net/MalformedURLException;

    const-string/jumbo v3, "Illegal character in URL"

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized isCachedConnection()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 459
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

    .prologue
    monitor-enter p0

    .line 411
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

    .prologue
    .line 929
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

    .prologue
    .line 452
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

    .prologue
    monitor-enter p0

    .line 507
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 509
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    iget v2, p0, Lsun/net/www/http/HttpClient;->port:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 513
    :cond_0
    iget-boolean v1, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    .line 514
    return-void

    .line 517
    :cond_1
    :try_start_1
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 518
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 517
    if-eqz v1, :cond_4

    .line 520
    :cond_2
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_3

    .line 521
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    invoke-static {v1}, Lsun/net/www/URLConnection;->setProxiedHost(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v1}, Lsun/net/www/http/HttpClient;->privilegedOpenServer(Ljava/net/InetSocketAddress;)V

    .line 523
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 524
    return-void

    .line 527
    :cond_3
    :try_start_2
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    iget v2, p0, Lsun/net/www/http/HttpClient;->port:I

    invoke-virtual {p0, v1, v2}, Lsun/net/www/http/HttpClient;->openServer(Ljava/lang/String;I)V

    .line 528
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 529
    return-void

    .line 536
    :cond_4
    :try_start_3
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_5

    .line 537
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    invoke-static {v1}, Lsun/net/www/URLConnection;->setProxiedHost(Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v1}, Lsun/net/www/http/HttpClient;->privilegedOpenServer(Ljava/net/InetSocketAddress;)V

    .line 539
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 540
    return-void

    .line 543
    :cond_5
    :try_start_4
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    iget v2, p0, Lsun/net/www/http/HttpClient;->port:I

    invoke-super {p0, v1, v2}, Lsun/net/NetworkClient;->openServer(Ljava/lang/String;I)V

    .line 544
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 545
    return-void

    .end local v0    # "security":Ljava/lang/SecurityManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public openServer(Ljava/lang/String;I)V
    .locals 7
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0, p1, p2}, Lsun/net/NetworkClient;->doConnect(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    .line 434
    :try_start_0
    iget-object v3, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 435
    .local v1, "out":Ljava/io/OutputStream;
    iget-object v3, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    if-eqz v3, :cond_0

    .line 436
    new-instance v2, Lsun/net/www/http/HttpCaptureOutputStream;

    iget-object v3, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    invoke-direct {v2, v1, v3}, Lsun/net/www/http/HttpCaptureOutputStream;-><init>(Ljava/io/OutputStream;Lsun/net/www/http/HttpCapture;)V

    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    move-object v1, v2

    .line 438
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_0
    new-instance v3, Ljava/io/PrintStream;

    .line 439
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 440
    sget-object v5, Lsun/net/www/http/HttpClient;->encoding:Ljava/lang/String;

    const/4 v6, 0x0

    .line 438
    invoke-direct {v3, v4, v6, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v3, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    iget-object v3, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 431
    return-void

    .line 441
    .end local v1    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
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
    .param p1, "responses"    # Lsun/net/www/MessageHeader;
    .param p2, "pi"    # Lsun/net/ProgressSource;
    .param p3, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    :try_start_0
    iget-object v2, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    .line 629
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    if-eqz v2, :cond_0

    .line 630
    new-instance v2, Lsun/net/www/http/HttpCaptureInputStream;

    iget-object v3, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    iget-object v4, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    invoke-direct {v2, v3, v4}, Lsun/net/www/http/HttpCaptureInputStream;-><init>(Ljava/io/InputStream;Lsun/net/www/http/HttpCapture;)V

    iput-object v2, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    .line 632
    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    .line 633
    invoke-direct {p0, p1, p2, p3}, Lsun/net/www/http/HttpClient;->parseHTTPHeader(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->closeServer()V

    .line 643
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    .line 644
    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    if-eqz v2, :cond_1

    .line 645
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    .line 646
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "CONNECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 647
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 648
    sget-boolean v2, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->streaming:Z

    .line 646
    if-eqz v2, :cond_2

    .line 661
    :cond_1
    throw v0

    .line 652
    :cond_2
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->openServer()V

    .line 653
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->needsTunneling()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 654
    invoke-virtual {p3}, Lsun/net/www/protocol/http/HttpURLConnection;->doTunneling()V

    .line 656
    :cond_3
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->afterConnect()V

    .line 657
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    iget-object v3, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    invoke-virtual {p0, v2, v3}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V

    .line 658
    invoke-virtual {p0, p1, p2, p3}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    move-result v2

    return v2

    .line 634
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 637
    .local v1, "stex":Ljava/net/SocketTimeoutException;
    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    if-eqz v2, :cond_4

    .line 638
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->closeServer()V

    .line 640
    :cond_4
    throw v1
.end method

.method protected declared-synchronized putInKeepAliveCache()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 402
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z

    if-eqz v0, :cond_1

    .line 403
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

    .line 404
    return-void

    .line 406
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z

    .line 407
    sget-object v0, Lsun/net/www/http/HttpClient;->kac:Lsun/net/www/http/KeepAliveCache;

    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lsun/net/www/http/KeepAliveCache;->put(Ljava/net/URL;Ljava/lang/Object;Lsun/net/www/http/HttpClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 401
    return-void
.end method

.method public setCacheRequest(Ljava/net/CacheRequest;)V
    .locals 0
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;

    .prologue
    .line 933
    iput-object p1, p0, Lsun/net/www/http/HttpClient;->cacheRequest:Ljava/net/CacheRequest;

    .line 932
    return-void
.end method

.method public setDoNotRetry(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 958
    iput-boolean p1, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    .line 956
    return-void
.end method

.method public setIgnoreContinue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 962
    iput-boolean p1, p0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    .line 961
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 925
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
    .param p1, "head"    # Lsun/net/www/MessageHeader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 591
    iput-object p1, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    .line 592
    iget-object v0, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    iget-object v1, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lsun/net/www/MessageHeader;->print(Ljava/io/PrintStream;)V

    .line 593
    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 590
    return-void
.end method

.method public writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V
    .locals 2
    .param p1, "head"    # Lsun/net/www/MessageHeader;
    .param p2, "pos"    # Lsun/net/www/http/PosterOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    iput-object p1, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    .line 599
    iget-object v0, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    iget-object v1, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lsun/net/www/MessageHeader;->print(Ljava/io/PrintStream;)V

    .line 600
    iput-object p2, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    .line 601
    iget-object v0, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    iget-object v1, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 603
    :cond_0
    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 597
    return-void
.end method

.method public writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;Z)V
    .locals 0
    .param p1, "head"    # Lsun/net/www/MessageHeader;
    .param p2, "pos"    # Lsun/net/www/http/PosterOutputStream;
    .param p3, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    iput-boolean p3, p0, Lsun/net/www/http/HttpClient;->streaming:Z

    .line 610
    invoke-virtual {p0, p1, p2}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V

    .line 608
    return-void
.end method
