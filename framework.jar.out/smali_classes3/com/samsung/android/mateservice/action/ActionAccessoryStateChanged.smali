.class public Lcom/samsung/android/mateservice/action/ActionAccessoryStateChanged;
.super Lcom/samsung/android/mateservice/action/ActionBase;
.source "ActionAccessoryStateChanged.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActStateChanged"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMateSvcBase:Lcom/samsung/android/mateservice/MateSvcBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mateservice/MateSvcBase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "base"    # Lcom/samsung/android/mateservice/MateSvcBase;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/mateservice/action/ActionBase;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/mateservice/action/ActionAccessoryStateChanged;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/samsung/android/mateservice/action/ActionAccessoryStateChanged;->mMateSvcBase:Lcom/samsung/android/mateservice/MateSvcBase;

    .line 20
    return-void
.end method

.method private getLength([B)I
    .locals 1
    .param p1, "object"    # [B

    .prologue
    .line 82
    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getUniqueKey([B)Ljava/util/UUID;
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 86
    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 14
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "extra"    # I

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    const-string/jumbo v8, "ActStateChanged"

    const-string/jumbo v9, "ActionAccessoryStateChanged no bundle"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    const/4 v8, 0x0

    return-object v8

    .line 33
    :cond_0
    const-string/jumbo v8, "attached"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 34
    .local v4, "isAttached":Z
    const-string/jumbo v8, "data"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 35
    .local v0, "accessoryData":[B
    const-string/jumbo v8, "extraData"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 37
    .local v3, "extraData":[B
    if-nez v0, :cond_1

    .line 38
    iget-object v8, p0, Lcom/samsung/android/mateservice/action/ActionAccessoryStateChanged;->mMateSvcBase:Lcom/samsung/android/mateservice/MateSvcBase;

    const-string/jumbo v9, "ActStateChanged"

    const-string/jumbo v10, "wrong parameter %s %d %d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 39
    invoke-direct {p0, v3}, Lcom/samsung/android/mateservice/action/ActionAccessoryStateChanged;->getLength([B)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v11, v13

    .line 38
    invoke-static {v9, v10, v11}, Lcom/samsung/android/mateservice/MateLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/samsung/android/mateservice/MateSvcBase;->appendHistory(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    const/4 v8, 0x0

    return-object v8

    .line 44
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/mateservice/action/ActionAccessoryStateChanged;->getUniqueKey([B)Ljava/util/UUID;

    move-result-object v5

    .line 45
    .local v5, "uniqueKey":Ljava/util/UUID;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 46
    .local v6, "timeStamp":J
    const-string/jumbo v8, "timeStamp"

    invoke-virtual {p1, v8, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 48
    iget-object v8, p0, Lcom/samsung/android/mateservice/action/ActionAccessoryStateChanged;->mMateSvcBase:Lcom/samsung/android/mateservice/MateSvcBase;

    invoke-interface {v8}, Lcom/samsung/android/mateservice/MateSvcBase;->getAccessoryMgr()Lcom/samsung/android/mateservice/AccessoryMgr;

    move-result-object v8

    invoke-virtual {v8, v4, v5, p1}, Lcom/samsung/android/mateservice/AccessoryMgr;->update(ZLjava/util/UUID;Landroid/os/Bundle;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 49
    iget-object v8, p0, Lcom/samsung/android/mateservice/action/ActionAccessoryStateChanged;->mMateSvcBase:Lcom/samsung/android/mateservice/MateSvcBase;

    const-string/jumbo v9, "ActStateChanged"

    const-string/jumbo v10, "not found matched with key[%s] attached[%s]"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/mateservice/MateLog;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 49
    invoke-static {v9, v10, v11}, Lcom/samsung/android/mateservice/MateLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v6, v7, v9, v10}, Lcom/samsung/android/mateservice/MateSvcBase;->appendHistory(JLjava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/mateservice/action/ActionAccessoryStateChanged;->mMateSvcBase:Lcom/samsung/android/mateservice/MateSvcBase;

    const-string/jumbo v9, "ActStateChanged"

    const-string/jumbo v10, "accessory state changed %s %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    .line 54
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/mateservice/MateLog;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 53
    invoke-static {v9, v10, v11}, Lcom/samsung/android/mateservice/MateLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v6, v7, v9, v10}, Lcom/samsung/android/mateservice/MateSvcBase;->appendHistory(JLjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    const/4 v1, 0x0

    .line 59
    .local v1, "connection":Lcom/samsung/android/mateservice/AgentConnection;
    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/mateservice/action/ActionAccessoryStateChanged;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/mateservice/AgentConnection;->getConnection(Landroid/content/Context;)Lcom/samsung/android/mateservice/AgentConnection;

    move-result-object v1

    .line 60
    .local v1, "connection":Lcom/samsung/android/mateservice/AgentConnection;
    if-eqz v1, :cond_4

    .line 61
    invoke-virtual {v1}, Lcom/samsung/android/mateservice/AgentConnection;->getService()Lcom/samsung/android/mateservice/IAgentService;

    move-result-object v8

    .line 62
    const v9, 0x210001

    .line 61
    invoke-interface {v8, v9, p1}, Lcom/samsung/android/mateservice/IAgentService;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 72
    if-eqz v1, :cond_3

    .line 73
    invoke-virtual {v1}, Lcom/samsung/android/mateservice/AgentConnection;->close()V

    .line 61
    :cond_3
    return-object v8

    .line 64
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/mateservice/action/ActionAccessoryStateChanged;->mMateSvcBase:Lcom/samsung/android/mateservice/MateSvcBase;

    const-string/jumbo v9, "ActStateChanged"

    const-string/jumbo v10, "failed to connect agent svc"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/samsung/android/mateservice/MateSvcBase;->appendHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    if-eqz v1, :cond_5

    .line 73
    invoke-virtual {v1}, Lcom/samsung/android/mateservice/AgentConnection;->close()V

    .line 77
    .end local v1    # "connection":Lcom/samsung/android/mateservice/AgentConnection;
    :cond_5
    :goto_0
    const/4 v8, 0x0

    return-object v8

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isDebugLogLevel()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isRoDebugLevelMid()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 69
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :cond_7
    if-eqz v1, :cond_5

    .line 73
    invoke-virtual {v1}, Lcom/samsung/android/mateservice/AgentConnection;->close()V

    goto :goto_0

    .line 71
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 72
    if-eqz v1, :cond_8

    .line 73
    invoke-virtual {v1}, Lcom/samsung/android/mateservice/AgentConnection;->close()V

    .line 71
    :cond_8
    throw v8
.end method
