.class public Ljava/util/logging/MemoryHandler;
.super Ljava/util/logging/Handler;
.source "MemoryHandler.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private buffer:[Ljava/util/logging/LogRecord;

.field count:I

.field private pushLevel:Ljava/util/logging/Level;

.field private size:I

.field start:I

.field private target:Ljava/util/logging/Handler;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 106
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/logging/Handler;->sealed:Z

    .line 107
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->configure()V

    .line 108
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/util/logging/Handler;->sealed:Z

    .line 110
    const-string/jumbo v5, "???"

    .line 112
    .local v5, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v4

    .line 113
    .local v4, "manager":Ljava/util/logging/LogManager;
    const-string/jumbo v6, "java.util.logging.MemoryHandler.target"

    invoke-virtual {v4, v6}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 115
    .local v0, "clz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/Handler;

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "clz":Ljava/lang/Class;
    .end local v4    # "manager":Ljava/util/logging/LogManager;
    :goto_0
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->init()V

    .line 105
    return-void

    .line 116
    :catch_0
    move-exception v2

    .line 119
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 121
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/Handler;

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 122
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    .line 123
    .local v3, "innerE":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MemoryHandler can\'t load handler \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public constructor <init>(Ljava/util/logging/Handler;ILjava/util/logging/Level;)V
    .locals 1
    .param p1, "target"    # Ljava/util/logging/Handler;
    .param p2, "size"    # I
    .param p3, "pushLevel"    # Ljava/util/logging/Level;

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 151
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 154
    :cond_1
    if-gtz p2, :cond_2

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 157
    :cond_2
    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    .line 158
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->configure()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    .line 160
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    .line 161
    iput-object p3, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    .line 162
    iput p2, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 163
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->init()V

    .line 150
    return-void
.end method

.method private configure()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    .line 88
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    .line 89
    .local v1, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "cname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".push"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v2

    iput-object v2, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 93
    iget v2, p0, Ljava/util/logging/MemoryHandler;->size:I

    if-gtz v2, :cond_0

    .line 94
    iput v4, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 96
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".filter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/Handler;->setFilter(Ljava/util/logging/Filter;)V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".formatter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v3}, Ljava/util/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 87
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget v0, p0, Ljava/util/logging/MemoryHandler;->size:I

    new-array v0, v0, [Ljava/util/logging/LogRecord;

    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    .line 133
    iput v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    .line 134
    iput v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    .line 131
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V

    .line 233
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    .line 231
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->flush()V

    .line 220
    return-void
.end method

.method public declared-synchronized getPushLevel()Ljava/util/logging/Level;
    .locals 1

    .prologue
    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 277
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    monitor-enter p0

    .line 182
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/MemoryHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    .line 183
    return-void

    .line 185
    :cond_0
    :try_start_1
    iget v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    iget v2, p0, Ljava/util/logging/MemoryHandler;->count:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 186
    .local v0, "ix":I
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aput-object p1, v1, v0

    .line 187
    iget v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 188
    iget v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    .line 193
    :goto_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 194
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler;->push()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 181
    return-void

    .line 190
    :cond_2
    :try_start_2
    iget v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    .line 191
    iget v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Ljava/util/logging/MemoryHandler;->start:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "ix":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized push()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v3, p0, Ljava/util/logging/MemoryHandler;->count:I

    if-ge v0, v3, :cond_0

    .line 205
    iget v3, p0, Ljava/util/logging/MemoryHandler;->start:I

    add-int/2addr v3, v0

    iget-object v4, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 206
    .local v1, "ix":I
    iget-object v3, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v2, v3, v1

    .line 207
    .local v2, "record":Ljava/util/logging/LogRecord;
    iget-object v3, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v3, v2}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "ix":I
    .end local v2    # "record":Ljava/util/logging/LogRecord;
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/logging/MemoryHandler;->start:I

    .line 211
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/logging/MemoryHandler;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 203
    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setPushLevel(Ljava/util/logging/Level;)V
    .locals 2
    .param p1, "newLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 249
    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 250
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    .line 251
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    .line 245
    return-void
.end method
