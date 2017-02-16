.class public abstract Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;
.super Lsun/net/www/protocol/http/HttpURLConnection;
.source "AbstractDelegateHttpsURLConnection.java"


# direct methods
.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "handler"    # Lsun/net/www/protocol/http/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    .line 54
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "handler"    # Lsun/net/www/protocol/http/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    .line 49
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 176
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->plainConnect()V

    .line 178
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v0, :cond_1

    .line 180
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->isCachedConnection()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->needsTunneling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->doTunneling()V

    .line 185
    :cond_2
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->afterConnect()V

    .line 174
    return-void
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    check-cast v0, Ljava/net/SecureCacheResponse;

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "connection not yet open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    check-cast v1, Ljava/net/SecureCacheResponse;

    invoke-virtual {v1}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v0

    .line 226
    .local v0, "l":Ljava/util/List;
    if-nez v0, :cond_0

    .line 227
    return-object v2

    .line 229
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    return-object v1

    .line 232
    .end local v0    # "l":Ljava/util/List;
    :cond_1
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-nez v1, :cond_2

    .line 233
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "connection not yet open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_2
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v1, Lsun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v1}, Lsun/net/www/protocol/https/HttpsClient;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1
.end method

.method getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    check-cast v0, Ljava/net/SecureCacheResponse;

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 306
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-nez v0, :cond_1

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "connection not yet open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method protected getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    const/4 v4, 0x1

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p0

    .line 191
    invoke-static/range {v0 .. v6}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;ZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method protected getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "connectTimeout"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    move-object v6, p0

    .line 200
    invoke-static/range {v0 .. v6}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;ZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    check-cast v0, Ljava/net/SecureCacheResponse;

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 289
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-nez v0, :cond_1

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "connection not yet open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method

.method public getServerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "this method is not supported when using cache"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-nez v0, :cond_1

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "connection not yet open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->getServerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    check-cast v1, Ljava/net/SecureCacheResponse;

    invoke-virtual {v1}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object v0

    .line 248
    .local v0, "l":Ljava/util/List;
    if-nez v0, :cond_0

    .line 249
    return-object v2

    .line 251
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    return-object v1

    .line 255
    .end local v0    # "l":Ljava/util/List;
    :cond_1
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-nez v1, :cond_2

    .line 256
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "connection not yet open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_2
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v1, Lsun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v1}, Lsun/net/www/protocol/https/HttpsClient;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    return v0
.end method

.method protected proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p0

    .line 149
    invoke-static/range {v0 .. v6}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    .line 146
    return-void
.end method

.method public setConnected(Z)V
    .locals 0
    .param p1, "conn"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Ljava/net/URLConnection;->connected:Z

    .line 166
    return-void
.end method

.method public setNewClient(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setNewClient(Ljava/net/URL;Z)V

    .line 79
    return-void
.end method

.method public setNewClient(Ljava/net/URL;Z)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 96
    invoke-static {v0, p1, v1, p2, p0}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;ZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 100
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->afterConnect()V

    .line 95
    return-void
.end method

.method public setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V
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
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V

    .line 117
    return-void
.end method

.method public setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V

    .line 139
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->isCachedConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->doTunneling()V

    .line 142
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->afterConnect()V

    .line 137
    return-void
.end method
