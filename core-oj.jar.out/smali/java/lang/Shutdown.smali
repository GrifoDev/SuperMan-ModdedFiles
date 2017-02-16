.class public Ljava/lang/Shutdown;
.super Ljava/lang/Object;
.source "Shutdown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Shutdown$Lock;
    }
.end annotation


# static fields
.field private static final FINALIZERS:I = 0x2

.field private static final HOOKS:I = 0x1

.field private static final MAX_SYSTEM_HOOKS:I = 0xa

.field private static final RUNNING:I

.field private static currentRunningHook:I

.field private static haltLock:Ljava/lang/Object;

.field private static final hooks:[Ljava/lang/Runnable;

.field private static lock:Ljava/lang/Object;

.field private static runFinalizersOnExit:Z

.field private static state:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    sput v1, Ljava/lang/Shutdown;->state:I

    .line 48
    sput-boolean v1, Ljava/lang/Shutdown;->runFinalizersOnExit:Z

    .line 56
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Runnable;

    sput-object v0, Ljava/lang/Shutdown;->hooks:[Ljava/lang/Runnable;

    .line 59
    sput v1, Ljava/lang/Shutdown;->currentRunningHook:I

    .line 63
    new-instance v0, Ljava/lang/Shutdown$Lock;

    invoke-direct {v0, v2}, Ljava/lang/Shutdown$Lock;-><init>(Ljava/lang/Shutdown$Lock;)V

    sput-object v0, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Shutdown$Lock;

    invoke-direct {v0, v2}, Ljava/lang/Shutdown$Lock;-><init>(Ljava/lang/Shutdown$Lock;)V

    sput-object v0, Ljava/lang/Shutdown;->haltLock:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(IZLjava/lang/Runnable;)V
    .locals 4
    .param p0, "slot"    # I
    .param p1, "registerShutdownInProgress"    # Z
    .param p2, "hook"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x1

    .line 98
    sget-object v1, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Ljava/lang/Shutdown;->hooks:[Ljava/lang/Runnable;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Shutdown hook at slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 102
    :cond_0
    if-nez p1, :cond_1

    .line 103
    :try_start_1
    sget v0, Ljava/lang/Shutdown;->state:I

    if-lez v0, :cond_3

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Shutdown in progress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    sget v0, Ljava/lang/Shutdown;->state:I

    if-gt v0, v2, :cond_2

    sget v0, Ljava/lang/Shutdown;->state:I

    if-ne v0, v2, :cond_3

    sget v0, Ljava/lang/Shutdown;->currentRunningHook:I

    if-gt p0, v0, :cond_3

    .line 107
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Shutdown in progress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_3
    sget-object v0, Ljava/lang/Shutdown;->hooks:[Ljava/lang/Runnable;

    aput-object p2, v0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 97
    return-void
.end method

.method static exit(I)V
    .locals 3
    .param p0, "status"    # I

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "runMoreFinalizers":Z
    sget-object v2, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 187
    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Ljava/lang/Shutdown;->runFinalizersOnExit:Z

    .line 188
    :cond_0
    sget v1, Ljava/lang/Shutdown;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    .end local v0    # "runMoreFinalizers":Z
    :goto_0
    :pswitch_0
    monitor-exit v2

    .line 207
    if-eqz v0, :cond_1

    .line 208
    invoke-static {}, Ljava/lang/Shutdown;->runAllFinalizers()V

    .line 209
    invoke-static {p0}, Ljava/lang/Shutdown;->halt(I)V

    .line 211
    :cond_1
    const-class v2, Ljava/lang/Shutdown;

    monitor-enter v2

    .line 215
    :try_start_1
    invoke-static {}, Ljava/lang/Shutdown;->sequence()V

    .line 216
    invoke-static {p0}, Ljava/lang/Shutdown;->halt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 184
    return-void

    .line 190
    .restart local v0    # "runMoreFinalizers":Z
    :pswitch_1
    const/4 v1, 0x1

    :try_start_2
    sput v1, Ljava/lang/Shutdown;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 195
    :pswitch_2
    if-eqz p0, :cond_2

    .line 197
    :try_start_3
    invoke-static {p0}, Ljava/lang/Shutdown;->halt(I)V

    goto :goto_0

    .line 202
    :cond_2
    sget-boolean v0, Ljava/lang/Shutdown;->runFinalizersOnExit:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v0, "runMoreFinalizers":Z
    goto :goto_0

    .line 211
    .end local v0    # "runMoreFinalizers":Z
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static halt(I)V
    .locals 2
    .param p0, "status"    # I

    .prologue
    .line 141
    sget-object v0, Ljava/lang/Shutdown;->haltLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-static {p0}, Ljava/lang/Shutdown;->halt0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 140
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static native halt0(I)V
.end method

.method private static native runAllFinalizers()V
.end method

.method private static runHooks()V
    .locals 6

    .prologue
    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v1, v4, :cond_1

    .line 120
    :try_start_0
    sget-object v5, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :try_start_1
    sput v1, Ljava/lang/Shutdown;->currentRunningHook:I

    .line 124
    sget-object v4, Ljava/lang/Shutdown;->hooks:[Ljava/lang/Runnable;

    aget-object v0, v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "hook":Ljava/lang/Runnable;
    :try_start_2
    monitor-exit v5

    .line 126
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 117
    .end local v0    # "hook":Ljava/lang/Runnable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "t":Ljava/lang/Throwable;
    instance-of v4, v2, Ljava/lang/ThreadDeath;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 129
    check-cast v3, Ljava/lang/ThreadDeath;

    .line 130
    .local v3, "td":Ljava/lang/ThreadDeath;
    throw v3

    .line 116
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "td":Ljava/lang/ThreadDeath;
    :cond_1
    return-void
.end method

.method private static sequence()V
    .locals 4

    .prologue
    .line 164
    sget-object v1, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    sget v2, Ljava/lang/Shutdown;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    monitor-exit v1

    .line 170
    invoke-static {}, Ljava/lang/Shutdown;->runHooks()V

    .line 172
    sget-object v2, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 173
    const/4 v1, 0x2

    :try_start_1
    sput v1, Ljava/lang/Shutdown;->state:I

    .line 174
    sget-boolean v0, Ljava/lang/Shutdown;->runFinalizersOnExit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v0, "rfoe":Z
    monitor-exit v2

    .line 176
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Shutdown;->runAllFinalizers()V

    .line 163
    :cond_1
    return-void

    .line 164
    .end local v0    # "rfoe":Z
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 172
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static setRunFinalizersOnExit(Z)V
    .locals 2
    .param p0, "run"    # Z

    .prologue
    .line 70
    sget-object v0, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    sput-boolean p0, Ljava/lang/Shutdown;->runFinalizersOnExit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static shutdown()V
    .locals 2

    .prologue
    .line 226
    sget-object v1, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    sget v0, Ljava/lang/Shutdown;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit v1

    .line 236
    const-class v0, Ljava/lang/Shutdown;

    monitor-enter v0

    .line 237
    :try_start_1
    invoke-static {}, Ljava/lang/Shutdown;->sequence()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    .line 225
    return-void

    .line 229
    :pswitch_1
    const/4 v0, 0x1

    :try_start_2
    sput v0, Ljava/lang/Shutdown;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 236
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
