.class public Lcom/cmdm/control/threadfactory/c;
.super Ljava/lang/Object;


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

    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cH:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cI:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cJ:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cK:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cL:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cM:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    new-instance v0, Lcom/cmdm/control/threadfactory/d;

    invoke-direct {v0}, Lcom/cmdm/control/threadfactory/d;-><init>()V

    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static B(I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    new-instance v0, Lcom/cmdm/control/threadfactory/e;

    invoke-direct {v0}, Lcom/cmdm/control/threadfactory/e;-><init>()V

    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static C(I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    new-instance v0, Lcom/cmdm/control/threadfactory/f;

    invoke-direct {v0}, Lcom/cmdm/control/threadfactory/f;-><init>()V

    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    const-class v1, Lcom/cmdm/control/threadfactory/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cH:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cH:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cH:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

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

    const-class v1, Lcom/cmdm/control/threadfactory/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cI:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/cmdm/control/threadfactory/c;->A(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cI:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cI:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

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

    new-instance v0, Lcom/cmdm/control/threadfactory/d;

    invoke-direct {v0}, Lcom/cmdm/control/threadfactory/d;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static bJ()Ljava/util/concurrent/ExecutorService;
    .locals 1

    new-instance v0, Lcom/cmdm/control/threadfactory/e;

    invoke-direct {v0}, Lcom/cmdm/control/threadfactory/e;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 2

    const-class v1, Lcom/cmdm/control/threadfactory/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cJ:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/cmdm/control/threadfactory/c;->B(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cJ:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cJ:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

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

    const-class v1, Lcom/cmdm/control/threadfactory/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cK:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/cmdm/control/threadfactory/c;->C(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cK:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cK:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

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

    const-class v1, Lcom/cmdm/control/threadfactory/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cL:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/cmdm/control/threadfactory/c;->B(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cL:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cL:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

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

    const-class v1, Lcom/cmdm/control/threadfactory/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cM:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cmdm/control/threadfactory/c;->bJ()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/threadfactory/c;->cM:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/cmdm/control/threadfactory/c;->cM:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
