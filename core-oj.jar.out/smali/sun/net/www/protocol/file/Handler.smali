.class public Lsun/net/www/protocol/file/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method

.method private getHost(Ljava/net/URL;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 48
    const-string/jumbo v0, ""

    .line 49
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected createFileURLConnection(Ljava/net/URL;Ljava/io/File;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 112
    new-instance v0, Lsun/net/www/protocol/file/FileURLConnection;

    invoke-direct {v0, p1, p2}, Lsun/net/www/protocol/file/FileURLConnection;-><init>(Ljava/net/URL;Ljava/io/File;)V

    return-object v0
.end method

.method protected hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 4
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .prologue
    const/4 v3, 0x1

    .line 128
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "s1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "s2":Ljava/lang/String;
    const-string/jumbo v2, "localhost"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    :cond_0
    return v3

    .line 132
    :cond_1
    const-string/jumbo v2, "localhost"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    :cond_2
    return v3

    .line 134
    :cond_3
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v2

    return v2
.end method

.method public declared-synchronized openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 72
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/file/Handler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
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

.method public declared-synchronized openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 9
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 77
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "host":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "~"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 79
    const-string/jumbo v5, "localhost"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 78
    if-eqz v5, :cond_1

    .line 80
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0, p1, v1}, Lsun/net/www/protocol/file/Handler;->createFileURLConnection(Ljava/net/URL;Ljava/io/File;)Ljava/net/URLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 91
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/net/URL;

    const-string/jumbo v6, "ftp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 92
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v5, ""

    .line 91
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v6, v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v3, "ru":Ljava/net/URL;
    if-eqz p2, :cond_3

    .line 94
    invoke-virtual {v3, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 101
    .end local v3    # "ru":Ljava/net/URL;
    :goto_1
    if-nez v4, :cond_4

    .line 102
    :try_start_2
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to connect to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 103
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "host":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 92
    .restart local v2    # "host":Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "#"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 96
    .restart local v3    # "ru":Ljava/net/URL;
    :cond_3
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .local v4, "uc":Ljava/net/URLConnection;
    goto :goto_1

    .line 98
    .end local v3    # "ru":Ljava/net/URL;
    .end local v4    # "uc":Ljava/net/URLConnection;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    .local v4, "uc":Ljava/net/URLConnection;
    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "uc":Ljava/net/URLConnection;
    :cond_4
    monitor-exit p0

    .line 105
    return-object v4
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 2
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    .prologue
    .line 67
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3, p4}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V

    .line 53
    return-void
.end method
