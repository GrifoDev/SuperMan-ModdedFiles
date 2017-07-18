.class public Lsun/misc/Cleaner;
.super Ljava/lang/ref/PhantomReference;
.source "Cleaner.java"


# static fields
.field private static final dummyQueue:Ljava/lang/ref/ReferenceQueue;

.field private static first:Lsun/misc/Cleaner;


# instance fields
.field private next:Lsun/misc/Cleaner;

.field private prev:Lsun/misc/Cleaner;

.field private final thunk:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lsun/misc/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lsun/misc/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v1, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    iput-object v1, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    iput-object p2, p0, Lsun/misc/Cleaner;->thunk:Ljava/lang/Runnable;

    return-void
.end method

.method private static declared-synchronized add(Lsun/misc/Cleaner;)Lsun/misc/Cleaner;
    .locals 2

    const-class v1, Lsun/misc/Cleaner;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    if-eqz v0, :cond_0

    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    iput-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    iput-object p0, v0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    :cond_0
    sput-object p0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lsun/misc/Cleaner;

    invoke-direct {v0, p0, p1}, Lsun/misc/Cleaner;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lsun/misc/Cleaner;->add(Lsun/misc/Cleaner;)Lsun/misc/Cleaner;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized remove(Lsun/misc/Cleaner;)Z
    .locals 3

    const-class v1, Lsun/misc/Cleaner;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    :cond_1
    :goto_0
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    iget-object v2, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    iput-object v2, v0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    :cond_2
    iget-object v0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    iget-object v2, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    iput-object v2, v0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    :cond_3
    iput-object p0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    iput-object p0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clean()V
    .locals 2

    invoke-static {p0}, Lsun/misc/Cleaner;->remove(Lsun/misc/Cleaner;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/misc/Cleaner;->thunk:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lsun/misc/Cleaner$1;

    invoke-direct {v1, p0, v0}, Lsun/misc/Cleaner$1;-><init>(Lsun/misc/Cleaner;Ljava/lang/Throwable;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    goto :goto_0
.end method
