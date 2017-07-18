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

    new-instance v0, Ljava/util/logging/LoggingProxyImpl;

    invoke-direct {v0}, Ljava/util/logging/LoggingProxyImpl;-><init>()V

    sput-object v0, Ljava/util/logging/LoggingProxyImpl;->INSTANCE:Lsun/util/logging/LoggingProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    return-object v0
.end method

.method public getLevelName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/util/logging/Level;->getLevelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLevelValue(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    return v0
.end method

.method public getLogger(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/util/logging/Logger;->getPlatformLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

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

    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/logging/LoggingMXBean;->getLoggerNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/logging/LoggingMXBean;->getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/logging/Logger;

    check-cast p2, Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Ljava/util/logging/Logger;

    check-cast p2, Ljava/util/logging/Level;

    invoke-virtual {p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Ljava/util/logging/Logger;

    check-cast p2, Ljava/util/logging/Level;

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/logging/Logger;

    check-cast p2, Ljava/util/logging/Level;

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public parseLevel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    invoke-static {p1}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    if-nez v0, :cond_0

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

    :cond_0
    return-object v0
.end method

.method public setLevel(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/logging/Logger;

    check-cast p2, Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    return-void
.end method

.method public setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/logging/LoggingMXBean;->setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
