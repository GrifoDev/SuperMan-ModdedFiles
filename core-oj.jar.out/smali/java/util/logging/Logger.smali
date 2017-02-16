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

    .prologue
    .line 176
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/logging/Handler;

    sput-object v0, Ljava/util/logging/Logger;->emptyHandlers:[Ljava/util/logging/Handler;

    .line 177
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sput v0, Ljava/util/logging/Logger;->offValue:I

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/util/logging/Logger;

    const-string/jumbo v1, "global"

    invoke-direct {v0, v1}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    .line 175
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 180
    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    .line 291
    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    .line 292
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelValue:I

    .line 289
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 260
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p3, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 180
    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    .line 265
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    .line 266
    invoke-direct {p0, p2, p3}, Ljava/util/logging/Logger;->setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 267
    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    .line 268
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelValue:I

    .line 264
    return-void
.end method

.method private checkPermission()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 302
    iget-boolean v0, p0, Ljava/util/logging/Logger;->anonymous:Z

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    if-nez v0, :cond_0

    .line 305
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    .line 307
    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 301
    :cond_1
    return-void
.end method

.method private static demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "resourceBundleName"    # Ljava/lang/String;
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

    .prologue
    .line 337
    .local p2, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 338
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 339
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    sget-boolean v2, Ljava/util/logging/Logger$LoggerHelper;->disableCallerCheck:Z

    if-eqz v2, :cond_1

    .line 344
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/logging/LogManager;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v2

    return-object v2

    .line 340
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_0

    .line 341
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    return-object v2
.end method

.method private doLog(Ljava/util/logging/LogRecord;)V
    .locals 2
    .param p1, "lr"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 630
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 631
    invoke-direct {p0}, Ljava/util/logging/Logger;->getEffectiveResourceBundleName()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "ebname":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "sun.util.logging.resources.logging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 629
    return-void

    .line 633
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 634
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    goto :goto_0
.end method

.method private doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V
    .locals 1
    .param p1, "lr"    # Ljava/util/logging/LogRecord;
    .param p2, "rbname"    # Ljava/lang/String;

    .prologue
    .line 848
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 849
    if-eqz p2, :cond_0

    .line 850
    invoke-virtual {p1, p2}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 851
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 853
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 847
    return-void
.end method

.method private doSetParent(Ljava/util/logging/Logger;)V
    .locals 9
    .param p1, "newParent"    # Ljava/util/logging/Logger;

    .prologue
    .line 1581
    sget-object v6, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1584
    const/4 v3, 0x0

    .line 1585
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :try_start_0
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    if-eqz v5, :cond_3

    .line 1587
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1588
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/logging/LogManager$LoggerWeakRef;

    move-object v3, v0

    .line 1589
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    invoke-virtual {v3}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/Logger;

    .line 1590
    .local v2, "kid":Ljava/util/logging/Logger;
    if-ne v2, p0, :cond_1

    .line 1592
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 1602
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    .end local v2    # "kid":Ljava/util/logging/Logger;
    .end local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .local v4, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :goto_1
    :try_start_1
    iput-object p1, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 1603
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 1604
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    .line 1606
    :cond_0
    if-nez v4, :cond_2

    .line 1608
    new-instance v3, Ljava/util/logging/LogManager$LoggerWeakRef;

    iget-object v5, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v5, p0}, Ljava/util/logging/LogManager$LoggerWeakRef;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1610
    .end local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .restart local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :goto_2
    :try_start_2
    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    invoke-direct {v5, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/logging/LogManager$LoggerWeakRef;->setParentRef(Ljava/lang/ref/WeakReference;)V

    .line 1611
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    invoke-direct {p0}, Ljava/util/logging/Logger;->updateEffectiveLevel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    .line 1576
    return-void

    .line 1595
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    .restart local v2    # "kid":Ljava/util/logging/Logger;
    :cond_1
    const/4 v3, 0x0

    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    goto :goto_0

    .line 1581
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    .end local v2    # "kid":Ljava/util/logging/Logger;
    .end local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6

    throw v5

    .restart local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    goto :goto_3

    .end local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .restart local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_2
    move-object v3, v4

    .end local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .restart local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    goto :goto_2

    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_3
    move-object v4, v3

    .restart local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    goto :goto_1
.end method

.method private declared-synchronized findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "useCallersClassLoader"    # Z

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    .line 1412
    if-nez p1, :cond_0

    monitor-exit p0

    .line 1413
    return-object v5

    .line 1416
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1419
    .local v2, "currentLocale":Ljava/util/Locale;
    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1420
    iget-object v4, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1419
    if-eqz v4, :cond_1

    .line 1421
    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 1424
    :cond_1
    :try_start_1
    const-string/jumbo v4, "sun.util.logging.resources.logging"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1425
    invoke-static {v2}, Ljava/util/logging/Logger;->findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    .line 1426
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    .line 1427
    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    .line 1428
    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4

    .line 1433
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1434
    .local v1, "cl":Ljava/lang/ClassLoader;
    if-nez v1, :cond_3

    .line 1435
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 1438
    :cond_3
    :try_start_3
    invoke-static {p1, v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    .line 1439
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    .line 1440
    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    .line 1441
    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v4

    .line 1442
    :catch_0
    move-exception v3

    .line 1447
    .local v3, "ex":Ljava/util/MissingResourceException;
    if-eqz p2, :cond_4

    .line 1449
    :try_start_4
    invoke-direct {p0}, Ljava/util/logging/Logger;->getCallersClassLoader()Ljava/lang/ClassLoader;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 1450
    .local v0, "callersClassLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    .line 1452
    :try_start_5
    invoke-static {p1, v2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    .line 1454
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    .line 1455
    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    .line 1456
    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_5
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v4

    .line 1457
    :catch_1
    move-exception v3

    .line 1464
    .end local v0    # "callersClassLoader":Ljava/lang/ClassLoader;
    :cond_4
    :try_start_6
    sget-boolean v4, Ljava/util/logging/Logger$LoggerHelper;->allowStackWalkSearch:Z

    if-eqz v4, :cond_5

    .line 1465
    invoke-direct {p0, p1, v2, v1}, Ljava/util/logging/Logger;->findResourceBundleFromStack(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    :cond_5
    monitor-exit p0

    .line 1467
    return-object v5

    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "currentLocale":Ljava/util/Locale;
    .end local v3    # "ex":Ljava/util/MissingResourceException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized findResourceBundleFromStack(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "cl"    # Ljava/lang/ClassLoader;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    .line 1481
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-static {v6}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1482
    .local v5, "stack":[Ljava/lang/StackTraceElement;
    const/4 v4, 0x0

    .line 1483
    .local v4, "ix":I
    :goto_0
    const/4 v1, 0x0

    .line 1485
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1487
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-nez v1, :cond_0

    monitor-exit p0

    .line 1507
    return-object v7

    .line 1490
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1491
    .local v0, "cl2":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    .line 1492
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1494
    :cond_1
    if-ne p3, v0, :cond_2

    .line 1482
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1498
    :cond_2
    move-object p3, v0

    .line 1500
    :try_start_3
    invoke-static {p1, p2, p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v6

    iput-object v6, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    .line 1501
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    .line 1502
    iput-object p2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    .line 1503
    iget-object v6, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v6

    .end local v0    # "cl2":Ljava/lang/ClassLoader;
    .end local v4    # "ix":I
    .end local v5    # "stack":[Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1504
    .restart local v0    # "cl2":Ljava/lang/ClassLoader;
    .restart local v4    # "ix":I
    .restart local v5    # "stack":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/util/MissingResourceException;
    goto :goto_2

    .line 1486
    .end local v0    # "cl2":Ljava/lang/ClassLoader;
    .end local v2    # "ex":Ljava/util/MissingResourceException;
    .restart local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    .local v3, "ignored":Ljava/lang/ClassNotFoundException;
    goto :goto_1
.end method

.method private static findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1378
    new-instance v0, Ljava/util/logging/Logger$1;

    invoke-direct {v0, p0}, Ljava/util/logging/Logger$1;-><init>(Ljava/util/Locale;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public static getAnonymousLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/logging/Logger;->getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 5
    .param p0, "resourceBundleName"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 531
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 533
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->drainLoggerRefQueueBounded()V

    .line 535
    new-instance v1, Ljava/util/logging/Logger;

    .line 536
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v3

    .line 535
    const/4 v4, 0x0

    invoke-direct {v1, v4, p0, v3}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 537
    .local v1, "result":Ljava/util/logging/Logger;
    const/4 v3, 0x1

    iput-boolean v3, v1, Ljava/util/logging/Logger;->anonymous:Z

    .line 538
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    .line 539
    .local v2, "root":Ljava/util/logging/Logger;
    invoke-direct {v1, v2}, Ljava/util/logging/Logger;->doSetParent(Ljava/util/logging/Logger;)V

    .line 540
    return-object v1
.end method

.method private getCallersClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 281
    iget-object v1, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 282
    iget-object v0, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 281
    :cond_0
    return-object v0
.end method

.method private getEffectiveResourceBundleName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1680
    move-object v1, p0

    .line 1681
    .local v1, "target":Ljava/util/logging/Logger;
    :goto_0
    if-eqz v1, :cond_1

    .line 1682
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v0

    .line 1683
    .local v0, "rbn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1684
    return-object v0

    .line 1686
    :cond_0
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v1

    goto :goto_0

    .line 1688
    .end local v0    # "rbn":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static final getGlobal()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 393
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/logging/Logger;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "resourceBundleName"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 442
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v0

    .line 443
    .local v0, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, v0}, Ljava/util/logging/Logger;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 445
    .local v1, "result":Ljava/util/logging/Logger;
    iget-object v2, v1, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 456
    invoke-direct {v1, p1, v0}, Ljava/util/logging/Logger;->setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 463
    :cond_0
    return-object v1

    .line 457
    :cond_1
    iget-object v2, v1, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 461
    const-string/jumbo v4, " != "

    .line 460
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
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 474
    .local v0, "manager":Ljava/util/logging/LogManager;
    const-string/jumbo v2, "sun.util.logging.resources.logging"

    invoke-virtual {v0, p0, v2}, Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 475
    .local v1, "result":Ljava/util/logging/Logger;
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

    .prologue
    .local p1, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 272
    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 275
    .local v0, "callersClassLoader":Ljava/lang/ClassLoader;
    :cond_0
    if-eqz v0, :cond_1

    .line 276
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    .line 271
    :cond_1
    return-void
.end method

.method private declared-synchronized setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "callersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 1518
    if-nez p1, :cond_0

    monitor-exit p0

    .line 1519
    return-void

    .line 1522
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Ljava/util/logging/Logger;->setCallersClassLoaderRef(Ljava/lang/Class;)V

    .line 1523
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1527
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    .line 1528
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

    .line 1529
    const-string/jumbo v2, ""

    .line 1528
    invoke-direct {v0, v1, p1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1531
    :cond_1
    :try_start_1
    iput-object p1, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1517
    return-void
.end method

.method private updateEffectiveLevel()V
    .locals 5

    .prologue
    .line 1643
    iget-object v4, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    if-eqz v4, :cond_0

    .line 1644
    iget-object v4, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    .line 1655
    .local v2, "newLevelValue":I
    :goto_0
    iget v4, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ne v4, v2, :cond_2

    .line 1656
    return-void

    .line 1646
    .end local v2    # "newLevelValue":I
    :cond_0
    iget-object v4, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    if-eqz v4, :cond_1

    .line 1647
    iget-object v4, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget v2, v4, Ljava/util/logging/Logger;->levelValue:I

    .restart local v2    # "newLevelValue":I
    goto :goto_0

    .line 1650
    .end local v2    # "newLevelValue":I
    :cond_1
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    .restart local v2    # "newLevelValue":I
    goto :goto_0

    .line 1659
    :cond_2
    iput v2, p0, Ljava/util/logging/Logger;->levelValue:I

    .line 1664
    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 1665
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1666
    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 1667
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    invoke-virtual {v3}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Logger;

    .line 1668
    .local v1, "kid":Ljava/util/logging/Logger;
    if-eqz v1, :cond_3

    .line 1669
    invoke-direct {v1}, Ljava/util/logging/Logger;->updateEffectiveLevel()V

    .line 1665
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1638
    .end local v0    # "i":I
    .end local v1    # "kid":Ljava/util/logging/Logger;
    .end local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_4
    return-void
.end method


# virtual methods
.method public addHandler(Ljava/util/logging/Handler;)V
    .locals 1
    .param p1, "handler"    # Ljava/util/logging/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1317
    invoke-virtual {p1}, Ljava/util/logging/Handler;->getClass()Ljava/lang/Class;

    .line 1318
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1319
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    return-void
.end method

.method public config(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1190
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    .line 1191
    return-void

    .line 1193
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1189
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    .prologue
    .line 1004
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    .line 1005
    return-void

    .line 1007
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v1, "ENTRY"

    invoke-virtual {p0, v0, p1, p2, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/Object;

    .prologue
    .line 1023
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    .line 1024
    return-void

    .line 1026
    :cond_0
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    .line 1027
    .local v5, "params":[Ljava/lang/Object;
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v4, "ENTRY {0}"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1022
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1044
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    .line 1045
    return-void

    .line 1047
    :cond_0
    const-string/jumbo v4, "ENTRY"

    .line 1048
    .local v4, "msg":Ljava/lang/String;
    if-nez p3, :cond_1

    .line 1049
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    return-void

    .line 1052
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p3

    if-ge v6, v0, :cond_2

    .line 1053
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

    .line 1052
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1055
    :cond_2
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    .prologue
    .line 1069
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    .line 1070
    return-void

    .line 1072
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v1, "RETURN"

    invoke-virtual {p0, v0, p1, p2, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 1089
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    .line 1090
    return-void

    .line 1092
    :cond_0
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v6, v0

    .line 1093
    .local v6, "params":[Ljava/lang/Object;
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v4, "RETURN {0}"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1088
    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1206
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    .line 1207
    return-void

    .line 1209
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1222
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    .line 1223
    return-void

    .line 1225
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1221
    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1238
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    .line 1239
    return-void

    .line 1241
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1237
    return-void
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public getHandlers()[Ljava/util/logging/Handler;
    .locals 2

    .prologue
    .line 1345
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Ljava/util/logging/Logger;->emptyHandlers:[Ljava/util/logging/Handler;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Handler;

    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 2

    .prologue
    .line 552
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getUseParentHandlers()Z
    .locals 1

    .prologue
    .line 1371
    iget-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1174
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    .line 1175
    return-void

    .line 1177
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1173
    return-void
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;

    .prologue
    .line 1290
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v1, Ljava/util/logging/Logger;->offValue:I

    if-ne v0, v1, :cond_1

    .line 1291
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1293
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 655
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    .line 656
    :cond_0
    return-void

    .line 658
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 659
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 654
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/Object;

    .prologue
    .line 674
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    iget v3, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v3, Ljava/util/logging/Logger;->offValue:I

    if-ne v2, v3, :cond_1

    .line 675
    :cond_0
    return-void

    .line 677
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 678
    .local v0, "lr":Ljava/util/logging/LogRecord;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 679
    .local v1, "params":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 680
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 673
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 720
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    .line 721
    :cond_0
    return-void

    .line 723
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 724
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 725
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 719
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 695
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    .line 696
    :cond_0
    return-void

    .line 698
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 699
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 700
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 694
    return-void
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .locals 6
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 601
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/logging/Level;->intValue()I

    move-result v3

    iget v4, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v3, v4, :cond_0

    iget v3, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v4, Ljava/util/logging/Logger;->offValue:I

    if-ne v3, v4, :cond_1

    .line 602
    :cond_0
    return-void

    .line 604
    :cond_1
    iget-object v2, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 605
    .local v2, "theFilter":Ljava/util/logging/Filter;
    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 612
    :cond_2
    move-object v1, p0

    .line 613
    .local v1, "logger":Ljava/util/logging/Logger;
    :goto_0
    if-eqz v1, :cond_5

    .line 614
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 615
    .local v0, "handler":Ljava/util/logging/Handler;
    invoke-virtual {v0, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 614
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 606
    .end local v0    # "handler":Ljava/util/logging/Handler;
    .end local v1    # "logger":Ljava/util/logging/Logger;
    :cond_3
    return-void

    .line 618
    .restart local v1    # "logger":Ljava/util/logging/Logger;
    :cond_4
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getUseParentHandlers()Z

    move-result v3

    if-nez v3, :cond_6

    .line 600
    :cond_5
    return-void

    .line 622
    :cond_6
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v1

    goto :goto_0
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    .line 747
    :cond_0
    return-void

    .line 749
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 750
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 752
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 745
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "param1"    # Ljava/lang/Object;

    .prologue
    .line 771
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    iget v3, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v3, Ljava/util/logging/Logger;->offValue:I

    if-ne v2, v3, :cond_1

    .line 772
    :cond_0
    return-void

    .line 774
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 775
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 777
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    .line 778
    .local v1, "params":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 779
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 770
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 829
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    .line 830
    :cond_0
    return-void

    .line 832
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 833
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 836
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 828
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;

    .prologue
    .line 798
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    .line 799
    :cond_0
    return-void

    .line 801
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 802
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 805
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 797
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;

    .prologue
    .line 877
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    .line 878
    :cond_0
    return-void

    .line 880
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 881
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 883
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "param1"    # Ljava/lang/Object;

    .prologue
    .line 908
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    iget v3, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v3, Ljava/util/logging/Logger;->offValue:I

    if-ne v2, v3, :cond_1

    .line 909
    :cond_0
    return-void

    .line 911
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 912
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 914
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    .line 915
    .local v1, "params":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 916
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    .line 907
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 978
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    .line 979
    :cond_0
    return-void

    .line 981
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 982
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 985
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    .line 977
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "params"    # [Ljava/lang/Object;

    .prologue
    .line 941
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    .line 942
    :cond_0
    return-void

    .line 944
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 945
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 948
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    .line 940
    return-void
.end method

.method final removeChildLogger(Ljava/util/logging/LogManager$LoggerWeakRef;)V
    .locals 4
    .param p1, "child"    # Ljava/util/logging/LogManager$LoggerWeakRef;

    .prologue
    .line 1624
    sget-object v3, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1625
    :try_start_0
    iget-object v2, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1626
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 1627
    .local v1, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-ne v1, p1, :cond_0

    .line 1628
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1629
    return-void

    .end local v1    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_1
    monitor-exit v3

    .line 1623
    return-void

    .line 1624
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .locals 1
    .param p1, "handler"    # Ljava/util/logging/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1332
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1333
    if-nez p1, :cond_0

    .line 1334
    return-void

    .line 1336
    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1331
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 0
    .param p1, "newFilter"    # Ljava/util/logging/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 579
    iput-object p1, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 577
    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 2
    .param p1, "newLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1263
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1264
    sget-object v1, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1265
    :try_start_0
    iput-object p1, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    .line 1266
    invoke-direct {p0}, Ljava/util/logging/Logger;->updateEffectiveLevel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1262
    return-void

    .line 1264
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setLogManager(Ljava/util/logging/LogManager;)V
    .locals 0
    .param p1, "manager"    # Ljava/util/logging/LogManager;

    .prologue
    .line 298
    iput-object p1, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    .line 297
    return-void
.end method

.method public setParent(Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "parent"    # Ljava/util/logging/Logger;

    .prologue
    .line 1567
    if-nez p1, :cond_0

    .line 1568
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1570
    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 1571
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->doSetParent(Ljava/util/logging/Logger;)V

    .line 1566
    return-void
.end method

.method public setUseParentHandlers(Z)V
    .locals 0
    .param p1, "useParentHandlers"    # Z

    .prologue
    .line 1360
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1361
    iput-boolean p1, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    .line 1359
    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1142
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    .line 1143
    return-void

    .line 1145
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1141
    return-void
.end method

.method public throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 1118
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v2, Ljava/util/logging/Logger;->offValue:I

    if-ne v1, v2, :cond_1

    .line 1119
    :cond_0
    return-void

    .line 1121
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v2, "THROW"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1122
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1125
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 1117
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1158
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ge v0, v1, :cond_0

    .line 1159
    return-void

    .line 1161
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1157
    return-void
.end method
