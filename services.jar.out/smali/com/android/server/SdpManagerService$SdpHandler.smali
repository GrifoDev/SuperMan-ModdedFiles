.class Lcom/android/server/SdpManagerService$SdpHandler;
.super Landroid/os/Handler;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "SdpManagerServiceHandler"


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v0, "SdpHandler"

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->-wrap7(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24

    const-string/jumbo v4, "SdpHandler"

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-wrap7(Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v4, "SdpManagerServiceHandler"

    const-string/jumbo v5, "received MSG_SYSTEM_READY. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    new-instance v5, Lcom/android/server/SdpServiceKeeper;

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get10()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/SdpServiceKeeper;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->-set4(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpServiceKeeper;)Lcom/android/server/SdpServiceKeeper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get10()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->-set2(Lcom/android/server/SdpManagerService;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get5(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get4(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap0(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;

    move-result-object v12

    if-eqz v12, :cond_2

    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v14, v4, :cond_2

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SDP_USER_0 getEngineListLocked :: engine found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get4(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap1(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v4, "SdpManagerService"

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get6(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get8(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpServiceKeeper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/SdpServiceKeeper;->loadPolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t find engine info ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    monitor-exit v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->-set5(Lcom/android/server/SdpManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get10()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->-set0(Lcom/android/server/SdpManagerService;Lcom/sec/knox/container/util/EnterprisePartitionManager;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    new-instance v1, Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get10()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get9(Lcom/android/server/SdpManagerService;)Lcom/android/server/pm/TimaHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v5}, Lcom/android/server/SdpManagerService;->-get2(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v6}, Lcom/android/server/SdpManagerService;->-get1(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;-><init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;Lcom/android/server/SdpManagerService$SecureFileSystemManager;)V

    invoke-static {v8, v1}, Lcom/android/server/SdpManagerService;->-set3(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get7(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->-wrap2(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get7(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->-wrap1(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get7(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->-wrap5(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get6(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v16

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get6(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4, v11}, Lcom/android/server/SdpManagerService;->-wrap2(Lcom/android/server/SdpManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4, v11}, Lcom/android/server/SdpManagerService;->-wrap6(Lcom/android/server/SdpManagerService;I)I

    goto :goto_4

    :cond_5
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get10()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/server/SdpManagerService$ActionReceiver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/SdpManagerService$ActionReceiver;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$ActionReceiver;)V

    invoke-virtual {v4, v5, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v4, "SdpManagerServiceHandler"

    const-string/jumbo v5, "registered boradcast receiver for SDP.. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "package"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get10()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/server/SdpManagerService$ActionReceiver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/SdpManagerService$ActionReceiver;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$ActionReceiver;)V

    const-string/jumbo v6, "com.samsung.container.ACCESS_RECEIVER"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v13, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get6(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "SdpManagerServiceHandler"

    const-string/jumbo v5, "Creating default engine."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get10()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_6
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, v20

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Creating default engine for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x6

    const/4 v8, 0x0

    move v4, v3

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    const-string/jumbo v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Creating default engine info for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get2(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-static {v4, v1, v5, v0}, Lcom/android/server/SdpManagerService;->-wrap3(Lcom/android/server/SdpManagerService;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    if-nez v9, :cond_7

    const-string/jumbo v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to create keys for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get5(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v8, 0x0

    move-object v5, v1

    invoke-static/range {v4 .. v9}, Lcom/android/server/SdpManagerService;->-wrap5(Lcom/android/server/SdpManagerService;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILcom/samsung/android/knox/sdp/core/SdpCreationParam;[B)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4, v9}, Lcom/android/server/SdpManagerService;->-wrap14(Lcom/android/server/SdpManagerService;[B)V

    if-eqz v18, :cond_8

    const-string/jumbo v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to add default engine. ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_6
    monitor-exit v23

    goto/16 :goto_5

    :cond_8
    :try_start_2
    const-string/jumbo v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Default engine has been created successfully for userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v4

    monitor-exit v23

    throw v4

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get6(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4, v3}, Lcom/android/server/SdpManagerService;->-wrap1(Lcom/android/server/SdpManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unlock SDP at the first boot for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v1, v5, v6}, Lcom/android/server/SdpManagerService;->-wrap8(Lcom/android/server/SdpManagerService;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_b

    const-string/jumbo v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Default engine has been unlocked successfully for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->-set1(Lcom/android/server/SdpManagerService;Z)Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to unlock default engine for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", errno : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_c
    const-string/jumbo v4, "SdpManagerServiceHandler"

    const-string/jumbo v5, "Init SKMM Library after first boot."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->-get2(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/knox/container/util/KeyManagementUtil;->initSkmmLibrary()Z

    goto :goto_7

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string/jumbo v4, "userId"

    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "pkgName"

    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v17

    invoke-static {v4, v3, v0}, Lcom/android/server/SdpManagerService;->-wrap10(Lcom/android/server/SdpManagerService;ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
