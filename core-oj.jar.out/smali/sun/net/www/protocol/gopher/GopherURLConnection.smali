.class Lsun/net/www/protocol/gopher/GopherURLConnection;
.super Lsun/net/www/URLConnection;
.source "Handler.java"


# instance fields
.field permission:Ljava/security/Permission;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "u"    # Ljava/net/URL;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lsun/net/www/URLConnection;-><init>(Ljava/net/URL;)V

    .line 80
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lsun/net/www/protocol/gopher/GopherClient;

    invoke-direct {v0, p0}, Lsun/net/www/protocol/gopher/GopherClient;-><init>(Lsun/net/www/URLConnection;)V

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Lsun/net/www/protocol/gopher/GopherClient;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4

    .prologue
    .line 92
    iget-object v2, p0, Lsun/net/www/protocol/gopher/GopherURLConnection;->permission:Ljava/security/Permission;

    if-nez v2, :cond_1

    .line 93
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 94
    .local v1, "port":I
    if-gez v1, :cond_0

    const/16 v1, 0x46

    .line 95
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "host":Ljava/lang/String;
    new-instance v2, Ljava/net/SocketPermission;

    const-string/jumbo v3, "connect"

    invoke-direct {v2, v0, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lsun/net/www/protocol/gopher/GopherURLConnection;->permission:Ljava/security/Permission;

    .line 98
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "port":I
    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/gopher/GopherURLConnection;->permission:Ljava/security/Permission;

    return-object v2
.end method
