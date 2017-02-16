.class final Lsun/net/www/protocol/https/HttpsClient;
.super Lsun/net/www/http/HttpClient;
.source "HttpsClient.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final defaultHVCanonicalName:Ljava/lang/String; = "javax.net.ssl.DefaultHostnameVerifier"

.field private static final httpsPortNumber:I = 0x1bb


# instance fields
.field private hv:Ljavax/net/ssl/HostnameVerifier;

.field private session:Ljavax/net/ssl/SSLSession;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/https/HttpsClient;->-assertionsDisabled:Z

    .line 109
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;)V
    .locals 2
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v0, 0x0

    nop

    nop

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lsun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;I)V

    .line 230
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;I)V
    .locals 6
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lsun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;II)V

    .line 242
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;II)V
    .locals 1
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 254
    if-nez p3, :cond_0

    .line 253
    :goto_0
    invoke-direct {p0, p1, p2, v0, p5}, Lsun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/net/Proxy;I)V

    .line 252
    return-void

    .line 255
    :cond_0
    invoke-static {p3, p4}, Lsun/net/www/protocol/https/HttpsClient;->newHttpProxy(Ljava/lang/String;I)Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/net/Proxy;I)V
    .locals 2
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0}, Lsun/net/www/http/HttpClient;-><init>()V

    .line 265
    iput-object p3, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    .line 266
    invoke-virtual {p0, p1}, Lsun/net/www/protocol/https/HttpsClient;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->proxyDisabled:Z

    .line 269
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    .line 270
    iput-object p2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    .line 271
    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lsun/net/www/http/HttpClient;->port:I

    .line 272
    iget v0, p0, Lsun/net/www/http/HttpClient;->port:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lsun/net/www/protocol/https/HttpsClient;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lsun/net/www/http/HttpClient;->port:I

    .line 275
    :cond_0
    invoke-virtual {p0, p4}, Lsun/net/NetworkClient;->setConnectTimeout(I)V

    .line 276
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->openServer()V

    .line 264
    return-void
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;ILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "useCache"    # Z
    .param p6, "connectTimeout"    # I
    .param p7, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 320
    if-nez p3, :cond_0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move v5, p6

    move-object v6, p7

    .line 319
    invoke-static/range {v0 .. v6}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;ZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0

    .line 321
    :cond_0
    invoke-static {p3, p4}, Lsun/net/www/protocol/https/HttpsClient;->newHttpProxy(Ljava/lang/String;I)Ljava/net/Proxy;

    move-result-object v3

    goto :goto_0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 8
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "useCache"    # Z
    .param p6, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;ZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 5
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "p"    # Ljava/net/Proxy;
    .param p4, "useCache"    # Z
    .param p5, "connectTimeout"    # I
    .param p6, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    if-nez p3, :cond_0

    .line 331
    sget-object p3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 333
    :cond_0
    const/4 v1, 0x0

    .line 334
    .local v1, "ret":Lsun/net/www/protocol/https/HttpsClient;
    if-eqz p4, :cond_7

    .line 336
    sget-object v3, Lsun/net/www/protocol/https/HttpsClient;->kac:Lsun/net/www/http/KeepAliveCache;

    invoke-virtual {v3, p1, p0}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    move-result-object v1

    .end local v1    # "ret":Lsun/net/www/protocol/https/HttpsClient;
    check-cast v1, Lsun/net/www/protocol/https/HttpsClient;

    .line 337
    .local v1, "ret":Lsun/net/www/protocol/https/HttpsClient;
    if-eqz v1, :cond_1

    if-eqz p6, :cond_1

    .line 338
    invoke-virtual {p6}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v3

    .line 337
    if-eqz v3, :cond_1

    .line 339
    invoke-virtual {p6}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "POST"

    if-ne v3, v4, :cond_1

    .line 340
    invoke-virtual {v1}, Lsun/net/www/http/HttpClient;->available()Z

    move-result v3

    if-nez v3, :cond_1

    .line 341
    const/4 v1, 0x0

    .line 344
    .end local v1    # "ret":Lsun/net/www/protocol/https/HttpsClient;
    :cond_1
    if-eqz v1, :cond_7

    .line 345
    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v3, p3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 346
    :cond_2
    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-nez v3, :cond_8

    if-nez p3, :cond_8

    .line 347
    :cond_3
    monitor-enter v1

    .line 348
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, v1, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    .line 349
    sget-boolean v3, Lsun/net/www/protocol/https/HttpsClient;->-assertionsDisabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lsun/net/www/http/HttpClient;->inCache:Z

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    .line 350
    :cond_4
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v1, Lsun/net/www/http/HttpClient;->inCache:Z

    .line 351
    if-eqz p6, :cond_5

    invoke-virtual {v1}, Lsun/net/www/protocol/https/HttpsClient;->needsTunneling()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 352
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    invoke-virtual {p6, v3}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V

    .line 353
    :cond_5
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    .line 354
    .local v0, "logger":Lsun/util/logging/PlatformLogger;
    const/16 v3, 0x12c

    invoke-virtual {v0, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "KeepAlive stream retrieved from the cache, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit v1

    .line 371
    .end local v0    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_7
    :goto_0
    if-nez v1, :cond_9

    .line 372
    new-instance v1, Lsun/net/www/protocol/https/HttpsClient;

    invoke-direct {v1, p0, p1, p3, p5}, Lsun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/net/Proxy;I)V

    .line 384
    :goto_1
    invoke-virtual {v1, p2}, Lsun/net/www/protocol/https/HttpsClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 386
    return-object v1

    .line 363
    :cond_8
    monitor-enter v1

    .line 364
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, v1, Lsun/net/www/http/HttpClient;->inCache:Z

    .line 365
    invoke-virtual {v1}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 367
    const/4 v1, 0x0

    .local v1, "ret":Lsun/net/www/protocol/https/HttpsClient;
    goto :goto_0

    .line 363
    .end local v1    # "ret":Lsun/net/www/protocol/https/HttpsClient;
    :catchall_1
    move-exception v3

    monitor-exit v1

    throw v3

    .line 374
    :cond_9
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 375
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_b

    .line 376
    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eq v3, v4, :cond_a

    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-nez v3, :cond_c

    .line 377
    :cond_a
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 382
    :cond_b
    :goto_2
    iput-object p1, v1, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    goto :goto_1

    .line 379
    :cond_c
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Lsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 1
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;ZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;ZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "useCache"    # Z
    .param p4, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v3, 0x0

    nop

    nop

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method private checkURLSpoofing(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 10
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 595
    iget-object v7, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, "host":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string/jumbo v7, "["

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 599
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 602
    :cond_0
    const/4 v6, 0x0

    .line 603
    .local v6, "peerCerts":[Ljava/security/cert/Certificate;
    iget-object v7, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "cipher":Ljava/lang/String;
    const/4 v7, 0x1

    .line 605
    :try_start_0
    invoke-static {v7}, Lsun/security/util/HostnameChecker;->getInstance(B)Lsun/security/util/HostnameChecker;

    move-result-object v0

    .line 609
    .local v0, "checker":Lsun/security/util/HostnameChecker;
    const-string/jumbo v7, "TLS_KRB5"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 610
    invoke-virtual {p0}, Lsun/net/www/protocol/https/HttpsClient;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v7

    invoke-static {v4, v7}, Lsun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/Principal;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 611
    new-instance v7, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v8, "Hostname checker failed for Kerberos"

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 632
    .end local v0    # "checker":Lsun/security/util/HostnameChecker;
    .end local v6    # "peerCerts":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v3

    .line 643
    :goto_0
    if-eqz v1, :cond_4

    const-string/jumbo v7, "_anon_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 644
    return-void

    .line 617
    .restart local v0    # "checker":Lsun/security/util/HostnameChecker;
    .restart local v6    # "peerCerts":[Ljava/security/cert/Certificate;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 620
    .local v6, "peerCerts":[Ljava/security/cert/Certificate;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    instance-of v7, v7, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_3

    .line 622
    const/4 v7, 0x0

    aget-object v5, v6, v7

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 626
    .local v5, "peerCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0, v4, v5}, Lsun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 630
    .end local v5    # "peerCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "peerCerts":[Ljava/security/cert/Certificate;
    :cond_2
    return-void

    .line 624
    .restart local v6    # "peerCerts":[Ljava/security/cert/Certificate;
    :cond_3
    new-instance v7, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v8, ""

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 639
    .end local v0    # "checker":Lsun/security/util/HostnameChecker;
    .end local v6    # "peerCerts":[Ljava/security/cert/Certificate;
    :catch_1
    move-exception v2

    .local v2, "cpe":Ljava/security/cert/CertificateException;
    goto :goto_0

    .line 645
    .end local v2    # "cpe":Ljava/security/cert/CertificateException;
    :cond_4
    if-eqz p1, :cond_5

    .line 646
    iget-object v7, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {p1, v4, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v7

    .line 645
    if-eqz v7, :cond_5

    .line 647
    return-void

    .line 650
    :cond_5
    iget-object v7, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V

    .line 651
    iget-object v7, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 653
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HTTPS hostname wrong:  should be <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 654
    iget-object v9, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 653
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 654
    const-string/jumbo v9, ">"

    .line 653
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private getCipherSuites()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 144
    new-instance v5, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v6, "https.cipherSuites"

    invoke-direct {v5, v6}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, "cipherString":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    :cond_0
    const/4 v1, 0x0

    .line 159
    :cond_1
    return-object v1

    .line 150
    :cond_2
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 152
    .local v4, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ","

    invoke-direct {v3, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 156
    .local v1, "ciphers":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 157
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getProtocols()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 168
    new-instance v5, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v6, "https.protocols"

    invoke-direct {v5, v6}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .local v1, "protocolString":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    :cond_0
    const/4 v2, 0x0

    .line 184
    :cond_1
    return-object v2

    .line 174
    :cond_2
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 176
    .local v4, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ","

    invoke-direct {v3, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 178
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 180
    .local v2, "protocols":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_1

    .line 181
    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 189
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "https.agent"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    .local v0, "userAgent":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 191
    :cond_0
    const-string/jumbo v0, "JSSE"

    .line 193
    :cond_1
    return-object v0
.end method

.method private static newHttpProxy(Ljava/lang/String;I)Ljava/net/Proxy;
    .locals 7
    .param p0, "proxyHost"    # Ljava/lang/String;
    .param p1, "proxyPort"    # I

    .prologue
    .line 198
    const/4 v4, 0x0

    .line 199
    .local v4, "saddr":Ljava/net/InetSocketAddress;
    move-object v2, p0

    .line 200
    .local v2, "phost":Ljava/lang/String;
    if-gez p1, :cond_0

    const/16 v3, 0x1bb

    .line 202
    .local v3, "pport":I
    :goto_0
    :try_start_0
    new-instance v5, Lsun/net/www/protocol/https/HttpsClient$1;

    invoke-direct {v5, p0, v3}, Lsun/net/www/protocol/https/HttpsClient$1;-><init>(Ljava/lang/String;I)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v4, v0
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v4    # "saddr":Ljava/net/InetSocketAddress;
    :goto_1
    new-instance v5, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v5, v6, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v5

    .line 200
    .end local v3    # "pport":I
    .restart local v4    # "saddr":Ljava/net/InetSocketAddress;
    :cond_0
    move v3, p1

    .restart local v3    # "pport":I
    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .local v1, "pae":Ljava/security/PrivilegedActionException;
    goto :goto_1
.end method


# virtual methods
.method public afterConnect()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->isCachedConnection()Z

    move-result v13

    if-nez v13, :cond_9

    .line 437
    const/4 v12, 0x0

    .line 438
    .local v12, "s":Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 440
    .local v5, "factory":Ljavax/net/ssl/SSLSocketFactory;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    instance-of v13, v13, Ljavax/net/ssl/SSLSocket;

    if-nez v13, :cond_5

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    .line 442
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lsun/net/www/http/HttpClient;->port:I

    const/16 v16, 0x1

    .line 441
    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v12, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .local v12, "s":Ljavax/net/ssl/SSLSocket;
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/https/HttpsClient;->getProtocols()[Ljava/lang/String;

    move-result-object v11

    .line 466
    .local v11, "protocols":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/https/HttpsClient;->getCipherSuites()[Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "ciphers":[Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 468
    invoke-virtual {v12, v11}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 470
    :cond_1
    if-eqz v2, :cond_2

    .line 471
    invoke-virtual {v12, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 473
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 523
    const/4 v9, 0x1

    .line 525
    .local v9, "needToCheckSpoofing":Z
    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v13

    invoke-virtual {v13}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, "identification":Ljava/lang/String;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_6

    .line 527
    const-string/jumbo v13, "HTTPS"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 531
    const/4 v9, 0x0

    .line 564
    :cond_3
    :goto_1
    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 565
    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    .line 567
    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    .line 569
    :try_start_1
    new-instance v13, Ljava/io/PrintStream;

    .line 570
    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v15}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 571
    sget-object v15, Lsun/net/www/protocol/https/HttpsClient;->encoding:Ljava/lang/String;

    const/16 v16, 0x0

    .line 569
    move/from16 v0, v16

    invoke-direct {v13, v14, v0, v15}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 577
    if-eqz v9, :cond_4

    .line 578
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lsun/net/www/protocol/https/HttpsClient;->checkURLSpoofing(Ljavax/net/ssl/HostnameVerifier;)V

    .line 435
    .end local v2    # "ciphers":[Ljava/lang/String;
    .end local v5    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v6    # "identification":Ljava/lang/String;
    .end local v9    # "needToCheckSpoofing":Z
    .end local v11    # "protocols":[Ljava/lang/String;
    .end local v12    # "s":Ljavax/net/ssl/SSLSocket;
    :cond_4
    :goto_2
    return-void

    .line 444
    .restart local v5    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    .local v12, "s":Ljavax/net/ssl/SSLSocket;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    move-object v0, v13

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v12, v0

    .line 445
    .local v12, "s":Ljavax/net/ssl/SSLSocket;
    instance-of v13, v12, Lsun/security/ssl/SSLSocketImpl;

    if-eqz v13, :cond_0

    .line 446
    move-object v0, v12

    nop

    nop

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lsun/security/ssl/SSLSocketImpl;->setHost(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 449
    .end local v12    # "s":Ljavax/net/ssl/SSLSocket;
    :catch_0
    move-exception v4

    .line 454
    .local v4, "ex":Ljava/io/IOException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lsun/net/www/http/HttpClient;->port:I

    invoke-virtual {v5, v13, v14}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v12

    check-cast v12, Ljavax/net/ssl/SSLSocket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v12    # "s":Ljavax/net/ssl/SSLSocket;
    goto/16 :goto_0

    .line 455
    .end local v12    # "s":Ljavax/net/ssl/SSLSocket;
    :catch_1
    move-exception v7

    .line 456
    .local v7, "ignored":Ljava/io/IOException;
    throw v4

    .line 535
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v7    # "ignored":Ljava/io/IOException;
    .restart local v2    # "ciphers":[Ljava/lang/String;
    .restart local v6    # "identification":Ljava/lang/String;
    .restart local v9    # "needToCheckSpoofing":Z
    .restart local v11    # "protocols":[Ljava/lang/String;
    .restart local v12    # "s":Ljavax/net/ssl/SSLSocket;
    :cond_6
    const/4 v8, 0x0

    .line 540
    .local v8, "isDefaultHostnameVerifier":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v13, :cond_8

    .line 541
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "canonicalName":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 543
    const-string/jumbo v13, "javax.net.ssl.DefaultHostnameVerifier"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    .line 542
    if-eqz v13, :cond_7

    .line 544
    const/4 v8, 0x1

    .line 553
    .end local v1    # "canonicalName":Ljava/lang/String;
    :cond_7
    :goto_3
    if-eqz v8, :cond_3

    .line 556
    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v10

    .line 557
    .local v10, "paramaters":Ljavax/net/ssl/SSLParameters;
    const-string/jumbo v13, "HTTPS"

    invoke-virtual {v10, v13}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v12, v10}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 560
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 550
    .end local v10    # "paramaters":Ljavax/net/ssl/SSLParameters;
    :cond_8
    const/4 v8, 0x1

    goto :goto_3

    .line 572
    .end local v8    # "isDefaultHostnameVerifier":Z
    :catch_2
    move-exception v3

    .line 573
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v13, Ljava/lang/InternalError;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lsun/net/www/protocol/https/HttpsClient;->encoding:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " encoding not found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v13

    .line 584
    .end local v2    # "ciphers":[Ljava/lang/String;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v6    # "identification":Ljava/lang/String;
    .end local v9    # "needToCheckSpoofing":Z
    .end local v11    # "protocols":[Ljava/lang/String;
    .end local v12    # "s":Ljavax/net/ssl/SSLSocket;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    check-cast v13, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v13}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    goto/16 :goto_2
.end method

.method public closeIdleConnection()V
    .locals 4

    .prologue
    .line 672
    sget-object v1, Lsun/net/www/protocol/https/HttpsClient;->kac:Lsun/net/www/http/KeepAliveCache;

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v2, v3}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    .line 673
    .local v0, "http":Lsun/net/www/http/HttpClient;
    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    .line 671
    :cond_0
    return-void
.end method

.method protected createSocket()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    :try_start_0
    iget-object v2, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 411
    :catch_0
    move-exception v0

    .line 418
    .local v0, "se":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 419
    .local v1, "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_0

    .line 420
    invoke-super {p0}, Lsun/net/www/http/HttpClient;->createSocket()Ljava/net/Socket;

    move-result-object v2

    return-object v2

    .line 422
    :cond_0
    throw v0
.end method

.method getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultPort()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x1bb

    return v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method getLocalPrincipal()Ljava/security/Principal;
    .locals 4

    .prologue
    .line 744
    :try_start_0
    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 756
    :cond_0
    :goto_0
    return-object v2

    .line 745
    :catch_0
    move-exception v1

    .line 746
    .local v1, "e":Ljava/lang/AbstractMethodError;
    const/4 v2, 0x0

    .line 750
    .local v2, "principal":Ljava/security/Principal;
    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 751
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    .line 753
    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .local v2, "principal":Ljava/security/Principal;
    goto :goto_0
.end method

.method getPeerPrincipal()Ljava/security/Principal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 724
    :try_start_0
    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 733
    .local v2, "principal":Ljava/security/Principal;
    :goto_0
    return-object v2

    .line 725
    .end local v2    # "principal":Ljava/security/Principal;
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Ljava/lang/AbstractMethodError;
    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 731
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .restart local v2    # "principal":Ljava/security/Principal;
    goto :goto_0
.end method

.method public getProxyHostUsed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0}, Lsun/net/www/protocol/https/HttpsClient;->needsTunneling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    const/4 v0, 0x0

    return-object v0

    .line 781
    :cond_0
    invoke-super {p0}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyPortUsed()I
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_1

    .line 792
    :cond_0
    const/4 v0, -0x1

    .line 791
    :goto_0
    return v0

    .line 792
    :cond_1
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 793
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method getServerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 1
    .param p1, "event"    # Ljavax/net/ssl/HandshakeCompletedEvent;

    .prologue
    .line 769
    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    .line 767
    return-void
.end method

.method public needsTunneling()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 430
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_0

    .line 431
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 430
    :cond_0
    return v0
.end method

.method protected putInKeepAliveCache()V
    .locals 3

    .prologue
    .line 659
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z

    if-eqz v0, :cond_1

    .line 660
    sget-boolean v0, Lsun/net/www/protocol/https/HttpsClient;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Duplicate put to keep alive cache"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 661
    :cond_0
    return-void

    .line 663
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z

    .line 664
    sget-object v0, Lsun/net/www/protocol/https/HttpsClient;->kac:Lsun/net/www/http/KeepAliveCache;

    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    iget-object v2, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1, v2, p0}, Lsun/net/www/http/KeepAliveCache;->put(Ljava/net/URL;Ljava/lang/Object;Lsun/net/www/http/HttpClient;)V

    .line 658
    return-void
.end method

.method setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .param p1, "hv"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 391
    iput-object p1, p0, Lsun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    .line 390
    return-void
.end method

.method setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 395
    iput-object p1, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 394
    return-void
.end method
