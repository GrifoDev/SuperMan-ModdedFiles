.class Lcom/android/server/net/NetworkPolicyManagerService$22;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    sparse-switch v32, :sswitch_data_0

    const/16 v32, 0x0

    return v32

    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v15, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v32, 0x1

    return v32

    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-static {v0, v15, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v32, 0x1

    return v32

    :sswitch_2
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    :try_start_0
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    const/16 v34, 0x4

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap0(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/net/LinkProperties;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get8(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v32

    const-string/jumbo v34, "CscFeature_RIL_SupportVolte"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_4

    if-eqz v10, :cond_4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v32

    if-eqz v32, :cond_4

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit v33

    const/16 v32, 0x1

    return v32

    :catchall_0
    move-exception v32

    monitor-exit v33

    throw v32

    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    if-eqz v32, :cond_5

    const/16 v26, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-static {v0, v15, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    const/16 v26, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v32, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    move-object/from16 v0, v32

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v32

    sget-object v33, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v32, 0x1

    return v32

    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Boolean;

    if-eqz v30, :cond_9

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v27

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v31

    invoke-static {v0, v15, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v21

    if-eqz v7, :cond_a

    if-eqz v21, :cond_a

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    const/16 v32, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v33, v0

    :goto_7
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_a

    aget-object v20, v21, v32

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v34, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    move-object/from16 v0, v34

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v34, 0x40000000    # 2.0f

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v29 .. v29}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v32, v32, 0x1

    goto :goto_7

    :cond_a
    const/16 v32, 0x1

    return v32

    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    const/4 v6, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v27

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v14, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-static {v0, v15, v1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v32, 0x1

    return v32

    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/Long;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v22, v16

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v16

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_a
    const/16 v32, 0x1

    return v32

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap26(Lcom/android/server/net/NetworkPolicyManagerService;)V

    const/16 v32, 0x1

    return v32

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap16(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const/16 v36, 0x20

    shl-long v34, v34, v36

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    or-long v34, v34, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap18(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    const/16 v32, 0x1

    return v32

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap16(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    const/16 v32, 0x1

    return v32

    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap27(Lcom/android/server/net/NetworkPolicyManagerService;II)V

    const/16 v32, 0x1

    return v32

    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap17(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    const/16 v32, 0x1

    return v32

    :sswitch_c
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v0, v5, :cond_d

    const/4 v13, 0x1

    :goto_b
    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    :goto_c
    const/16 v32, 0x1

    return v32

    :cond_d
    const/4 v13, 0x0

    goto :goto_b

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveTempWhitelistLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap25(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->purgePowerSaveTempWhitelistLocked()V

    goto :goto_c

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const/16 v32, 0x1

    return v32

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const/16 v32, 0x1

    return v32

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const/16 v32, 0x1

    return v32

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get13()Z

    move-result v32

    if-eqz v32, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get14(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v32

    if-eqz v32, :cond_10

    :cond_f
    const/16 v32, 0x0

    :goto_d
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap19(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const/16 v32, 0x1

    return v32

    :cond_10
    const/16 v32, 0x1

    goto :goto_d

    :sswitch_11
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-static {v0, v4, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)V

    const/16 v32, 0x1

    return v32

    :catch_0
    move-exception v8

    goto/16 :goto_a

    :catch_1
    move-exception v8

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_4
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_5
        0xd -> :sswitch_11
        0x3e9 -> :sswitch_a
        0x3ea -> :sswitch_b
        0x3eb -> :sswitch_f
        0x3ec -> :sswitch_10
        0x3ed -> :sswitch_c
        0x3ee -> :sswitch_e
        0x3ef -> :sswitch_d
    .end sparse-switch
.end method
