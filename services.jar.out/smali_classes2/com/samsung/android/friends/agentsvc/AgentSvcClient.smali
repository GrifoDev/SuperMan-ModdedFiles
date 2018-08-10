.class Lcom/samsung/android/friends/agentsvc/AgentSvcClient;
.super Ljava/lang/Object;
.source "AgentSvcClient.java"

# interfaces
.implements Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AgentSvcClient"

.field private static final WAIT_TIME:J = 0x7d0L


# instance fields
.field private final mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConnectedAtLeastOnce:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/os/IInterface;

.field private final mSvcCloseable:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    new-instance v0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;-><init>(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)V

    iput-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;

    return-void
.end method

.method private closedForced()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;->setContPreserved(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->close()V

    return-void
.end method

.method private getService()Landroid/os/IInterface;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isAlive()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setService(Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;

    invoke-interface {v0}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;->closeable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "AgentSvcClient"

    const-string/jumbo v1, "close"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;

    iput-boolean v3, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "AgentSvcClient"

    const-string/jumbo v1, "close - connection is remained"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method connect()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AgentSvcClient"

    const-string/jumbo v3, "FSvc is already connected"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v7

    :cond_0
    const-string/jumbo v2, "AgentSvcClient"

    const-string/jumbo v3, "Connection of FSvs is invalid"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->closedForced()V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.mateagent"

    const-string/jumbo v3, "com.samsung.android.mateagent.interact.AgentService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    const-string/jumbo v4, "SYSTEM"

    invoke-static {v4}, Lcom/samsung/android/friends/common/FwDependency;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v2, v1, v3, v7, v4}, Lcom/samsung/android/friends/common/FwDependency;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    invoke-direct {p0, v2}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "AgentSvcClient"

    const-string/jumbo v3, "bound but binder is null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->closedForced()V

    const-string/jumbo v2, "AgentSvcClient"

    const-string/jumbo v3, "not connected"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v6

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "AgentSvcClient"

    const-string/jumbo v3, "failed to bind FSvc"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :cond_4
    return v7
.end method

.method public execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mateservice/IAgentService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/mateservice/IAgentService;->executeSysAction(ILandroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v1
.end method
