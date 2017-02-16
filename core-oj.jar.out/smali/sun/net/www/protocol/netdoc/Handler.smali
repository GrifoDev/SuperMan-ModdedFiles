.class public Lsun/net/www/protocol/netdoc/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# static fields
.field static base:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 12
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 54
    const/4 v8, 0x0

    .line 58
    .local v8, "uc":Ljava/net/URLConnection;
    :try_start_0
    new-instance v9, Lsun/security/action/GetBooleanAction;

    const-string/jumbo v10, "newdoc.localonly"

    invoke-direct {v9, v10}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 59
    .local v7, "tmp":Ljava/lang/Boolean;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 62
    .local v5, "localonly":Z
    new-instance v9, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v10, "doc.url"

    invoke-direct {v9, v10}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "docurl":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 65
    .local v3, "file":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 67
    :try_start_1
    sget-object v9, Lsun/net/www/protocol/netdoc/Handler;->base:Ljava/net/URL;

    if-nez v9, :cond_0

    .line 68
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v9, Lsun/net/www/protocol/netdoc/Handler;->base:Ljava/net/URL;

    .line 70
    :cond_0
    new-instance v6, Ljava/net/URL;

    sget-object v9, Lsun/net/www/protocol/netdoc/Handler;->base:Ljava/net/URL;

    invoke-direct {v6, v9, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_0
    if-eqz v6, :cond_1

    .line 75
    :try_start_2
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 79
    .end local v8    # "uc":Ljava/net/URLConnection;
    :cond_1
    if-nez v8, :cond_2

    .line 81
    :try_start_3
    new-instance v6, Ljava/net/URL;

    const-string/jumbo v9, "file"

    const-string/jumbo v10, "~"

    invoke-direct {v6, v9, v10, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v6, "ru":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .line 84
    .local v8, "uc":Ljava/net/URLConnection;
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 92
    .end local v6    # "ru":Ljava/net/URL;
    .end local v8    # "uc":Ljava/net/URLConnection;
    :cond_2
    :goto_1
    if-nez v8, :cond_3

    .line 93
    :try_start_4
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t find file for URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 94
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v11

    .line 93
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "docurl":Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    .end local v5    # "localonly":Z
    .end local v7    # "tmp":Ljava/lang/Boolean;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 71
    .restart local v0    # "docurl":Ljava/lang/String;
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v5    # "localonly":Z
    .restart local v7    # "tmp":Ljava/lang/Boolean;
    .local v8, "uc":Ljava/net/URLConnection;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/net/MalformedURLException;
    const/4 v6, 0x0

    .local v6, "ru":Ljava/net/URL;
    goto :goto_0

    .line 87
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .end local v6    # "ru":Ljava/net/URL;
    .end local v8    # "uc":Ljava/net/URLConnection;
    :catch_1
    move-exception v1

    .line 88
    .local v1, "e":Ljava/io/IOException;
    const/4 v8, 0x0

    .restart local v8    # "uc":Ljava/net/URLConnection;
    goto :goto_1

    .line 85
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "uc":Ljava/net/URLConnection;
    :catch_2
    move-exception v2

    .line 86
    .restart local v2    # "e":Ljava/net/MalformedURLException;
    const/4 v8, 0x0

    .restart local v8    # "uc":Ljava/net/URLConnection;
    goto :goto_1

    .end local v2    # "e":Ljava/net/MalformedURLException;
    .end local v8    # "uc":Ljava/net/URLConnection;
    :cond_3
    monitor-exit p0

    .line 96
    return-object v8
.end method
