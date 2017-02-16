.class Ljava/util/logging/LoggingProxyImpl;
.super Ljava/lang/Object;
.source "LoggingProxyImpl.java"

# interfaces
.implements Lsun/util/logging/LoggingProxy;


# static fields
.field static final INSTANCE:Lsun/util/logging/LoggingProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/logging/LoggingProxyImpl;

    invoke-direct {v0}, Ljava/util/logging/LoggingProxyImpl;-><init>()V

    sput-object v0, Ljava/util/logging/LoggingProxyImpl;->INSTANCE:Lsun/util/logging/LoggingProxy;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "logger"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Ljava/util/logging/Logger;

    .end local p1    # "logger":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    return-object v0
.end method

.method public getLevelName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "level"    # Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, Ljava/util/logging/Level;

    .end local p1    # "level":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/logging/Level;->getLevelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLevelValue(Ljava/lang/Object;)I
    .locals 1
    .param p1, "level"    # Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, Ljava/util/logging/Level;

    .end local p1    # "level":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    return v0
.end method

.method public getLogger(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1}, Ljava/util/logging/Logger;->getPlatformLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/logging/LoggingMXBean;->getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerNames()Ljava/util/List;
    .locals 1
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
    .line 76
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/logging/LoggingMXBean;->getLoggerNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/logging/LoggingMXBean;->getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "level"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, Ljava/util/logging/Logger;

    .end local p1    # "logger":Ljava/lang/Object;
    check-cast p2, Ljava/util/logging/Level;

    .end local p2    # "level":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "level"    # Ljava/lang/Object;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    check-cast p1, Ljava/util/logging/Logger;

    .end local p1    # "logger":Ljava/lang/Object;
    check-cast p2, Ljava/util/logging/Level;

    .end local p2    # "level":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "level"    # Ljava/lang/Object;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    check-cast p1, Ljava/util/logging/Logger;

    .end local p1    # "logger":Ljava/lang/Object;
    check-cast p2, Ljava/util/logging/Level;

    .end local p2    # "level":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public varargs log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "level"    # Ljava/lang/Object;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;

    .prologue
    .line 71
    check-cast p1, Ljava/util/logging/Logger;

    .end local p1    # "logger":Ljava/lang/Object;
    check-cast p2, Ljava/util/logging/Level;

    .end local p2    # "level":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public parseLevel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "levelName"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p1}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    .line 97
    .local v0, "level":Ljava/util/logging/Level;
    if-nez v0, :cond_0

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown level \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_0
    return-object v0
.end method

.method public setLevel(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "newLevel"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Ljava/util/logging/Logger;

    .end local p1    # "logger":Ljava/lang/Object;
    check-cast p2, Ljava/util/logging/Level;

    .end local p2    # "newLevel":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 50
    return-void
.end method

.method public setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "levelName"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/logging/LoggingMXBean;->setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
