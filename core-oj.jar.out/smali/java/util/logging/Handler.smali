.class public abstract Ljava/util/logging/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# static fields
.field private static final offValue:I


# instance fields
.field private encoding:Ljava/lang/String;

.field private errorManager:Ljava/util/logging/ErrorManager;

.field private filter:Ljava/util/logging/Filter;

.field private formatter:Ljava/util/logging/Formatter;

.field private logLevel:Ljava/util/logging/Level;

.field private manager:Ljava/util/logging/LogManager;

.field sealed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sput v0, Ljava/util/logging/Handler;->offValue:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Handler;->manager:Ljava/util/logging/LogManager;

    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    iput-object v0, p0, Ljava/util/logging/Handler;->logLevel:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/ErrorManager;

    invoke-direct {v0}, Ljava/util/logging/ErrorManager;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    return-void
.end method


# virtual methods
.method checkPermission()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/logging/Handler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    :cond_0
    return-void
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public abstract flush()V
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorManager()Ljava/util/logging/ErrorManager;
    .locals 1

    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    iget-object v0, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    return-object v0
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public getFormatter()Ljava/util/logging/Formatter;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    return-object v0
.end method

.method public declared-synchronized getLevel()Ljava/util/logging/Level;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/logging/Handler;->logLevel:Ljava/util/logging/Level;
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
    .locals 3

    invoke-virtual {p0}, Ljava/util/logging/Handler;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-lt v2, v1, :cond_0

    sget v2, Ljava/util/logging/Handler;->offValue:I

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/util/logging/Handler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v2

    return v2
.end method

.method public abstract publish(Ljava/util/logging/LogRecord;)V
.end method

.method protected reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v2, "Handler.reportError caught:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setErrorManager(Ljava/util/logging/ErrorManager;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    iput-object p1, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    return-void
.end method

.method public setFormatter(Ljava/util/logging/Formatter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    invoke-virtual {p1}, Ljava/util/logging/Formatter;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    return-void
.end method

.method public declared-synchronized setLevel(Ljava/util/logging/Level;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    iput-object p1, p0, Ljava/util/logging/Handler;->logLevel:Ljava/util/logging/Level;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
