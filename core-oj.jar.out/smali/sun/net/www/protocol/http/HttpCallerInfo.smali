.class public final Lsun/net/www/protocol/http/HttpCallerInfo;
.super Ljava/lang/Object;
.source "HttpCallerInfo.java"


# instance fields
.field public final addr:Ljava/net/InetAddress;

.field public final authType:Ljava/net/Authenticator$RequestorType;

.field public final host:Ljava/lang/String;

.field public final port:I

.field public final prompt:Ljava/lang/String;

.field public final protocol:Ljava/lang/String;

.field public final scheme:Ljava/lang/String;

.field public final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->url:Ljava/net/URL;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->prompt:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->host:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->getDefaultPort()I

    move-result v3

    iput v3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->port:I

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->addr:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->protocol:Ljava/lang/String;

    sget-object v3, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    iput-object v3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->authType:Ljava/net/Authenticator$RequestorType;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->scheme:Ljava/lang/String;

    return-void

    :cond_0
    iput v2, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->port:I

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->url:Ljava/net/URL;

    iput-object p2, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->host:Ljava/lang/String;

    iput p3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->port:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->prompt:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->addr:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->protocol:Ljava/lang/String;

    sget-object v0, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->authType:Ljava/net/Authenticator$RequestorType;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->scheme:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->url:Ljava/net/URL;

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->url:Ljava/net/URL;

    iget-object v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->host:Ljava/lang/String;

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->host:Ljava/lang/String;

    iget-object v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->protocol:Ljava/lang/String;

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->protocol:Ljava/lang/String;

    iget-object v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->prompt:Ljava/lang/String;

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->prompt:Ljava/lang/String;

    iget v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->port:I

    iput v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->port:I

    iget-object v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->addr:Ljava/net/InetAddress;

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->addr:Ljava/net/InetAddress;

    iget-object v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->authType:Ljava/net/Authenticator$RequestorType;

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->authType:Ljava/net/Authenticator$RequestorType;

    iput-object p2, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->scheme:Ljava/lang/String;

    return-void
.end method
