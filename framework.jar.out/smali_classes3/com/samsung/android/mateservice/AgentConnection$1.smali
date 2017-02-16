.class final Lcom/samsung/android/mateservice/AgentConnection$1;
.super Ljava/lang/Object;
.source "AgentConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mateservice/AgentConnection;->getConnection(Landroid/content/Context;)Lcom/samsung/android/mateservice/AgentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field volatile mConnectedAtLeastOnce:Z

.field final synthetic val$blockQueue:Ljava/util/concurrent/BlockingDeque;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingDeque;)V
    .locals 1

    .prologue
    .line 38
    .local p1, "val$blockQueue":Ljava/util/concurrent/BlockingDeque;, "Ljava/util/concurrent/BlockingDeque<Lcom/samsung/android/mateservice/IAgentService;>;"
    iput-object p1, p0, Lcom/samsung/android/mateservice/AgentConnection$1;->val$blockQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mateservice/AgentConnection$1;->mConnectedAtLeastOnce:Z

    .line 38
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 43
    iget-boolean v1, p0, Lcom/samsung/android/mateservice/AgentConnection$1;->mConnectedAtLeastOnce:Z

    if-nez v1, :cond_0

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/mateservice/AgentConnection$1;->mConnectedAtLeastOnce:Z

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mateservice/AgentConnection$1;->val$blockQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-static {p2}, Lcom/samsung/android/mateservice/IAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mateservice/IAgentService;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    const-string/jumbo v1, "AgentConn"

    const-string/jumbo v2, "agentSvc is connected"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 56
    const-string/jumbo v0, "AgentConn"

    const-string/jumbo v1, "agentSvc is disconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    return-void
.end method
