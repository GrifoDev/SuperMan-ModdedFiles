.class public Lsun/net/spi/DefaultProxySelector;
.super Ljava/net/ProxySelector;
.source "DefaultProxySelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    }
.end annotation


# static fields
.field private static final SOCKS_PROXY_VERSION:Ljava/lang/String; = "socksProxyVersion"

.field private static hasSystemProxies:Z

.field static final props:[[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lsun/net/spi/DefaultProxySelector;->defaultPort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "http"

    aput-object v2, v1, v3

    const-string/jumbo v2, "http.proxy"

    aput-object v2, v1, v4

    const-string/jumbo v2, "proxy"

    aput-object v2, v1, v5

    const-string/jumbo v2, "socksProxy"

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "https"

    aput-object v2, v1, v3

    const-string/jumbo v2, "https.proxy"

    aput-object v2, v1, v4

    const-string/jumbo v2, "proxy"

    aput-object v2, v1, v5

    const-string/jumbo v2, "socksProxy"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "ftp"

    aput-object v2, v1, v3

    const-string/jumbo v2, "ftp.proxy"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ftpProxy"

    aput-object v2, v1, v5

    const-string/jumbo v2, "proxy"

    aput-object v2, v1, v6

    const-string/jumbo v2, "socksProxy"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "gopher"

    aput-object v2, v1, v3

    const-string/jumbo v2, "gopherProxy"

    aput-object v2, v1, v4

    const-string/jumbo v2, "socksProxy"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "socket"

    aput-object v2, v1, v3

    const-string/jumbo v2, "socksProxy"

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    sput-object v0, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    sput-boolean v3, Lsun/net/spi/DefaultProxySelector;->hasSystemProxies:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    return-void
.end method

.method private defaultPort(Ljava/lang/String;)I
    .locals 2

    const/16 v1, 0x50

    const-string/jumbo v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    return v0

    :cond_1
    const-string/jumbo v0, "ftp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string/jumbo v0, "socket"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x438

    return v0

    :cond_3
    const-string/jumbo v0, "gopher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Arguments can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p3, :cond_0

    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    if-nez p1, :cond_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "URI can\'t be null."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v10, 0x40

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    :cond_3
    if-eqz v7, :cond_4

    if-nez v1, :cond_5

    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "protocol = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " host = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const-string/jumbo v10, "http"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v5, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    :cond_6
    :goto_0
    move-object v6, v7

    move-object v3, v5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lsun/net/spi/DefaultProxySelector$1;

    invoke-direct {v10, p0, v7, v3, v9}, Lsun/net/spi/DefaultProxySelector$1;-><init>(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;Lsun/net/spi/DefaultProxySelector$NonProxyInfo;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v8

    :cond_7
    const-string/jumbo v10, "https"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    sget-object v5, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpsNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    goto :goto_0

    :cond_8
    const-string/jumbo v10, "ftp"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v5, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->ftpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    goto :goto_0
.end method
