.class public Ljava/util/logging/ConsoleHandler;
.super Ljava/util/logging/StreamHandler;
.source "ConsoleHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    .line 90
    invoke-direct {p0}, Ljava/util/logging/ConsoleHandler;->configure()V

    .line 91
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/util/logging/StreamHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    .line 88
    return-void
.end method

.method private configure()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 63
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v3

    .line 64
    .local v3, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 66
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

    invoke-virtual {p0, v4}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    .line 67
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

    .line 68
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

    invoke-virtual {p0, v4}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 70
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

    .line 62
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 73
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 74
    :catch_1
    move-exception v2

    .local v2, "ex2":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V

    .line 114
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 0
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 105
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 106
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V

    .line 104
    return-void
.end method
