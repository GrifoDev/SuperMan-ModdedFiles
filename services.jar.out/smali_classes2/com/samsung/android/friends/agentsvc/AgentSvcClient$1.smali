.class Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;
.super Ljava/lang/Object;
.source "AgentSvcClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/friends/agentsvc/AgentSvcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v1, "AgentSvcClient"

    const-string/jumbo v2, "onServiceConnected binder[%s] %s %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    iget-object v4, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {v4}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->-get1(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {v4}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->-get0(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {v1}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->-get1(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {v1, v7}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->-set0(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;Z)Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {v1}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->-get0(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->clear()V

    iget-object v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {v1}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->-get0(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/android/mateservice/IAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mateservice/IAgentService;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    const-string/jumbo v1, "AgentSvcClient"

    const-string/jumbo v2, "FSvc is connected"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {p2}, Lcom/samsung/android/mateservice/IAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mateservice/IAgentService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->-wrap0(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;Landroid/os/IInterface;)Landroid/os/IInterface;

    const-string/jumbo v1, "AgentSvcClient"

    const-string/jumbo v2, "FSvc is re-connected"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->-wrap0(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;Landroid/os/IInterface;)Landroid/os/IInterface;

    const-string/jumbo v0, "AgentSvcClient"

    const-string/jumbo v1, "FSvc is disconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
