.class public Ljava/util/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/Logger$LoggerHelper;
    }
.end annotation


# static fields
.field public static final GLOBAL_LOGGER_NAME:Ljava/lang/String; = "global"

.field static final SYSTEM_LOGGER_RB_NAME:Ljava/lang/String; = "sun.util.logging.resources.logging"

.field private static final emptyHandlers:[Ljava/util/logging/Handler;

.field public static final global:Ljava/util/logging/Logger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final offValue:I

.field private static treeLock:Ljava/lang/Object;


# instance fields
.field private anonymous:Z

.field private callersClassLoaderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private catalog:Ljava/util/ResourceBundle;

.field private catalogLocale:Ljava/util/Locale;

.field private catalogName:Ljava/lang/String;

.field private volatile filter:Ljava/util/logging/Filter;

.field private final handlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/util/logging/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private kids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/logging/LogManager$LoggerWeakRef;",
            ">;"
        }
    .end annotation
.end field

.field private volatile levelObject:Ljava/util/logging/Level;

.field private volatile levelValue:I

.field private manager:Ljava/util/logging/LogManager;

.field private name:Ljava/lang/String;

.field private volatile parent:Ljava/util/logging/Logger;

.field private resourceBundleName:Ljava/lang/String;

.field private volatile useParentHandlers:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/logging/Handler;

    sput-object v0, Ljava/util/logging/Logger;->emptyHandlers:[Ljava/util/logging/Handler;

    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sput v0, Ljava/util/logging/Logger;->offValue:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/logging/Logger;

    const-string/jumbo v1, "global"

    invoke-direct {v0, v1}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelValue:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-direct {p0, p2, p3}, Ljava/util/logging/Logger;->setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelValue:I

    return-void
.end method

.method private checkPermission()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/logging/Logger;->anonymous:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    :cond_1
    return-void
.end method

.method private static demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;
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

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v2, Ljava/util/logging/Logger$LoggerHelper;->disableCallerCheck:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/logging/LogManager;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    return-object v2
.end method

.method private doLog(Ljava/util/logging/LogRecord;)V
    .locals 2

    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/logging/Logger;->getEffectiveResourceBundleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "sun.util.logging.resources.logging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    goto :goto_0
.end method

.method private doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method private doSetParent(Ljava/util/logging/Logger;)V
    .locals 9

    sget-object v6, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    if-eqz v5, :cond_3

    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/logging/LogManager$LoggerWeakRef;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/Logger;

    if-ne v2, p0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    :goto_1
    :try_start_1
    iput-object p1, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    :cond_0
    if-nez v4, :cond_2

    new-instance v3, Ljava/util/logging/LogManager$LoggerWeakRef;

    iget-object v5, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v5, p0}, Ljava/util/logging/LogManager$LoggerWeakRef;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    :try_start_2
    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    invoke-direct {v5, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/logging/LogManager$LoggerWeakRef;->setParentRef(Ljava/lang/ref/WeakReference;)V

    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ljava/util/logging/Logger;->updateEffectiveLevel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6

    throw v5

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_3

    :cond_2
    move-object v3, v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    goto :goto_1
.end method

.method private declared-synchronized findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;
    .locals 6

    const/4 v5, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v5

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_1
    const-string/jumbo v4, "sun.util.logging.resources.logging"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Ljava/util/logging/Logger;->findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :cond_3
    :try_start_3
    invoke-static {p1, v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v4

    :catch_0
    move-exception v3

    if-eqz p2, :cond_4

    :try_start_4
    invoke-direct {p0}, Ljava/util/logging/Logger;->getCallersClassLoader()Ljava/lang/ClassLoader;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    :try_start_5
    invoke-static {p1, v2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_5
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v4

    :catch_1
    move-exception v3

    :cond_4
    :try_start_6
    sget-boolean v4, Ljava/util/logging/Logger$LoggerHelper;->allowStackWalkSearch:Z

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, v2, v1}, Ljava/util/logging/Logger;->findResourceBundleFromStack(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    :cond_5
    monitor-exit p0

    return-object v5

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized findResourceBundleFromStack(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 8
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-static {v6}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    const/4 v4, 0x0

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_0

    monitor-exit p0

    return-object v7

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :cond_1
    if-ne p3, v0, :cond_2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object p3, v0

    :try_start_3
    invoke-static {p1, p2, p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v6

    iput-object v6, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    iput-object p2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    iget-object v6, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private static findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 1

    new-instance v0, Ljava/util/logging/Logger$1;

    invoke-direct {v0, p0}, Ljava/util/logging/Logger$1;-><init>(Ljava/util/Locale;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public static getAnonymousLogger()Ljava/util/logging/Logger;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/logging/Logger;->getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 5
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->drainLoggerRefQueueBounded()V

    new-instance v1, Ljava/util/logging/Logger;

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, p0, v3}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Ljava/util/logging/Logger;->anonymous:Z

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/logging/Logger;->doSetParent(Ljava/util/logging/Logger;)V

    return-object v1
.end method

.method private getCallersClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    :cond_0
    return-object v0
.end method

.method private getEffectiveResourceBundleName()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static final getGlobal()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/logging/Logger;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 5
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/util/logging/Logger;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, v1, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-direct {v1, p1, v0}, Ljava/util/logging/Logger;->setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-object v1

    :cond_1
    iget-object v2, v1, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getPlatformLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 3

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    invoke-virtual {v0, p0, v2}, Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    return-object v1
.end method

.method private setCallersClassLoaderRef(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method private declared-synchronized setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Ljava/util/logging/Logger;->setCallersClassLoaderRef(Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bundle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, p1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iput-object p1, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private updateEffectiveLevel()V
    .locals 5

    iget-object v4, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    :goto_0
    iget v4, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ne v4, v2, :cond_2

    return-void

    :cond_0
    iget-object v4, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget v2, v4, Ljava/util/logging/Logger;->levelValue:I

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    goto :goto_0

    :cond_2
    iput v2, p0, Ljava/util/logging/Logger;->levelValue:I

    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/LogManager$LoggerWeakRef;

    invoke-virtual {v3}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Logger;

    if-eqz v1, :cond_3

    invoke-direct {v1}, Ljava/util/logging/Logger;->updateEffectiveLevel()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public addHandler(Ljava/util/logging/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/logging/Handler;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public config(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v1, "ENTRY"

    invoke-virtual {p0, v0, p1, p2, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v4, "ENTRY {0}"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v4, "ENTRY"

    if-nez p3, :cond_1

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v6, 0x0

    :goto_0
    array-length v0, p3

    if-ge v6, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v1, "RETURN"

    invoke-virtual {p0, v0, p1, p2, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v6, v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v4, "RETURN {0}"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public getHandlers()[Ljava/util/logging/Handler;
    .locals 2

    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Ljava/util/logging/Logger;->emptyHandlers:[Ljava/util/logging/Handler;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Handler;

    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/util/logging/Logger;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 2

    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getUseParentHandlers()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v1, Ljava/util/logging/Logger;->offValue:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    iget v3, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v3, Ljava/util/logging/Logger;->offValue:I

    if-ne v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/logging/Level;->intValue()I

    move-result v3

    iget v4, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v3, v4, :cond_0

    iget v3, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v4, Ljava/util/logging/Logger;->offValue:I

    if-ne v3, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    invoke-virtual {v0, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getUseParentHandlers()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v1

    goto :goto_0
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    iget v3, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v3, Ljava/util/logging/Logger;->offValue:I

    if-ne v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    iget v3, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v3, Ljava/util/logging/Logger;->offValue:I

    if-ne v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    return-void
.end method

.method final removeChildLogger(Ljava/util/logging/LogManager$LoggerWeakRef;)V
    .locals 4

    sget-object v3, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LoggerWeakRef;

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    iput-object p1, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    sget-object v1, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    invoke-direct {p0}, Ljava/util/logging/Logger;->updateEffectiveLevel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setLogManager(Ljava/util/logging/LogManager;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    return-void
.end method

.method public setParent(Ljava/util/logging/Logger;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->doSetParent(Ljava/util/logging/Logger;)V

    return-void
.end method

.method public setUseParentHandlers(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    iput-boolean p1, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v2, "THROW"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method
