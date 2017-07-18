.class public Lsun/nio/ch/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/ThreadPool$1;,
        Lsun/nio/ch/ThreadPool$DefaultThreadPoolHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_POOL_INITIAL_SIZE:Ljava/lang/String; = "java.nio.channels.DefaultThreadPool.initialSize"

.field private static final DEFAULT_THREAD_POOL_THREAD_FACTORY:Ljava/lang/String; = "java.nio.channels.DefaultThreadPool.threadFactory"

.field private static final defaultThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final isFixed:Z

.field private final poolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/nio/ch/ThreadPool$1;

    invoke-direct {v0}, Lsun/nio/ch/ThreadPool$1;-><init>()V

    sput-object v0, Lsun/nio/ch/ThreadPool;->defaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/nio/ch/ThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    iput-boolean p2, p0, Lsun/nio/ch/ThreadPool;->isFixed:Z

    iput p3, p0, Lsun/nio/ch/ThreadPool;->poolSize:I

    return-void
.end method

.method static create(ILjava/util/concurrent/ThreadFactory;)Lsun/nio/ch/ThreadPool;
    .locals 3

    if-gtz p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\'nThreads\' must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lsun/nio/ch/ThreadPool;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p0}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    return-object v1
.end method

.method static createDefault()Lsun/nio/ch/ThreadPool;
    .locals 9

    const/4 v2, 0x0

    invoke-static {}, Lsun/nio/ch/ThreadPool;->getDefaultThreadPoolInitialSize()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    :cond_0
    invoke-static {}, Lsun/nio/ch/ThreadPool;->getDefaultThreadPoolThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    if-nez v8, :cond_1

    sget-object v8, Lsun/nio/ch/ThreadPool;->defaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const v3, 0x7fffffff

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, Lsun/nio/ch/ThreadPool;

    invoke-direct {v3, v1, v2, v0}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    return-object v3
.end method

.method static defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    sget-object v0, Lsun/nio/ch/ThreadPool;->defaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method static getDefault()Lsun/nio/ch/ThreadPool;
    .locals 1

    sget-object v0, Lsun/nio/ch/ThreadPool$DefaultThreadPoolHolder;->defaultThreadPool:Lsun/nio/ch/ThreadPool;

    return-object v0
.end method

.method private static getDefaultThreadPoolInitialSize()I
    .locals 5

    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v3, "java.nio.channels.DefaultThreadPool.initialSize"

    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Value of property \'java.nio.channels.DefaultThreadPool.initialSize\' is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method private static getDefaultThreadPoolThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 8

    const/4 v7, 0x0

    new-instance v5, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v6, "java.nio.channels.DefaultThreadPool.threadFactory"

    invoke-direct {v5, v6}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v1, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v4

    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v4}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_2
    move-exception v2

    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_0
    return-object v7
.end method

.method public static wrap(Ljava/util/concurrent/ExecutorService;I)Lsun/nio/ch/ThreadPool;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "\'executor\' is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    instance-of v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_3

    move-object v1, p0

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    if-gez p1, :cond_2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    :cond_1
    :goto_0
    new-instance v1, Lsun/nio/ch/ThreadPool;

    invoke-direct {v1, p0, v2, p1}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    return-object v1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method executor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/ThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method isFixedThreadPool()Z
    .locals 1

    iget-boolean v0, p0, Lsun/nio/ch/ThreadPool;->isFixed:Z

    return v0
.end method

.method poolSize()I
    .locals 1

    iget v0, p0, Lsun/nio/ch/ThreadPool;->poolSize:I

    return v0
.end method
