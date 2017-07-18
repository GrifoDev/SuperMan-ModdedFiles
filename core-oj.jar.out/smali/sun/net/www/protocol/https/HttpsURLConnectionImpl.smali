.class public Lsun/net/www/protocol/https/HttpsURLConnectionImpl;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# instance fields
.field protected delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/https/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    new-instance v0, Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-direct {v0, v1, p2, p3, p0}, Lsun/net/www/protocol/https/DelegateHttpsURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;Ljavax/net/ssl/HttpsURLConnection;)V

    iput-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/https/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/https/Handler;)V

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/DelegateHttpsURLConnection;->dispose()V

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentLengthLong()J
    .locals 2

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/URLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v1}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getServerCertificateChain()[Ljavax/security/cert/X509Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected isConnected()Z
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method protected setConnected(Z)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setConnected(Z)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method protected setNewClient(Ljava/net/URL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setNewClient(Ljava/net/URL;Z)V

    return-void
.end method

.method protected setNewClient(Ljava/net/URL;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setNewClient(Ljava/net/URL;Z)V

    return-void
.end method

.method protected setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V

    return-void
.end method

.method protected setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
