.class public Lcom/samsung/android/mateservice/action/ActionAgentSvcRelay;
.super Lcom/samsung/android/mateservice/action/ActionBase;
.source "ActionAgentSvcRelay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActAgentRelay"


# instance fields
.field private final mBaseSvc:Lcom/samsung/android/mateservice/MateSvcBase;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mateservice/MateSvcBase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "base"    # Lcom/samsung/android/mateservice/MateSvcBase;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/mateservice/action/ActionBase;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/mateservice/action/ActionAgentSvcRelay;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/samsung/android/mateservice/action/ActionAgentSvcRelay;->mBaseSvc:Lcom/samsung/android/mateservice/MateSvcBase;

    .line 16
    return-void
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "action"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 23
    const/4 v1, 0x0

    .line 25
    .local v1, "connection":Lcom/samsung/android/mateservice/AgentConnection;
    iget-object v3, p0, Lcom/samsung/android/mateservice/action/ActionAgentSvcRelay;->mBaseSvc:Lcom/samsung/android/mateservice/MateSvcBase;

    const-string/jumbo v4, "ActAgentRelay"

    const-string/jumbo v5, "relay action 0x%x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/samsung/android/mateservice/MateLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/mateservice/MateSvcBase;->appendHistory(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/mateservice/action/ActionAgentSvcRelay;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/mateservice/AgentConnection;->getConnection(Landroid/content/Context;)Lcom/samsung/android/mateservice/AgentConnection;

    move-result-object v1

    .line 29
    .local v1, "connection":Lcom/samsung/android/mateservice/AgentConnection;
    if-eqz v1, :cond_3

    .line 30
    invoke-static {p3}, Lcom/samsung/android/mateservice/action/ActionBase;->convertSysActionToAppAction(I)I

    move-result v0

    .line 31
    .local v0, "agentSvcAction":I
    if-eq v0, v10, :cond_1

    .line 32
    invoke-virtual {v1}, Lcom/samsung/android/mateservice/AgentConnection;->getService()Lcom/samsung/android/mateservice/IAgentService;

    move-result-object v3

    invoke-interface {v3, v0, p1}, Lcom/samsung/android/mateservice/IAgentService;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Lcom/samsung/android/mateservice/AgentConnection;->close()V

    .line 32
    :cond_0
    return-object v3

    .line 35
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/mateservice/action/ActionAgentSvcRelay;->mBaseSvc:Lcom/samsung/android/mateservice/MateSvcBase;

    const-string/jumbo v4, "ActAgentRelay"

    const-string/jumbo v5, "invalid action 0x%x / 0x%x"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/mateservice/MateSvcBase;->appendHistory(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v3, p0, Lcom/samsung/android/mateservice/action/ActionAgentSvcRelay;->mBaseSvc:Lcom/samsung/android/mateservice/MateSvcBase;

    const-string/jumbo v4, "ActAgentRelay"

    const/4 v5, -0x1

    invoke-interface {v3, v5, v4}, Lcom/samsung/android/mateservice/MateSvcBase;->throwSecurityException(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .end local v0    # "agentSvcAction":I
    :goto_0
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v1}, Lcom/samsung/android/mateservice/AgentConnection;->close()V

    .line 50
    .end local v1    # "connection":Lcom/samsung/android/mateservice/AgentConnection;
    :cond_2
    :goto_1
    return-object v9

    .line 38
    .restart local v1    # "connection":Lcom/samsung/android/mateservice/AgentConnection;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/mateservice/action/ActionAgentSvcRelay;->mBaseSvc:Lcom/samsung/android/mateservice/MateSvcBase;

    const-string/jumbo v4, "ActAgentRelay"

    const-string/jumbo v5, "failed to connect agent svc"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/mateservice/MateSvcBase;->appendHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 41
    .end local v1    # "connection":Lcom/samsung/android/mateservice/AgentConnection;
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isDebugLogLevel()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isRoDebugLevelMid()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 43
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    :cond_5
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v1}, Lcom/samsung/android/mateservice/AgentConnection;->close()V

    goto :goto_1

    .line 45
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 46
    if-eqz v1, :cond_6

    .line 47
    invoke-virtual {v1}, Lcom/samsung/android/mateservice/AgentConnection;->close()V

    .line 45
    :cond_6
    throw v3
.end method
