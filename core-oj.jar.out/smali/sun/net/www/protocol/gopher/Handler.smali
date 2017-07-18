.class public Lsun/net/www/protocol/gopher/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    const/16 v0, 0x46

    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/gopher/Handler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Lsun/net/www/protocol/gopher/GopherClient;->getUseGopherProxy()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lsun/net/www/protocol/gopher/GopherClient;->getGopherProxyHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsun/net/www/protocol/gopher/GopherClient;->getGopherProxyPort()I

    move-result v2

    invoke-static {v0, v2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    new-instance p2, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p2, v2, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance v2, Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-direct {v2, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    return-object v2

    :cond_1
    new-instance v2, Lsun/net/www/protocol/gopher/GopherURLConnection;

    invoke-direct {v2, p1}, Lsun/net/www/protocol/gopher/GopherURLConnection;-><init>(Ljava/net/URL;)V

    return-object v2
.end method
