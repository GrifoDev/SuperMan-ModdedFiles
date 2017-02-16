.class Ljava/lang/ApplicationShutdownHooks;
.super Ljava/lang/Object;
.source "ApplicationShutdownHooks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ApplicationShutdownHooks$1;
    }
.end annotation


# static fields
.field private static hooks:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    :try_start_0
    new-instance v1, Ljava/lang/ApplicationShutdownHooks$1;

    invoke-direct {v1}, Ljava/lang/ApplicationShutdownHooks$1;-><init>()V

    .line 42
    const/4 v2, 0x1

    .line 43
    const/4 v3, 0x0

    .line 42
    invoke-static {v2, v3, v1}, Ljava/lang/Shutdown;->add(IZLjava/lang/Runnable;)V

    .line 50
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v1, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .local v0, "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 51
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_0
    move-exception v0

    .line 54
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    sput-object v1, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized add(Ljava/lang/Thread;)V
    .locals 3
    .param p0, "hook"    # Ljava/lang/Thread;

    .prologue
    const-class v1, Ljava/lang/ApplicationShutdownHooks;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Shutdown in progress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Hook already running"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    sget-object v0, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Hook previously registered"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    sget-object v0, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p0, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 64
    return-void
.end method

.method static declared-synchronized remove(Ljava/lang/Thread;)Z
    .locals 3
    .param p0, "hook"    # Ljava/lang/Thread;

    .prologue
    const-class v1, Ljava/lang/ApplicationShutdownHooks;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Shutdown in progress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 84
    :cond_0
    if-nez p0, :cond_1

    .line 85
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_1
    sget-object v0, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static runHooks()V
    .locals 6

    .prologue
    .line 96
    const-class v5, Ljava/lang/ApplicationShutdownHooks;

    monitor-enter v5

    .line 97
    :try_start_0
    sget-object v4, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 98
    .local v2, "threads":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Thread;>;"
    const/4 v4, 0x0

    sput-object v4, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 101
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "hook$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 102
    .local v0, "hook":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 96
    .end local v0    # "hook":Ljava/lang/Thread;
    .end local v1    # "hook$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 104
    .restart local v1    # "hook$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 106
    .restart local v0    # "hook":Ljava/lang/Thread;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 107
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 94
    .end local v0    # "hook":Ljava/lang/Thread;
    .end local v3    # "x":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
