.class public Ljava/util/logging/SocketHandler;
.super Ljava/util/logging/StreamHandler;
.source "SocketHandler.java"


# instance fields
.field private host:Ljava/lang/String;

.field private port:I

.field private portProperty:Ljava/lang/String;

.field private sock:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/logging/Handler;->sealed:Z

    .line 111
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->configure()V

    .line 114
    :try_start_0
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/logging/Handler;->sealed:Z

    .line 108
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "ix":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SocketHandler: connect failed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/logging/SocketHandler;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    .line 139
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->configure()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    .line 141
    iput p2, p0, Ljava/util/logging/SocketHandler;->port:I

    .line 142
    iput-object p1, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->connect()V

    .line 137
    return-void
.end method

.method private configure()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 79
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v3

    .line 80
    .local v3, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "cname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".level"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".filter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/Handler;->setFilter(Ljava/util/logging/Filter;)V

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".formatter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/logging/XMLFormatter;

    invoke-direct {v5}, Ljava/util/logging/XMLFormatter;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 86
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".encoding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".port"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Ljava/util/logging/SocketHandler;->port:I

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    .line 78
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 89
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 90
    :catch_1
    move-exception v2

    .local v2, "ex2":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget v2, p0, Ljava/util/logging/SocketHandler;->port:I

    if-nez v2, :cond_0

    .line 149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/util/logging/SocketHandler;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_0
    iget-object v2, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Null host name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_1
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Cleartext traffic not permitted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_2
    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    iget v4, p0, Ljava/util/logging/SocketHandler;->port:I

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;

    .line 161
    iget-object v2, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 162
    .local v1, "out":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 163
    .local v0, "bout":Ljava/io/BufferedOutputStream;
    invoke-virtual {p0, v0}, Ljava/util/logging/StreamHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 146
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 173
    :try_start_0
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 174
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 176
    :try_start_1
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 172
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 177
    :catch_0
    move-exception v0

    .local v0, "ix":Ljava/io/IOException;
    goto :goto_0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    monitor-enter p0

    .line 191
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 192
    return-void

    .line 194
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 195
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 190
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
