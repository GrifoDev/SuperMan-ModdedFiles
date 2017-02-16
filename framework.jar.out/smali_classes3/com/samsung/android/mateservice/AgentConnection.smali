.class public final Lcom/samsung/android/mateservice/AgentConnection;
.super Ljava/lang/Object;
.source "AgentConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AgentConn"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/samsung/android/mateservice/IAgentService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/samsung/android/mateservice/IAgentService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;
    .param p3, "service"    # Lcom/samsung/android/mateservice/IAgentService;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/mateservice/AgentConnection;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/samsung/android/mateservice/AgentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 23
    iput-object p3, p0, Lcom/samsung/android/mateservice/AgentConnection;->mService:Lcom/samsung/android/mateservice/IAgentService;

    .line 20
    return-void
.end method

.method public static getConnection(Landroid/content/Context;)Lcom/samsung/android/mateservice/AgentConnection;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 37
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 38
    .local v0, "blockQueue":Ljava/util/concurrent/BlockingDeque;, "Ljava/util/concurrent/BlockingDeque<Lcom/samsung/android/mateservice/IAgentService;>;"
    new-instance v3, Lcom/samsung/android/mateservice/AgentConnection$1;

    invoke-direct {v3, v0}, Lcom/samsung/android/mateservice/AgentConnection$1;-><init>(Ljava/util/concurrent/BlockingDeque;)V

    .line 60
    .local v3, "serviceConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.android.mateagent"

    const-string/jumbo v5, "com.samsung.android.mateagent.interact.AgentService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string/jumbo v4, "SYSTEM"

    invoke-static {v4}, Lcom/samsung/android/mateservice/FwDependency;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v4

    .line 68
    invoke-static {p0, v1, v3, v6, v4}, Lcom/samsung/android/mateservice/FwDependency;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    .line 74
    .local v2, "ret":Z
    if-nez v2, :cond_0

    .line 75
    const-string/jumbo v4, "AgentConn"

    const-string/jumbo v5, "failed to bind agent svc agent"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/mateservice/MateLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    const/4 v4, 0x0

    return-object v4

    .line 79
    :cond_0
    new-instance v5, Lcom/samsung/android/mateservice/AgentConnection;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mateservice/IAgentService;

    invoke-direct {v5, p0, v3, v4}, Lcom/samsung/android/mateservice/AgentConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/samsung/android/mateservice/IAgentService;)V

    return-object v5
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/mateservice/AgentConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/mateservice/AgentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 27
    return-void
.end method

.method public getService()Lcom/samsung/android/mateservice/IAgentService;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/mateservice/AgentConnection;->mService:Lcom/samsung/android/mateservice/IAgentService;

    return-object v0
.end method
