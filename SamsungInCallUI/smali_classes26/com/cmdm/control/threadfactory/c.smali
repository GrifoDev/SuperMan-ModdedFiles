.class public Lcom/cmdm/control/threadfactory/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cH:Ljava/util/concurrent/ExecutorService;

.field private static cI:Ljava/util/concurrent/ExecutorService;

.field private static cJ:Ljava/util/concurrent/ExecutorService;

.field private static cK:Ljava/util/concurrent/ExecutorService;

.field private static cL:Ljava/util/concurrent/ExecutorService;

.field private static cM:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cH:Ljava/util/concurrent/ExecutorService;

    .line 19
    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cI:Ljava/util/concurrent/ExecutorService;

    .line 20
    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cJ:Ljava/util/concurrent/ExecutorService;

    .line 21
    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cK:Ljava/util/concurrent/ExecutorService;

    .line 22
    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cL:Ljava/util/concurrent/ExecutorService;

    .line 23
    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cM:Ljava/util/concurrent/ExecutorService;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(I)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "nThreads"    # I

    .prologue
    .line 86
    .line 87
    new-instance v0, Lcom/cmdm/control/threadfactory/d;

    invoke-direct {v0}, Lcom/cmdm/control/threadfactory/d;-><init>()V

    .line 86
    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static B(I)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "nThreads"    # I

    .prologue
    .line 97
    .line 98
    new-instance v0, Lcom/cmdm/control/threadfactory/e;

    invoke-direct {v0}, Lcom/cmdm/control/threadfactory/e;-><init>()V

    .line 97
    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static C(I)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "nThreads"    # I

    .prologue
    .line 108
    .line 109
    new-instance v0, Lcom/cmdm/control/threadfactory/f;

    invoke-direct {v0}, Lcom/cmdm/control/threadfactory/f;-><init>()V

    .line 108
    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 26
    const-class v1, Lcom/cmdm/control/threadfactory/c;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cH:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cH:Ljava/util/concurrent/ExecutorService;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cH:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 32
    return-void

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    const-class v1, Lcom/cmdm/control/threadfactory/c;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cI:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/cmdm/control/threadfactory/c;->A(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cI:Ljava/util/concurrent/ExecutorService;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cI:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 41
    return-void

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static bI()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/cmdm/control/threadfactory/d;

    invoke-direct {v0}, Lcom/cmdm/control/threadfactory/d;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method public static bJ()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/cmdm/control/threadfactory/e;

    invoke-direct {v0}, Lcom/cmdm/control/threadfactory/e;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    const-class v1, Lcom/cmdm/control/threadfactory/c;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cJ:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/cmdm/control/threadfactory/c;->B(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cJ:Ljava/util/concurrent/ExecutorService;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cJ:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static d(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    const-class v1, Lcom/cmdm/control/threadfactory/c;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cK:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/cmdm/control/threadfactory/c;->C(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cK:Ljava/util/concurrent/ExecutorService;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cK:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 59
    return-void

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static e(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    const-class v1, Lcom/cmdm/control/threadfactory/c;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cL:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/cmdm/control/threadfactory/c;->B(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cL:Ljava/util/concurrent/ExecutorService;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cL:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 68
    return-void

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static f(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 71
    const-class v1, Lcom/cmdm/control/threadfactory/c;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cM:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/cmdm/control/threadfactory/c;->bJ()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cM:Ljava/util/concurrent/ExecutorService;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cM:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 77
    return-void

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
