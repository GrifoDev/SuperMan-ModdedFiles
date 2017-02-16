.class public Ljava/sql/DriverManager;
.super Ljava/lang/Object;
.source "DriverManager.java"


# static fields
.field static final SET_LOG_PERMISSION:Ljava/sql/SQLPermission;

.field private static volatile logStream:Ljava/io/PrintStream;

.field private static final logSync:Ljava/lang/Object;

.field private static volatile logWriter:Ljava/io/PrintWriter;

.field private static volatile loginTimeout:I

.field private static final registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/sql/DriverInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    const/4 v0, 0x0

    sput v0, Ljava/sql/DriverManager;->loginTimeout:I

    .line 90
    sput-object v1, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    .line 91
    sput-object v1, Ljava/sql/DriverManager;->logStream:Ljava/io/PrintStream;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/sql/DriverManager;->logSync:Ljava/lang/Object;

    .line 104
    invoke-static {}, Ljava/sql/DriverManager;->loadInitialDrivers()V

    .line 105
    const-string/jumbo v0, "JDBC DriverManager initialized"

    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/sql/SQLPermission;

    const-string/jumbo v1, "setLog"

    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    .line 113
    sput-object v0, Ljava/sql/DriverManager;->SET_LOG_PERMISSION:Ljava/sql/SQLPermission;

    .line 84
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized deregisterDriver(Ljava/sql/Driver;)V
    .locals 4
    .param p0, "driver"    # Ljava/sql/Driver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    const-class v2, Ljava/sql/DriverManager;

    monitor-enter v2

    .line 321
    if-nez p0, :cond_0

    monitor-exit v2

    .line 322
    return-void

    .line 325
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DriverManager.deregisterDriver: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/sql/DriverInfo;

    invoke-direct {v0, p0}, Ljava/sql/DriverInfo;-><init>(Ljava/sql/Driver;)V

    .line 328
    .local v0, "aDriver":Ljava/sql/DriverInfo;
    sget-object v1, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/sql/DriverManager;->isDriverAllowed(Ljava/sql/Driver;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    sget-object v1, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 320
    return-void

    .line 334
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "aDriver":Ljava/sql/DriverInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 337
    .restart local v0    # "aDriver":Ljava/sql/DriverInfo;
    :cond_2
    :try_start_2
    const-string/jumbo v1, "    couldn\'t find driver to unload"

    invoke-static {v1}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static getConnection(Ljava/lang/String;)Ljava/sql/Connection;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 236
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 237
    .local v0, "info":Ljava/util/Properties;
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)Ljava/sql/Connection;

    move-result-object v1

    return-object v1
.end method

.method public static getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 212
    .local v0, "info":Ljava/util/Properties;
    if-eqz p1, :cond_0

    .line 213
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_0
    if-eqz p2, :cond_1

    .line 216
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_1
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)Ljava/sql/Connection;

    move-result-object v1

    return-object v1
.end method

.method public static getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method private static getConnection(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)Ljava/sql/Connection;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/util/Properties;
    .param p2, "callerCL"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 546
    const-class v6, Ljava/sql/DriverManager;

    monitor-enter v6

    .line 548
    if-nez p2, :cond_0

    .line 549
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    :cond_0
    monitor-exit v6

    .line 553
    if-nez p0, :cond_1

    .line 554
    new-instance v5, Ljava/sql/SQLException;

    const-string/jumbo v6, "The url cannot be null"

    const-string/jumbo v7, "08001"

    invoke-direct {v5, v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 546
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 557
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DriverManager.getConnection(\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 561
    const/4 v4, 0x0

    .line 563
    .local v4, "reason":Ljava/sql/SQLException;
    sget-object v5, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v4    # "reason":Ljava/sql/SQLException;
    .local v1, "aDriver$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/DriverInfo;

    .line 566
    .local v0, "aDriver":Ljava/sql/DriverInfo;
    iget-object v5, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-static {v5, p2}, Ljava/sql/DriverManager;->isDriverAllowed(Ljava/sql/Driver;Ljava/lang/ClassLoader;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 568
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    trying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 569
    iget-object v5, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-interface {v5, p0, p1}, Ljava/sql/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v2

    .line 570
    .local v2, "con":Ljava/sql/Connection;
    if-eqz v2, :cond_2

    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getConnection returning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 573
    return-object v2

    .line 575
    .end local v2    # "con":Ljava/sql/Connection;
    :catch_0
    move-exception v3

    .line 576
    .local v3, "ex":Ljava/sql/SQLException;
    if-nez v4, :cond_2

    .line 577
    move-object v4, v3

    .local v4, "reason":Ljava/sql/SQLException;
    goto :goto_0

    .line 582
    .end local v3    # "ex":Ljava/sql/SQLException;
    .end local v4    # "reason":Ljava/sql/SQLException;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    skipping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    .end local v0    # "aDriver":Ljava/sql/DriverInfo;
    :cond_4
    if-eqz v4, :cond_5

    .line 589
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getConnection failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 590
    throw v4

    .line 593
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getConnection: no suitable driver found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 594
    new-instance v5, Ljava/sql/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No suitable driver found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "08001"

    invoke-direct {v5, v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method

.method public static getDriver(Ljava/lang/String;)Ljava/sql/Driver;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DriverManager.getDriver(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 261
    .local v2, "callerClassLoader":Ljava/lang/ClassLoader;
    sget-object v4, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aDriver$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/DriverInfo;

    .line 264
    .local v0, "aDriver":Ljava/sql/DriverInfo;
    iget-object v4, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-static {v4, v2}, Ljava/sql/DriverManager;->isDriverAllowed(Ljava/sql/Driver;Ljava/lang/ClassLoader;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 266
    :try_start_0
    iget-object v4, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-interface {v4, p0}, Ljava/sql/Driver;->acceptsURL(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDriver returning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 269
    iget-object v4, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 276
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    skipping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    .end local v0    # "aDriver":Ljava/sql/DriverInfo;
    :cond_2
    const-string/jumbo v4, "getDriver: no suitable driver"

    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 282
    new-instance v4, Ljava/sql/SQLException;

    const-string/jumbo v5, "No suitable driver"

    const-string/jumbo v6, "08001"

    invoke-direct {v4, v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 272
    .restart local v0    # "aDriver":Ljava/sql/DriverInfo;
    :catch_0
    move-exception v3

    .local v3, "sqe":Ljava/sql/SQLException;
    goto :goto_0
.end method

.method public static getDrivers()Ljava/util/Enumeration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/sql/Driver;",
            ">;"
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 352
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 354
    .local v3, "result":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/sql/Driver;>;"
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 357
    .local v2, "callerClassLoader":Ljava/lang/ClassLoader;
    sget-object v4, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aDriver$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/DriverInfo;

    .line 360
    .local v0, "aDriver":Ljava/sql/DriverInfo;
    iget-object v4, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-static {v4, v2}, Ljava/sql/DriverManager;->isDriverAllowed(Ljava/sql/Driver;Ljava/lang/ClassLoader;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 361
    iget-object v4, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 363
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    skipping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    .end local v0    # "aDriver":Ljava/sql/DriverInfo;
    :cond_1
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    return-object v4
.end method

.method public static getLogStream()Ljava/io/PrintStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 436
    sget-object v0, Ljava/sql/DriverManager;->logStream:Ljava/io/PrintStream;

    return-object v0
.end method

.method public static getLogWriter()Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public static getLoginTimeout()I
    .locals 1

    .prologue
    .line 389
    sget v0, Ljava/sql/DriverManager;->loginTimeout:I

    return v0
.end method

.method private static isDriverAllowed(Ljava/sql/Driver;Ljava/lang/ClassLoader;)Z
    .locals 5
    .param p0, "driver"    # Ljava/sql/Driver;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 458
    const/4 v2, 0x0

    .line 459
    .local v2, "result":Z
    if-eqz p0, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 462
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 467
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    .line 470
    :cond_0
    :goto_1
    return v2

    .line 463
    .restart local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 464
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 467
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static loadInitialDrivers()V
    .locals 8

    .prologue
    .line 476
    :try_start_0
    new-instance v4, Ljava/sql/DriverManager$1;

    invoke-direct {v4}, Ljava/sql/DriverManager$1;-><init>()V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    new-instance v4, Ljava/sql/DriverManager$2;

    invoke-direct {v4}, Ljava/sql/DriverManager$2;-><init>()V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DriverManager.initialize: jdbc.drivers = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 520
    if-eqz v1, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 521
    :cond_0
    return-void

    .line 481
    :catch_0
    move-exception v3

    .line 482
    .local v3, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    .local v1, "drivers":Ljava/lang/String;
    goto :goto_0

    .line 523
    .end local v1    # "drivers":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "driversList":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number of Drivers:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 525
    const/4 v4, 0x0

    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 527
    .local v0, "aDriver":Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DriverManager.Initialize: loading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 529
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 528
    const/4 v7, 0x1

    invoke-static {v0, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 525
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 530
    :catch_1
    move-exception v3

    .line 531
    .restart local v3    # "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DriverManager.Initialize: load failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 473
    .end local v0    # "aDriver":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public static println(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 445
    sget-object v1, Ljava/sql/DriverManager;->logSync:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_0
    sget-object v0, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 447
    sget-object v0, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    sget-object v0, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 444
    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerDriver(Ljava/sql/Driver;)V
    .locals 3
    .param p0, "driver"    # Ljava/sql/Driver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-class v1, Ljava/sql/DriverManager;

    monitor-enter v1

    .line 300
    if-eqz p0, :cond_0

    .line 301
    :try_start_0
    sget-object v0, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/sql/DriverInfo;

    invoke-direct {v2, p0}, Ljava/sql/DriverInfo;-><init>(Ljava/sql/Driver;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerDriver: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 297
    return-void

    .line 304
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setLogStream(Ljava/io/PrintStream;)V
    .locals 3
    .param p0, "out"    # Ljava/io/PrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 414
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 415
    .local v0, "sec":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 416
    sget-object v1, Ljava/sql/DriverManager;->SET_LOG_PERMISSION:Ljava/sql/SQLPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 419
    :cond_0
    sput-object p0, Ljava/sql/DriverManager;->logStream:Ljava/io/PrintStream;

    .line 420
    if-eqz p0, :cond_1

    .line 421
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    sput-object v1, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    .line 412
    :goto_0
    return-void

    .line 423
    :cond_1
    sput-object v2, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method public static setLogWriter(Ljava/io/PrintWriter;)V
    .locals 3
    .param p0, "out"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 165
    .local v0, "sec":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 166
    sget-object v1, Ljava/sql/DriverManager;->SET_LOG_PERMISSION:Ljava/sql/SQLPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 168
    :cond_0
    sput-object v2, Ljava/sql/DriverManager;->logStream:Ljava/io/PrintStream;

    .line 169
    sput-object p0, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    .line 162
    return-void
.end method

.method public static setLoginTimeout(I)V
    .locals 0
    .param p0, "seconds"    # I

    .prologue
    .line 378
    sput p0, Ljava/sql/DriverManager;->loginTimeout:I

    .line 377
    return-void
.end method
