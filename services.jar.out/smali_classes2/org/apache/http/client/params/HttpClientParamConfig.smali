.class public final Lorg/apache/http/client/params/HttpClientParamConfig;
.super Ljava/lang/Object;
.source "HttpClientParamConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequestConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/config/RequestConfig;
    .locals 1

    sget-object v0, Lorg/apache/http/client/config/RequestConfig;->DEFAULT:Lorg/apache/http/client/config/RequestConfig;

    invoke-static {p0, v0}, Lorg/apache/http/client/params/HttpClientParamConfig;->getRequestConfig(Lorg/apache/http/params/HttpParams;Lorg/apache/http/client/config/RequestConfig;)Lorg/apache/http/client/config/RequestConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestConfig(Lorg/apache/http/params/HttpParams;Lorg/apache/http/client/config/RequestConfig;)Lorg/apache/http/client/config/RequestConfig;
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Lorg/apache/http/client/config/RequestConfig;->copy(Lorg/apache/http/client/config/RequestConfig;)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->getSocketTimeout()I

    move-result v9

    const-string/jumbo v10, "http.socket.timeout"

    invoke-interface {p0, v10, v9}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/apache/http/client/config/RequestConfig$Builder;->setSocketTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->isStaleConnectionCheckEnabled()Z

    move-result v9

    const-string/jumbo v10, "http.connection.stalecheck"

    invoke-interface {p0, v10, v9}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Lorg/apache/http/client/config/RequestConfig$Builder;->setStaleConnectionCheckEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v9

    const-string/jumbo v10, "http.connection.timeout"

    invoke-interface {p0, v10, v9}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->isExpectContinueEnabled()Z

    move-result v9

    const-string/jumbo v10, "http.protocol.expect-continue"

    invoke-interface {p0, v10, v9}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Lorg/apache/http/client/config/RequestConfig$Builder;->setExpectContinueEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v9

    const-string/jumbo v10, "http.protocol.handle-authentication"

    invoke-interface {p0, v10, v9}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Lorg/apache/http/client/config/RequestConfig$Builder;->setAuthenticationEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->isCircularRedirectsAllowed()Z

    move-result v9

    const-string/jumbo v10, "http.protocol.allow-circular-redirects"

    invoke-interface {p0, v10, v9}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Lorg/apache/http/client/config/RequestConfig$Builder;->setCircularRedirectsAllowed(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v9

    int-to-long v10, v9

    const-string/jumbo v9, "http.conn-manager.timeout"

    invoke-interface {p0, v9, v10, v11}, Lorg/apache/http/params/HttpParams;->getLongParameter(Ljava/lang/String;J)J

    move-result-wide v10

    long-to-int v9, v10

    invoke-virtual {v6, v9}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectionRequestTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->getMaxRedirects()I

    move-result v9

    const-string/jumbo v10, "http.protocol.max-redirects"

    invoke-interface {p0, v10, v9}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/apache/http/client/config/RequestConfig$Builder;->setMaxRedirects(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->isRedirectsEnabled()Z

    move-result v9

    const-string/jumbo v10, "http.protocol.handle-redirects"

    invoke-interface {p0, v10, v9}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Lorg/apache/http/client/config/RequestConfig$Builder;->setRedirectsEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->isRelativeRedirectsAllowed()Z

    move-result v6

    const-string/jumbo v10, "http.protocol.reject-relative-redirect"

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    invoke-interface {p0, v10, v6}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    invoke-virtual {v9, v7}, Lorg/apache/http/client/config/RequestConfig$Builder;->setRelativeRedirectsAllowed(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string/jumbo v6, "http.route.default-proxy"

    invoke-interface {p0, v6}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpHost;

    if-nez v3, :cond_2

    :goto_2
    const-string/jumbo v6, "http.route.local-address"

    invoke-interface {p0, v6}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    if-nez v2, :cond_3

    :goto_3
    const-string/jumbo v6, "http.auth.target-scheme-pref"

    invoke-interface {p0, v6}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    if-nez v5, :cond_4

    :goto_4
    const-string/jumbo v6, "http.auth.proxy-scheme-pref"

    invoke-interface {p0, v6}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    if-nez v4, :cond_5

    :goto_5
    const-string/jumbo v6, "http.protocol.cookie-policy"

    invoke-interface {p0, v6}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_6

    :goto_6
    invoke-virtual {v0}, Lorg/apache/http/client/config/RequestConfig$Builder;->build()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v6

    return-object v6

    :cond_0
    move v6, v8

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Lorg/apache/http/client/config/RequestConfig$Builder;->setProxy(Lorg/apache/http/HttpHost;)Lorg/apache/http/client/config/RequestConfig$Builder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setLocalAddress(Ljava/net/InetAddress;)Lorg/apache/http/client/config/RequestConfig$Builder;

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v5}, Lorg/apache/http/client/config/RequestConfig$Builder;->setTargetPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/http/client/config/RequestConfig$Builder;

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v4}, Lorg/apache/http/client/config/RequestConfig$Builder;->setProxyPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/http/client/config/RequestConfig$Builder;

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setCookieSpec(Ljava/lang/String;)Lorg/apache/http/client/config/RequestConfig$Builder;

    goto :goto_6
.end method
