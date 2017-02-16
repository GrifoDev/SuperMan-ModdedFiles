.class public Ljava/util/logging/StreamHandler;
.super Ljava/util/logging/Handler;
.source "StreamHandler.java"


# instance fields
.field private doneHeader:Z

.field private manager:Ljava/util/logging/LogManager;

.field private output:Ljava/io/OutputStream;

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 62
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->manager:Ljava/util/logging/LogManager;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    .line 94
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->configure()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Formatter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "formatter"    # Ljava/util/logging/Formatter;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 62
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->manager:Ljava/util/logging/LogManager;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    .line 107
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->configure()V

    .line 108
    invoke-virtual {p0, p2}, Ljava/util/logging/StreamHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 109
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    .line 105
    return-void
.end method

.method private configure()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 71
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v3

    .line 72
    .local v3, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 74
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

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 75
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

    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setFilter(Ljava/util/logging/Filter;)V

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".formatter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v5}, Ljava/util/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 78
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

    .line 70
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    .line 81
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 82
    :catch_1
    move-exception v2

    .local v2, "ex2":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private declared-synchronized flushAndClose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 252
    :try_start_0
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->checkPermission()V

    .line 253
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 255
    :try_start_1
    iget-boolean v1, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    if-nez v1, :cond_0

    .line 256
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    .line 259
    :cond_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 261
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    .line 251
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 265
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_3
    invoke-virtual {p0, v1, v0, v2}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 284
    :try_start_0
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->flushAndClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 283
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 242
    :try_start_1
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 239
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 246
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_2
    invoke-virtual {p0, v1, v0, v2}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 230
    iget-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 231
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 233
    :cond_1
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    monitor-enter p0

    .line 191
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    .line 192
    return-void

    .line 196
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 205
    .local v1, "msg":Ljava/lang/String;
    :try_start_2
    iget-boolean v2, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    if-nez v2, :cond_1

    .line 206
    iget-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 207
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    .line 209
    :cond_1
    iget-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    .line 190
    return-void

    .line 197
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    const/4 v3, 0x5

    :try_start_3
    invoke-virtual {p0, v2, v0, v3}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 201
    return-void

    .line 210
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 213
    .restart local v0    # "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_4
    invoke-virtual {p0, v2, v0, v3}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->setEncoding(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 162
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V

    .line 166
    if-nez p1, :cond_1

    .line 167
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 159
    :goto_0
    return-void

    .line 169
    :cond_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    goto :goto_0
.end method

.method protected declared-synchronized setOutputStream(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 125
    if-nez p1, :cond_0

    .line 126
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 128
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->flushAndClose()V

    .line 129
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    .line 130
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    .line 131
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 133
    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 124
    return-void

    .line 136
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    invoke-direct {v2, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 140
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
