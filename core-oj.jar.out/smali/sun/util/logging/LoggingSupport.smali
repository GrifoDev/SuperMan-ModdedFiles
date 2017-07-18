.class public Lsun/util/logging/LoggingSupport;
.super Ljava/lang/Object;
.source "LoggingSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/logging/LoggingSupport$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_FORMAT:Ljava/lang/String; = "%1$tb %1$td, %1$tY %1$tl:%1$tM:%1$tS %1$Tp %2$s%n%4$s: %5$s%6$s%n"

.field private static final FORMAT_PROP_KEY:Ljava/lang/String; = "java.util.logging.SimpleFormatter.format"

.field private static final proxy:Lsun/util/logging/LoggingProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/util/logging/LoggingSupport$1;

    invoke-direct {v0}, Lsun/util/logging/LoggingSupport$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/logging/LoggingProxy;

    sput-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureAvailable()V
    .locals 2

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Should not here"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static getLevel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLevel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getLevelName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLevelName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLevelValue(Ljava/lang/Object;)I
    .locals 1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLevelValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLogger(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoggerNames()Ljava/util/List;
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

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0}, Lsun/util/logging/LoggingProxy;->getLoggerNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimpleFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lsun/util/logging/LoggingSupport;->getSimpleFormat(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSimpleFormat(Z)Ljava/lang/String;
    .locals 5

    new-instance v2, Lsun/util/logging/LoggingSupport$2;

    invoke-direct {v2}, Lsun/util/logging/LoggingSupport$2;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v2, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    sget-object v2, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    const-string/jumbo v3, "java.util.logging.SimpleFormatter.format"

    invoke-interface {v2, v3}, Lsun/util/logging/LoggingProxy;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x6

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, ""

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, ""

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, ""

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string/jumbo v3, ""

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "%1$tb %1$td, %1$tY %1$tl:%1$tM:%1$tS %1$Tp %2$s%n%4$s: %5$s%6$s%n"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "%1$tb %1$td, %1$tY %1$tl:%1$tM:%1$tS %1$Tp %2$s%n%4$s: %5$s%6$s%n"

    goto :goto_0
.end method

.method public static isAvailable()Z
    .locals 1

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0, p1}, Lsun/util/logging/LoggingProxy;->isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0, p1, p2}, Lsun/util/logging/LoggingProxy;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0, p1, p2, p3}, Lsun/util/logging/LoggingProxy;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0, p1, p2, p3}, Lsun/util/logging/LoggingProxy;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static parseLevel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->parseLevel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setLevel(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0, p1}, Lsun/util/logging/LoggingProxy;->setLevel(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0, p1}, Lsun/util/logging/LoggingProxy;->setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
