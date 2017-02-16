.class Ljava/util/logging/Logging;
.super Ljava/lang/Object;
.source "Logging.java"

# interfaces
.implements Ljava/util/logging/LoggingMXBean;


# static fields
.field private static EMPTY_STRING:Ljava/lang/String;

.field private static logManager:Ljava/util/logging/LogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    sput-object v0, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    .line 67
    const-string/jumbo v0, ""

    sput-object v0, Ljava/util/logging/Logging;->EMPTY_STRING:Ljava/lang/String;

    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 69
    sget-object v2, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 70
    .local v0, "l":Ljava/util/logging/Logger;
    if-nez v0, :cond_0

    .line 71
    return-object v3

    .line 74
    :cond_0
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    .line 75
    .local v1, "level":Ljava/util/logging/Level;
    if-nez v1, :cond_1

    .line 76
    sget-object v2, Ljava/util/logging/Logging;->EMPTY_STRING:Ljava/lang/String;

    return-object v2

    .line 78
    :cond_1
    invoke-virtual {v1}, Ljava/util/logging/Level;->getLevelName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLoggerNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v2, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    invoke-virtual {v2}, Ljava/util/logging/LogManager;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 59
    .local v1, "loggers":Ljava/util/Enumeration;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    return-object v0
.end method

.method public getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 106
    sget-object v2, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 107
    .local v0, "l":Ljava/util/logging/Logger;
    if-nez v0, :cond_0

    .line 108
    return-object v3

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v1

    .line 112
    .local v1, "p":Ljava/util/logging/Logger;
    if-nez v1, :cond_1

    .line 114
    sget-object v2, Ljava/util/logging/Logging;->EMPTY_STRING:Ljava/lang/String;

    return-object v2

    .line 116
    :cond_1
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "levelName"    # Ljava/lang/String;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "loggerName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_0
    sget-object v2, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 88
    .local v1, "logger":Ljava/util/logging/Logger;
    if-nez v1, :cond_1

    .line 89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Logger "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    const-string/jumbo v4, "does not exist"

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 94
    .local v0, "level":Ljava/util/logging/Level;
    if-eqz p2, :cond_2

    .line 96
    invoke-static {p2}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    .line 97
    .local v0, "level":Ljava/util/logging/Level;
    if-nez v0, :cond_2

    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown level \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    .end local v0    # "level":Ljava/util/logging/Level;
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 82
    return-void
.end method
