.class public Ljava/lang/ThreadGroup;
.super Ljava/lang/Object;
.source "ThreadGroup.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final mainThreadGroup:Ljava/lang/ThreadGroup;

.field static final systemThreadGroup:Ljava/lang/ThreadGroup;


# instance fields
.field daemon:Z

.field destroyed:Z

.field groups:[Ljava/lang/ThreadGroup;

.field maxPriority:I

.field nUnstartedThreads:I

.field name:Ljava/lang/String;

.field ngroups:I

.field nthreads:I

.field private final parent:Ljava/lang/ThreadGroup;

.field threads:[Ljava/lang/Thread;

.field vmAllowSuspension:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/ThreadGroup;

    invoke-direct {v0}, Ljava/lang/ThreadGroup;-><init>()V

    sput-object v0, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    new-instance v0, Ljava/lang/ThreadGroup;

    sget-object v1, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    const-string/jumbo v2, "main"

    invoke-direct {v0, v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    sput-object v0, Ljava/lang/ThreadGroup;->mainThreadGroup:Ljava/lang/ThreadGroup;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    const-string/jumbo v0, "system"

    iput-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/ThreadGroup;->checkParentAccess(Ljava/lang/ThreadGroup;)Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/Void;Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Void;Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    iput-object p3, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    iget v0, p2, Ljava/lang/ThreadGroup;->maxPriority:I

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    iget-boolean v0, p2, Ljava/lang/ThreadGroup;->daemon:Z

    iput-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    iget-boolean v0, p2, Ljava/lang/ThreadGroup;->vmAllowSuspension:Z

    iput-boolean v0, p0, Ljava/lang/ThreadGroup;->vmAllowSuspension:Z

    iput-object p2, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-direct {p2, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/ThreadGroup;)V

    return-void
.end method

.method private final add(Ljava/lang/ThreadGroup;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-nez v0, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/ThreadGroup;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    :cond_1
    :goto_0
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    aput-object p1, v0, v1

    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->ngroups:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static checkParentAccess(Ljava/lang/ThreadGroup;)Ljava/lang/Void;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private enumerate([Ljava/lang/Thread;IZ)I
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    monitor-exit p0

    return v5

    :cond_0
    :try_start_1
    iget v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    array-length v5, p1

    sub-int/2addr v5, p2

    if-le v4, v5, :cond_1

    array-length v5, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int v4, v5, p2

    :cond_1
    const/4 v1, 0x0

    move v2, p2

    :goto_0
    if-ge v1, v4, :cond_2

    :try_start_2
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 p2, v2, 0x1

    :try_start_3
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v1

    aput-object v5, p1, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    :try_start_4
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v5, :cond_4

    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :goto_2
    monitor-exit p0

    if-eqz p3, :cond_5

    const/4 v1, 0x0

    move p2, v2

    :goto_3
    if-ge v1, v3, :cond_6

    aget-object v5, v0, v1

    const/4 v6, 0x1

    invoke-direct {v5, p1, p2, v6}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit p0

    throw v5

    :cond_5
    move p2, v2

    :cond_6
    return p2

    :catchall_1
    move-exception v5

    move p2, v2

    goto :goto_4

    :cond_7
    move p2, v2

    goto :goto_1
.end method

.method private enumerate([Ljava/lang/ThreadGroup;IZ)I
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit p0

    return v5

    :cond_0
    :try_start_1
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    array-length v4, p1

    sub-int/2addr v4, p2

    if-le v2, v4, :cond_1

    array-length v4, p1

    sub-int v2, v4, p2

    :cond_1
    if-lez v2, :cond_2

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    const/4 v5, 0x0

    invoke-static {v4, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    :cond_2
    if-eqz p3, :cond_3

    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v4, :cond_4

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    if-eqz p3, :cond_5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v4, v0, v1

    const/4 v5, 0x1

    invoke-direct {v4, p1, p2, v5}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_5
    return p2
.end method

.method private remove(Ljava/lang/Thread;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v2, p0, Ljava/lang/ThreadGroup;->nthreads:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private remove(Ljava/lang/ThreadGroup;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_4

    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v4, p0, Ljava/lang/ThreadGroup;->ngroups:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    :cond_1
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->notifyAll()V

    :cond_2
    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->daemon:Z

    if-eqz v1, :cond_3

    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v1, :cond_3

    iget v1, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    if-nez v1, :cond_3

    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private stopOrSuspend(Z)Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v1

    if-ne v5, v4, :cond_0

    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/Thread;->suspend()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    :try_start_1
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/Thread;->stop()V

    goto :goto_1

    :cond_2
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v5, :cond_3

    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v5, v0, v1

    invoke-direct {v5, p1}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    move-result v5

    if-nez v5, :cond_4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    return v3
.end method


# virtual methods
.method public activeCount()I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    iget v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    return v3
.end method

.method public activeGroupCount()I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    move v2, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    return v2
.end method

.method add(Ljava/lang/Thread;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    if-nez v0, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    :cond_1
    :goto_0
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    aput-object p1, v0, v1

    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Thread;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method addUnstarted()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public allowThreadSuspension(Z)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->vmAllowSuspension:Z

    if-nez p1, :cond_0

    invoke-static {}, Lsun/misc/VM;->unsuspendSomeThreads()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final checkAccess()V
    .locals 0

    return-void
.end method

.method public final destroy()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    iget-boolean v3, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-nez v3, :cond_0

    iget v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-lez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v3}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;

    :goto_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    const/4 v3, 0x0

    iput v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    const/4 v3, 0x0

    iput v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-direct {v3, p0}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/ThreadGroup;)V

    :cond_5
    return-void
.end method

.method public enumerate([Ljava/lang/Thread;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/Thread;Z)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;Z)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    move-result v0

    return v0
.end method

.method public final getMaxPriority()I
    .locals 1

    iget v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Ljava/lang/ThreadGroup;
    .locals 1

    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->checkAccess()V

    :cond_0
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public final interrupt()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->interrupt()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    return-void
.end method

.method public final isDaemon()Z
    .locals 1

    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    return v0
.end method

.method public declared-synchronized isDestroyed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public list()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/ThreadGroup;->list(Ljava/io/PrintStream;I)V

    return-void
.end method

.method list(Ljava/io/PrintStream;I)V
    .locals 5

    monitor-enter p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    :try_start_0
    const-string/jumbo v4, " "

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v1, v4, :cond_2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_1

    const-string/jumbo v4, " "

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    invoke-virtual {v4, p1, p2}, Ljava/lang/ThreadGroup;->list(Ljava/io/PrintStream;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_4
    return-void
.end method

.method public final parentOf(Ljava/lang/ThreadGroup;)Z
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object p1, p1, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final resume()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Thread;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    return-void
.end method

.method public final setDaemon(Z)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->daemon:Z

    return-void
.end method

.method public final setMaxPriority(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    const/4 v3, 0x1

    if-ge p1, v3, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/16 v3, 0xa

    if-le p1, v3, :cond_1

    const/16 p1, 0xa

    :cond_1
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    iget v3, v3, Ljava/lang/ThreadGroup;->maxPriority:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    iput v3, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v3, p1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_4
    return-void
.end method

.method public final stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    :cond_0
    return-void
.end method

.method public final suspend()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->suspend()V

    :cond_0
    return-void
.end method

.method threadStartFailed(Ljava/lang/Thread;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/Thread;)V

    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method threadTerminated(Ljava/lang/Thread;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/Thread;)V

    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->notifyAll()V

    :cond_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v0, :cond_1

    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    if-nez v0, :cond_1

    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",maxpri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v1, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p1, p2}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    instance-of v1, p2, Ljava/lang/ThreadDeath;

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in thread \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
