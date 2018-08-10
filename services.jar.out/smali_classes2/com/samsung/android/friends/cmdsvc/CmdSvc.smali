.class public final Lcom/samsung/android/friends/cmdsvc/CmdSvc;
.super Ljava/lang/Object;
.source "CmdSvc.java"

# interfaces
.implements Lcom/samsung/android/friends/cmdsvc/CmdSvcOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;
    }
.end annotation


# static fields
.field private static final MSG_TYPE_CMD:I = 0x0

.field private static final MSG_TYPE_MAP:I = 0x1

.field private static final MSG_TYPE_SYS_EVENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CmdSvc"

.field private static final WAIT_TIME:J = 0x7d0L


# instance fields
.field private final mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Landroid/os/Messenger;

.field private volatile mConnectedAtLeastOnce:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mReplyMessenger:Landroid/os/Messenger;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/friends/cmdsvc/CmdSvc;)Ljava/util/concurrent/BlockingDeque;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/friends/cmdsvc/CmdSvc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/friends/cmdsvc/CmdSvc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/friends/cmdsvc/CmdSvc;Landroid/os/Messenger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z

    new-instance v1, Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;-><init>(Lcom/samsung/android/friends/cmdsvc/CmdSvc;)V

    iput-object v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private connect(J)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.samsung.android.friendscmder"

    const-string/jumbo v7, "com.samsung.android.friendscmder.FrsShellCmdExecutor"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mConnection:Landroid/content/ServiceConnection;

    const-string/jumbo v7, "SYSTEM"

    invoke-static {v7}, Lcom/samsung/android/friends/common/FwDependency;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-static {v4, v5, v6, v2, v7}, Lcom/samsung/android/friends/common/FwDependency;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, p1, p2, v5}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v4

    if-eqz v4, :cond_2

    :goto_1
    return v2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "CmdSvc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to bind svc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.friendscmder.FrsShellCmdExecutor"

    invoke-static {v6}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public static createClosableInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/samsung/android/friends/cmdsvc/CmdSvc;
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "CmdSvc"

    const-string/jumbo v2, "wrong current thread"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->connect(J)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->close()V

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private getClient()Landroid/os/Messenger;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mClient:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setClient(Landroid/os/Messenger;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mClient:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V

    return-void
.end method

.method public command(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string/jumbo v5, "paramStrA0"

    invoke-virtual {v4, v5, p1}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string/jumbo v5, "sysSvcVer"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v4, "CmdSvc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "command "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v3

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public mappedAccessory([B[BZ)Z
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5, p1}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string/jumbo v5, "extraData"

    invoke-virtual {v4, v5, p2}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string/jumbo v5, "attached"

    invoke-virtual {v4, v5, p3}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Z)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string/jumbo v5, "sysSvcVer"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v5, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v4, "CmdSvc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mappedAccessory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v3

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sysEvent(Landroid/os/Bundle;)Z
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v4, "sysSvcVer"

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v4, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v4, "CmdSvc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sysEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v3

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
