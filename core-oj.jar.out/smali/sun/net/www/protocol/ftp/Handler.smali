.class public Lsun/net/www/protocol/ftp/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected equals(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 4
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "userInfo1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "userInfo2":Ljava/lang/String;
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->equals(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    if-nez v0, :cond_1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 50
    :cond_0
    :goto_0
    return v2

    .line 51
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method protected getDefaultPort()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x15

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/ftp/Handler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lsun/net/www/protocol/ftp/FtpURLConnection;

    invoke-direct {v0, p1, p2}, Lsun/net/www/protocol/ftp/FtpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    return-object v0
.end method
