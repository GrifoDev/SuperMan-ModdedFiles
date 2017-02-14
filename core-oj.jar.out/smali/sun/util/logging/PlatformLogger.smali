.class public Lsun/util/logging/PlatformLogger;
.super Ljava/lang/Object;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/logging/PlatformLogger$1;,
        Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;,
        Lsun/util/logging/PlatformLogger$JavaLoggerProxy;,
        Lsun/util/logging/PlatformLogger$Level;,
        Lsun/util/logging/PlatformLogger$LoggerProxy;
    }
.end annotation


# static fields
.field public static final ALL:I = -0x80000000

.field public static final CONFIG:I = 0x2bc

.field private static final DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

.field public static final FINE:I = 0x1f4

.field public static final FINER:I = 0x190

.field public static final FINEST:I = 0x12c

.field public static final INFO:I = 0x320

.field public static final OFF:I = 0x7fffffff

.field public static final SEVERE:I = 0x3e8

.field public static final WARNING:I = 0x384

.field private static loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lsun/util/logging/PlatformLogger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static loggingEnabled:Z


# instance fields
.field private volatile javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

.field private volatile loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;


# direct methods
.method static synthetic -get0()Lsun/util/logging/PlatformLogger$Level;
    .locals 1

    sget-object v0, Lsun/util/logging/PlatformLogger;->DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    sput-object v0, Lsun/util/logging/PlatformLogger;->DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

    new-instance v0, Lsun/util/logging/PlatformLogger$1;

    invoke-direct {v0}, Lsun/util/logging/PlatformLogger$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    invoke-direct {v0, p1}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    invoke-direct {v0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    goto :goto_0
.end method

.method public static declared-synchronized getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;
    .locals 7

    const-class v5, Lsun/util/logging/PlatformLogger;

    monitor-enter v5

    const/4 v1, 0x0

    :try_start_0
    sget-object v4, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lsun/util/logging/PlatformLogger;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    :try_start_1
    new-instance v1, Lsun/util/logging/PlatformLogger;

    invoke-direct {v1, p0}, Lsun/util/logging/PlatformLogger;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v4, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v5

    return-object v1

    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit v5

    throw v4

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_2

    :cond_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method public static declared-synchronized redirectPlatformLoggers()V
    .locals 6

    const-class v5, Lsun/util/logging/PlatformLogger;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    if-nez v4, :cond_1

    invoke-static {}, Lsun/util/logging/LoggingSupport;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    sput-boolean v4, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    sget-object v4, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/logging/PlatformLogger;

    if-eqz v2, :cond_0

    invoke-direct {v2}, Lsun/util/logging/PlatformLogger;->redirectToJavaLoggerProxy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    return-void

    :cond_2
    monitor-exit v5

    return-void
.end method

.method private redirectToJavaLoggerProxy()V
    .locals 4

    const-class v2, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    iget-object v3, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    new-instance v0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    iget-object v2, v1, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->name:Ljava/lang/String;

    iget-object v3, v1, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    invoke-direct {v0, v2, v3}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;Lsun/util/logging/PlatformLogger$Level;)V

    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    return-void
.end method

.method public config(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs config(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    return-void
.end method

.method public fine(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs fine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    return-void
.end method

.method public finer(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs finer(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    return-void
.end method

.method public finest(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs finest(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getLevel()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->getLevel()Lsun/util/logging/PlatformLogger$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/util/logging/PlatformLogger$Level;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    iget-object v0, v0, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v0}, Lsun/util/logging/PlatformLogger$LoggerProxy;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isLoggable(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lsun/util/logging/PlatformLogger$Level;->valueOf(I)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v0

    return v0
.end method

.method public isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    goto :goto_0
.end method

.method public level()Lsun/util/logging/PlatformLogger$Level;
    .locals 1

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v0}, Lsun/util/logging/PlatformLogger$LoggerProxy;->getLevel()Lsun/util/logging/PlatformLogger$Level;

    move-result-object v0

    return-object v0
.end method

.method public setLevel(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lsun/util/logging/PlatformLogger$LoggerProxy;->setLevel(Lsun/util/logging/PlatformLogger$Level;)V

    return-void

    :cond_0
    invoke-static {p1}, Lsun/util/logging/PlatformLogger$Level;->valueOf(I)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v0

    goto :goto_0
.end method

.method public setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    .locals 1

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v0, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->setLevel(Lsun/util/logging/PlatformLogger$Level;)V

    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    return-void
.end method

.method public severe(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs severe(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
