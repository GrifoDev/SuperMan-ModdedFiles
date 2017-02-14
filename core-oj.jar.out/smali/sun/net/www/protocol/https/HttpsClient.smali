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

    const-class v0, Lsun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/https/HttpsClient;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    nop

    nop

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lsun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lsun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;II)V

    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2, v0, p5}, Lsun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/net/Proxy;I)V

    return-void

    :cond_0
    invoke-static {p3, p4}, Lsun/net/www/protocol/https/HttpsClient;->newHttpProxy(Ljava/lang/String;I)Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/net/Proxy;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/net/www/http/HttpClient;-><init>()V

    iput-object p3, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {p0, p1}, Lsun/net/www/protocol/https/HttpsClient;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->proxyDisabled:Z

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    iput-object p2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lsun/net/www/http/HttpClient;->port:I

    iget v0, p0, Lsun/net/www/http/HttpClient;->port:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/net/www/protocol/https/HttpsClient;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lsun/net/www/http/HttpClient;->port:I

    :cond_0
    invoke-virtual {p0, p4}, Lsun/net/NetworkClient;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->openServer()V

    return-void
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;ILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p3, :cond_0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;ZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p3, p4}, Lsun/net/www/protocol/https/HttpsClient;->newHttpProxy(Ljava/lang/String;I)Ljava/net/Proxy;

    move-result-object v3

    goto :goto_0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    sget-object p3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :cond_0
    const/4 v1, 0x0

    if-eqz p4, :cond_7

    sget-object v3, Lsun/net/www/protocol/https/HttpsClient;->kac:Lsun/net/www/http/KeepAliveCache;

    invoke-virtual {v3, p1, p0}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    move-result-object v1

    check-cast v1, Lsun/net/www/protocol/https/HttpsClient;

    if-eqz v1, :cond_1

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p6}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "POST"

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lsun/net/www/http/HttpClient;->available()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_7

    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v3, p3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-nez v3, :cond_8

    if-nez p3, :cond_8

    :cond_3
    monitor-enter v1

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, v1, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    sget-boolean v3, Lsun/net/www/protocol/https/HttpsClient;->-assertionsDisabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lsun/net/www/http/HttpClient;->inCache:Z

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    :cond_4
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v1, Lsun/net/www/http/HttpClient;->inCache:Z

    if-eqz p6, :cond_5

    invoke-virtual {v1}, Lsun/net/www/protocol/https/HttpsClient;->needsTunneling()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    invoke-virtual {p6, v3}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V

    :cond_5
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    const/16 v3, 0x12c

    invoke-virtual {v0, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_6

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

    :cond_7
    :goto_0
    if-nez v1, :cond_9

    new-instance v1, Lsun/net/www/protocol/https/HttpsClient;

    invoke-direct {v1, p0, p1, p3, p5}, Lsun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/net/Proxy;I)V

    :goto_1
    invoke-virtual {v1, p2}, Lsun/net/www/protocol/https/HttpsClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-object v1

    :cond_8
    monitor-enter v1

    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, v1, Lsun/net/www/http/HttpClient;->inCache:Z

    invoke-virtual {v1}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    const/4 v1, 0x0

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v1

    throw v3

    :cond_9
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eq v3, v4, :cond_a

    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-nez v3, :cond_c

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

    :cond_b
    :goto_2
    iput-object p1, v1, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    goto :goto_1

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;ZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;ZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    iget-object v7, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v7, "["

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const/4 v6, 0x0

    iget-object v7, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    :try_start_0
    invoke-static {v7}, Lsun/security/util/HostnameChecker;->getInstance(B)Lsun/security/util/HostnameChecker;

    move-result-object v0

    const-string/jumbo v7, "TLS_KRB5"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lsun/net/www/protocol/https/HttpsClient;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v7

    invoke-static {v4, v7}, Lsun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/Principal;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v8, "Hostname checker failed for Kerberos"

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_4

    const-string/jumbo v7, "_anon_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    return-void

    :cond_1
    :try_start_1
    iget-object v7, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v6, v7

    instance-of v7, v7, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    aget-object v5, v6, v7

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4, v5}, Lsun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    :cond_2
    return-void

    :cond_3
    new-instance v7, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v8, ""

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v2

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    iget-object v7, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {p1, v4, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v7

    if-eqz v7, :cond_5

    return-void

    :cond_5
    iget-object v7, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V

    iget-object v7, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->invalidate()V

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HTTPS hostname wrong:  should be <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private getCipherSuites()[Ljava/lang/String;
    .locals 7

    new-instance v5, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v6, "https.cipherSuites"

    invoke-direct {v5, v6}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1

    :cond_2
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ","

    invoke-direct {v3, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getProtocols()[Ljava/lang/String;
    .locals 7

    new-instance v5, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v6, "https.protocols"

    invoke-direct {v5, v6}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2

    :cond_2
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ","

    invoke-direct {v3, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getUserAgent()Ljava/lang/String;
    .locals 3

    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "https.agent"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v0, "JSSE"

    :cond_1
    return-object v0
.end method

.method private static newHttpProxy(Ljava/lang/String;I)Ljava/net/Proxy;
    .locals 7

    const/4 v4, 0x0

    move-object v2, p0

    if-gez p1, :cond_0

    const/16 v3, 0x1bb

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

    :goto_1
    new-instance v5, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v5, v6, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v5

    :cond_0
    move v3, p1

    goto :goto_0

    :catch_0
    move-exception v1

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

    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->isCachedConnection()Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    instance-of v13, v13, Ljavax/net/ssl/SSLSocket;

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lsun/net/www/http/HttpClient;->port:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v12, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/https/HttpsClient;->getProtocols()[Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/https/HttpsClient;->getCipherSuites()[Ljava/lang/String;

    move-result-object v2

    if-eqz v11, :cond_1

    invoke-virtual {v12, v11}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v12, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    const/4 v9, 0x1

    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v13

    invoke-virtual {v13}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_6

    const-string/jumbo v13, "HTTPS"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v9, 0x0

    :cond_3
    :goto_1
    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    :try_start_1
    new-instance v13, Ljava/io/PrintStream;

    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v15}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v15, Lsun/net/www/protocol/https/HttpsClient;->encoding:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v13, v14, v0, v15}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lsun/net/www/protocol/https/HttpsClient;->checkURLSpoofing(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    move-object v0, v13

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v12, v0

    instance-of v13, v12, Lsun/security/ssl/SSLSocketImpl;

    if-eqz v13, :cond_0

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

    :catch_0
    move-exception v4

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

    goto/16 :goto_0

    :catch_1
    move-exception v7

    throw v4

    :cond_6
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string/jumbo v13, "javax.net.ssl.DefaultHostnameVerifier"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v8, 0x1

    :cond_7
    :goto_3
    if-eqz v8, :cond_3

    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v10

    const-string/jumbo v13, "HTTPS"

    invoke-virtual {v10, v13}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v8, 0x1

    goto :goto_3

    :catch_2
    move-exception v3

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

    sget-object v1, Lsun/net/www/protocol/https/HttpsClient;->kac:Lsun/net/www/http/KeepAliveCache;

    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v2, v3}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

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

    :try_start_0
    iget-object v2, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_0

    invoke-super {p0}, Lsun/net/www/http/HttpClient;->createSocket()Ljava/net/Socket;

    move-result-object v2

    return-object v2

    :cond_0
    throw v0
.end method

.method getCipherSuite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultPort()I
    .locals 1

    const/16 v0, 0x1bb

    return v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method getLocalPrincipal()Ljava/security/Principal;
    .locals 4

    :try_start_0
    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    goto :goto_0
.end method

.method getPeerPrincipal()Ljava/security/Principal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    goto :goto_0
.end method

.method public getProxyHostUsed()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lsun/net/www/protocol/https/HttpsClient;->needsTunneling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyPortUsed()I
    .locals 2

    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

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

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    return-void
.end method

.method public needsTunneling()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected putInKeepAliveCache()V
    .locals 3

    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lsun/net/www/protocol/https/HttpsClient;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Duplicate put to keep alive cache"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z

    sget-object v0, Lsun/net/www/protocol/https/HttpsClient;->kac:Lsun/net/www/http/KeepAliveCache;

    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    iget-object v2, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1, v2, p0}, Lsun/net/www/http/KeepAliveCache;->put(Ljava/net/URL;Ljava/lang/Object;Lsun/net/www/http/HttpClient;)V

    return-void
.end method

.method setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method
