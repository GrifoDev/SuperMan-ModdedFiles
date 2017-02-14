.class final Lcom/android/server/pm/EphemeralResolverConnection;
.super Ljava/lang/Object;
.source "EphemeralResolverConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;,
        Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE_TIMEOUT_MS:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/internal/app/IEphemeralResolver;)Lcom/android/internal/app/IEphemeralResolver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/pm/EphemeralResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    return-void

    :cond_0
    const/16 v0, 0xc8

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    invoke-direct {v0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;)V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private bindLocked()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v11, 0x4000001

    invoke-virtual {v3, v8, v9, v11, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    sget-wide v8, Lcom/android/server/pm/EphemeralResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    sub-long v4, v8, v0

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-gtz v3, :cond_2

    new-instance v3, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v8, "Didn\'t bind to resolver in time."

    invoke-direct {v3, v8}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getRemoteInstanceLazy()Lcom/android/internal/app/IEphemeralResolver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->bindLocked()V

    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private throwIfCalledOnMainThread()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot invoke on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string/jumbo v4, "bound="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "true"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->getRemoteInstanceLazy()Lcom/android/internal/app/IEphemeralResolver;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/app/IEphemeralResolver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-interface {v2, p1, v4}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v3

    return-void

    :cond_0
    :try_start_2
    const-string/jumbo v2, "false"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final getEphemeralResolveInfoList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->throwIfCalledOnMainThread()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->getRemoteInstanceLazy()Lcom/android/internal/app/IEphemeralResolver;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->getEphemeralResolveInfoList(Lcom/android/internal/app/IEphemeralResolver;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit v3

    const/4 v2, 0x0

    return-object v2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_1
    move-exception v0

    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_3
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v4, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    monitor-exit v3

    throw v2

    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2
.end method
