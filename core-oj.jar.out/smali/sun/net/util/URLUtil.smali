.class public Lsun/net/util/URLUtil;
.super Ljava/lang/Object;
.source "URLUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static urlNoFragString(Ljava/net/URL;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/4 v6, -0x1

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v4, "strForm":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "protocol":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v2

    .line 62
    .local v2, "port":I
    if-ne v2, v6, :cond_1

    .line 65
    invoke-virtual {p0}, Ljava/net/URL;->getDefaultPort()I

    move-result v2

    .line 67
    :cond_1
    if-eq v2, v6, :cond_2

    .line 68
    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .end local v2    # "port":I
    :cond_2
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "file":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
