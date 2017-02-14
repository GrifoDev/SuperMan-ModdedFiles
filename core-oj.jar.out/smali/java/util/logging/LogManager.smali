.class public Ljava/util/logging/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/LogManager$1;,
        Ljava/util/logging/LogManager$Cleaner;,
        Ljava/util/logging/LogManager$LogNode;,
        Ljava/util/logging/LogManager$LoggerContext;,
        Ljava/util/logging/LogManager$LoggerWeakRef;,
        Ljava/util/logging/LogManager$RootLogger;,
        Ljava/util/logging/LogManager$SystemLoggerContext;
    }
.end annotation


# static fields
.field public static final LOGGING_MXBEAN_NAME:Ljava/lang/String; = "java.util.logging:type=Logging"

.field private static final MAX_ITERATIONS:I = 0x190

.field private static final defaultLevel:Ljava/util/logging/Level;

.field private static loggingMXBean:Ljava/util/logging/LoggingMXBean;

.field private static manager:Ljava/util/logging/LogManager;


# instance fields
.field private changes:Ljava/beans/PropertyChangeSupport;

.field private final controlPermission:Ljava/security/Permission;

.field private deathImminent:Z

.field private initializedGlobalHandlers:Z

.field private final loggerRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private props:Ljava/util/Properties;

.field private volatile readPrimordialConfiguration:Z

.field private rootLogger:Ljava/util/logging/Logger;

.field private final systemContext:Ljava/util/logging/LogManager$LoggerContext;

.field private final userContext:Ljava/util/logging/LogManager$LoggerContext;


# direct methods
.method static synthetic -get0()Ljava/util/logging/Level;
    .locals 1

    sget-object v0, Ljava/util/logging/LogManager;->defaultLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/logging/LogManager;)Ljava/lang/ref/ReferenceQueue;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/logging/LogManager;
    .locals 1

    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    return-object v0
.end method

.method static synthetic -get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic -get4(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager$LoggerContext;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager;->systemContext:Ljava/util/logging/LogManager$LoggerContext;

    return-object v0
.end method

.method static synthetic -get5(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager$LoggerContext;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager;->userContext:Ljava/util/logging/LogManager$LoggerContext;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/logging/LogManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljava/util/logging/LogManager;->deathImminent:Z

    return p1
.end method

.method static synthetic -set1(Ljava/util/logging/LogManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    return p1
.end method

.method static synthetic -set2(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager;
    .locals 0

    sput-object p0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    return-object p0
.end method

.method static synthetic -set3(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)Ljava/util/logging/Logger;
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static {p0}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/logging/LogManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/logging/LogManager;->parseClassNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/util/logging/LogManager;->doSetLevel(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    return-void
.end method

.method static synthetic -wrap3(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/util/logging/LogManager;->doSetParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    return-void
.end method

.method static synthetic -wrap4(Ljava/util/logging/LogManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/logging/LogManager;->initializeGlobalHandlers()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    sput-object v0, Ljava/util/logging/LogManager;->defaultLevel:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/LogManager$1;

    invoke-direct {v0}, Ljava/util/logging/LogManager$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    new-instance v1, Ljava/beans/PropertyChangeSupport;

    const-class v2, Ljava/util/logging/LogManager;

    invoke-direct {v1, v2}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/logging/LogManager;->changes:Ljava/beans/PropertyChangeSupport;

    new-instance v1, Ljava/util/logging/LogManager$SystemLoggerContext;

    invoke-direct {v1}, Ljava/util/logging/LogManager$SystemLoggerContext;-><init>()V

    iput-object v1, p0, Ljava/util/logging/LogManager;->systemContext:Ljava/util/logging/LogManager$LoggerContext;

    new-instance v1, Ljava/util/logging/LogManager$LoggerContext;

    invoke-direct {v1, v3}, Ljava/util/logging/LogManager$LoggerContext;-><init>(Ljava/util/logging/LogManager$LoggerContext;)V

    iput-object v1, p0, Ljava/util/logging/LogManager;->userContext:Ljava/util/logging/LogManager$LoggerContext;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v1, Ljava/util/logging/LoggingPermission;

    const-string/jumbo v2, "control"

    invoke-direct {v1, v2, v3}, Ljava/util/logging/LoggingPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/logging/LogManager;->controlPermission:Ljava/security/Permission;

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/util/logging/LogManager$Cleaner;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ljava/util/logging/LogManager$Cleaner;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$Cleaner;)V

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private contexts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/LogManager$LoggerContext;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ljava/util/logging/LogManager;->systemContext:Ljava/util/logging/LogManager$LoggerContext;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static doSetLevel(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    return-void

    :cond_0
    new-instance v1, Ljava/util/logging/LogManager$5;

    invoke-direct {v1, p0, p1}, Ljava/util/logging/LogManager$5;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private static doSetParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    return-void

    :cond_0
    new-instance v1, Ljava/util/logging/LogManager$6;

    invoke-direct {v1, p0, p1}, Ljava/util/logging/LogManager$6;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private static getClassInstance(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLogManager()Ljava/util/logging/LogManager;
    .locals 1

    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    invoke-direct {v0}, Ljava/util/logging/LogManager;->readPrimordialConfiguration()V

    :cond_0
    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    return-object v0
.end method

.method public static declared-synchronized getLoggingMXBean()Ljava/util/logging/LoggingMXBean;
    .locals 2

    const-class v1, Ljava/util/logging/LogManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/logging/Logging;

    invoke-direct {v0}, Ljava/util/logging/Logging;-><init>()V

    sput-object v0, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;

    :cond_0
    sget-object v0, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUserContext()Ljava/util/logging/LogManager$LoggerContext;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager;->userContext:Ljava/util/logging/LogManager$LoggerContext;

    return-object v0
.end method

.method private declared-synchronized initializeGlobalHandlers()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    iget-boolean v0, p0, Ljava/util/logging/LogManager;->deathImminent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;

    const-string/jumbo v1, "handlers"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ljava/util/logging/LogManager;->loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/logging/LogManager$4;

    invoke-direct {v0, p0, p3, p1}, Ljava/util/logging/LogManager$4;-><init>(Ljava/util/logging/LogManager;Ljava/lang/String;Ljava/util/logging/Logger;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private parseClassNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v5, v5, [Ljava/lang/String;

    return-object v5

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    move v0, v2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method private readPrimordialConfiguration()V
    .locals 2

    iget-boolean v1, p0, Ljava/util/logging/LogManager;->readPrimordialConfiguration:Z

    if-nez v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ljava/util/logging/LogManager;->readPrimordialConfiguration:Z

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Ljava/util/logging/LogManager;->readPrimordialConfiguration:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/util/logging/LogManager$2;

    invoke-direct {v1, p0}, Ljava/util/logging/LogManager$2;-><init>(Ljava/util/logging/LogManager;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resetLogger(Ljava/util/logging/Logger;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/logging/Handler;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Ljava/util/logging/LogManager;->defaultLevel:Ljava/util/logging/Level;

    invoke-virtual {p1, v5}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p1, v6}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_2
.end method

.method private declared-synchronized setLevelsOnExistingLoggers()V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v8}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v8, ".level"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x6

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, v4, v8}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v6

    if-nez v6, :cond_1

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad level value for property: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_1
    :try_start_1
    invoke-direct {p0}, Ljava/util/logging/LogManager;->contexts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/LogManager$LoggerContext;

    invoke-virtual {v0, v7}, Ljava/util/logging/LogManager$LoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addLogger(Ljava/util/logging/Logger;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->drainLoggerRefQueueBounded()V

    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Ljava/util/logging/LogManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".handlers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Ljava/util/logging/LogManager;->loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    iget-object v0, p0, Ljava/util/logging/LogManager;->changes:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public checkAccess()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    return-void
.end method

.method checkPermission()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/util/logging/LogManager;->controlPermission:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/util/logging/Logger;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_2
    return-object v1
.end method

.method demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 4

    iget-object v3, p0, Ljava/util/logging/LogManager;->systemContext:Ljava/util/logging/LogManager$LoggerContext;

    invoke-virtual {v3, p1, p2}, Ljava/util/logging/LogManager$LoggerContext;->demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_1

    invoke-virtual {v2}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    move-object v0, v1

    new-instance v3, Ljava/util/logging/LogManager$3;

    invoke-direct {v3, p0, v0, v2}, Ljava/util/logging/LogManager$3;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    goto :goto_0
.end method

.method final declared-synchronized drainLoggerRefQueueBounded()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x190

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LoggerWeakRef;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/logging/LogManager$LoggerWeakRef;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    return v1

    :cond_4
    return p2
.end method

.method getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/Filter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    :cond_0
    return-object p2
.end method

.method getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/Formatter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    :cond_0
    return-object p2
.end method

.method getIntProperty(Ljava/lang/String;I)I
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    return p2
.end method

.method getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 1

    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/logging/LogManager$LoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager$LoggerContext;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readConfiguration()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    const-string/jumbo v8, "java.util.logging.config.class"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Logging configuration class \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\" failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v8, "java.util.logging.config.file"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const-string/jumbo v8, "java.home"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v8, Ljava/lang/Error;

    const-string/jumbo v9, "Can\'t find java.home ??"

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "lib"

    invoke-direct {v4, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v8, "logging.properties"

    invoke-direct {v5, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    :cond_2
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager;->readConfiguration(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_4
    return-void

    :catch_1
    move-exception v2

    const-class v8, Ljava/util/logging/LogManager;

    const-string/jumbo v9, "logging.properties"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    if-nez v7, :cond_3

    throw v2

    :catchall_0
    move-exception v8

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v8
.end method

.method public readConfiguration(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    invoke-virtual {p0}, Ljava/util/logging/LogManager;->reset()V

    iget-object v4, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v4, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string/jumbo v4, "config"

    invoke-direct {p0, v4}, Ljava/util/logging/LogManager;->parseClassNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    aget-object v3, v2, v1

    :try_start_0
    invoke-static {v3}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t load config class \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Ljava/util/logging/LogManager;->setLevelsOnExistingLoggers()V

    iget-object v4, p0, Ljava/util/logging/LogManager;->changes:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v4, v7, v7, v7}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    iget-object v0, p0, Ljava/util/logging/LogManager;->changes:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    iput-object v5, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-direct {p0}, Ljava/util/logging/LogManager;->contexts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/LogManager$LoggerContext;

    invoke-virtual {v0}, Ljava/util/logging/LogManager$LoggerContext;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/logging/LogManager$LoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Ljava/util/logging/LogManager;->resetLogger(Ljava/util/logging/Logger;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_2
    return-void
.end method
