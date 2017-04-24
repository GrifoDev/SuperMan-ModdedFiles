.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 88

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v76

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v76

    invoke-static {v0, v6, v13}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    iput-boolean v13, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v13, 0xc

    invoke-virtual {v6, v13}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v64

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v16, 0x7530

    move-object/from16 v0, v64

    move-wide/from16 v1, v16

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v13, v6}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v53, v6, -0x1

    :goto_1
    if-ltz v53, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_2

    :try_start_2
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v6}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_2
    add-int/lit8 v53, v53, -0x1

    goto :goto_1

    :catch_0
    move-exception v51

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to update time zone for: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v73

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :cond_3
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v53, v6, -0x1

    :goto_3
    if-ltz v53, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v6, :cond_4

    :try_start_5
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v6}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_4
    :goto_4
    add-int/lit8 v53, v53, -0x1

    goto :goto_3

    :catch_1
    move-exception v51

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to clear dns cache for: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v73

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :cond_5
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Landroid/net/ProxyInfo;

    if-eqz v71, :cond_6

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getKnoxVpnProfile()I

    move-result v6

    const/4 v13, 0x1

    if-ne v6, v13, :cond_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "skipping the proxy broadcast for applications added to knox vpn profile"

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/16 v66, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v40

    if-eqz v40, :cond_7

    const-string/jumbo v6, "packageName"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    :cond_7
    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    sget-object v12, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eqz v71, :cond_8

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->semGetUsername()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->semGetPassword()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v12

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v53, v6, -0x1

    :goto_5
    if-ltz v53, :cond_10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_a

    invoke-static/range {v66 .. v66}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v6

    if-eqz v6, :cond_b

    :cond_9
    :goto_6
    if-eqz v71, :cond_d

    :try_start_8
    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getEnterpriseProxy()I

    move-result v6

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v6, v0, :cond_d

    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_c

    sget-object v6, Landroid/sec/enterprise/proxy/EnterpriseProxyConstants;->LOCAL_ENTERPRISE_PROXY_WHITELIST:Ljava/util/List;

    move-object/from16 v0, v73

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string/jumbo v6, "connectivity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v43

    check-cast v43, Lcom/android/server/ConnectivityService;

    if-eqz v43, :cond_c

    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/16 v16, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->retrieveEnterpriseProxy(Z)Landroid/net/ProxyInfo;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/app/IApplicationThread;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_a
    :goto_7
    add-int/lit8 v53, v53, -0x1

    goto :goto_5

    :cond_b
    :try_start_9
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_9

    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v66

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_6

    :cond_c
    :try_start_a
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v71

    invoke-interface {v6, v0}, Landroid/app/IApplicationThread;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :catch_2
    move-exception v51

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to update http proxy for: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v73

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :cond_d
    if-eqz v9, :cond_e

    :try_start_c
    const-string/jumbo v6, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_e
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v6, v7, v8, v11, v12}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_7

    :cond_f
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface/range {v6 .. v12}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_7

    :cond_10
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v6, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    iput-boolean v13, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v13, 0x14

    invoke-virtual {v6, v13}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v64

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v16, 0x2710

    move-object/from16 v0, v64

    move-wide/from16 v1, v16

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v39

    invoke-static {v6, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap11(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_4
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v39

    invoke-static {v6, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap10(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_5
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityStarter;->doPendingActivityLaunchesLocked(Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_6
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/os/Bundle;

    const-string/jumbo v6, "pkg"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v6, "reason"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v6, "installPackageLI"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get9(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get9(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, -0x1

    invoke-virtual/range {v13 .. v22}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :goto_8
    monitor-exit v24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :cond_12
    :try_start_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v22}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception v6

    monitor-exit v24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_a
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v6}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    :sswitch_b
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v55

    if-nez v55, :cond_13

    return-void

    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v77, v0

    check-cast v77, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v77

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v69, v0

    if-nez v69, :cond_14

    return-void

    :cond_14
    :try_start_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v69

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v13, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v13, v17

    const v16, 0x10403c2

    move/from16 v0, v16

    invoke-virtual {v6, v0, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v81

    new-instance v6, Landroid/app/Notification$Builder;

    move-object/from16 v0, v44

    invoke-direct {v6, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x1080873

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, v81

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v16, 0x106005a

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Context;->getColor(I)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, v81

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v16, 0x10403c3

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v25, v0

    new-instance v28, Landroid/os/UserHandle;

    move-object/from16 v0, v77

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v28

    invoke-direct {v0, v13}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v24, 0x0

    const/high16 v26, 0x10000000

    const/16 v27, 0x0

    invoke-static/range {v23 .. v28}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_4

    move-result-object v28

    const/4 v6, 0x1

    :try_start_13
    new-array v0, v6, [I

    move-object/from16 v29, v0

    const-string/jumbo v24, "android"

    const-string/jumbo v25, "android"

    move-object/from16 v0, v77

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v30, v0

    const/16 v26, 0x0

    const v27, 0x10403c2

    move-object/from16 v23, v55

    invoke-interface/range {v23 .. v30}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_0

    :catch_3
    move-exception v50

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v50

    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "Unable to create context for heavy notification"

    move-object/from16 v0, v47

    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :sswitch_c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v23

    if-nez v23, :cond_15

    return-void

    :cond_15
    :try_start_15
    const-string/jumbo v6, "android"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x0

    const v17, 0x10403c2

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v6, v1, v2, v13}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_15

    goto/16 :goto_0

    :catch_5
    move-exception v50

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "Error canceling notification for service"

    move-object/from16 v0, v50

    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    const/16 v6, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    const/16 v6, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    const-wide/32 v16, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_8
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v6, v13, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Ljava/util/ArrayList;

    new-instance v82, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, v82

    move-object/from16 v1, p0

    move-object/from16 v2, v57

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    invoke-virtual/range {v82 .. v82}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v6, v0, v1}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v16, 0x10409ab

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v6, v13, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v6, v0, v1}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v6, v0, v1}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_16

    const/16 v63, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v6}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v6

    move/from16 v0, v63

    if-eq v6, v0, :cond_0

    if-eqz v63, :cond_17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v6}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_0

    :cond_16
    const/16 v63, 0x0

    goto :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v6}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-wrap15(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-wide/from16 v0, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_9
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v6}, Lcom/android/server/am/UserController;->startProfilesLocked()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_a
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v53, v6, -0x1

    :goto_a
    if-ltz v53, :cond_1a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    if-eqz v6, :cond_18

    :try_start_1a
    move-object/from16 v0, v73

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_19

    const/4 v6, 0x0

    :goto_b
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    :cond_18
    :goto_c
    add-int/lit8 v53, v53, -0x1

    goto :goto_a

    :cond_19
    const/4 v6, 0x1

    goto :goto_b

    :catch_6
    move-exception v51

    :try_start_1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to update preferences for: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v73

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    goto :goto_c

    :catchall_b
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :cond_1a
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v6, v13, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_1a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v70, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v80, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move/from16 v0, v70

    move/from16 v1, v80

    invoke-static {v13, v6, v0, v1}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    const v17, 0x8007

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v6, v0, v13, v1}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v13}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_0

    :sswitch_1c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/server/SystemServiceManager;->unlockUser(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_1c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    const/16 v79, 0x0

    :try_start_1d
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/server/pm/PersonaManagerService;->getPreviousState(I)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v67

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v79, 0x1

    :cond_1b
    :goto_d
    if-nez v79, :cond_1c

    :try_start_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/server/am/RecentTasks;->loadUserRecentsLocked(I)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    :cond_1c
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-nez v21, :cond_1d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/high16 v13, 0x40000

    invoke-static {v6, v13}, Lcom/android/server/am/ActivityManagerService;->-wrap12(Lcom/android/server/am/ActivityManagerService;I)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v21

    invoke-static {v6, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap8(Lcom/android/server/am/ActivityManagerService;I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/UserState;

    invoke-virtual {v13, v6}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    goto/16 :goto_0

    :catch_7
    move-exception v49

    :try_start_1f
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    goto :goto_d

    :catchall_c
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    const/16 v17, 0x4008

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v6, v0, v13, v1}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    const v17, 0x8008

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v6, v0, v13, v1}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v13}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    goto/16 :goto_0

    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v6}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v72

    if-eqz v72, :cond_1e

    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_1e

    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    if-eqz v6, :cond_1e

    :try_start_21
    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_14
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    :cond_1e
    :goto_e
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_d
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_1f
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_1f

    const-string/jumbo v6, "FinishBooting"

    const-wide/16 v16, 0x40

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    const-wide/16 v16, 0x40

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1f
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_0

    :sswitch_20
    :try_start_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Ljava/util/Locale;

    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v78

    invoke-static/range {v78 .. v78}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v60

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Storing locale "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {v56 .. v56}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v16, " for decryption UI"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "SystemLocale"

    invoke-virtual/range {v56 .. v56}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v60

    invoke-interface {v0, v6, v13}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v48

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "Error storing locale for decryption UI"

    move-object/from16 v0, v48

    invoke-static {v6, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    move-result v6

    add-int/lit8 v53, v6, -0x1

    :goto_f
    if-ltz v53, :cond_20

    :try_start_24
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/ITaskStackListener;

    invoke-interface {v6}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_13
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    :goto_10
    add-int/lit8 v53, v53, -0x1

    goto :goto_f

    :cond_20
    :try_start_25
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_e
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    move-result v6

    add-int/lit8 v53, v6, -0x1

    :goto_11
    if-ltz v53, :cond_21

    :try_start_27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/ITaskStackListener;

    invoke-interface {v6}, Landroid/app/ITaskStackListener;->onActivityPinned()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_12
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    :goto_12
    add-int/lit8 v53, v53, -0x1

    goto :goto_11

    :cond_21
    :try_start_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_f
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    move-result v6

    add-int/lit8 v53, v6, -0x1

    :goto_13
    if-ltz v53, :cond_22

    :try_start_2a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/ITaskStackListener;

    invoke-interface {v6}, Landroid/app/ITaskStackListener;->onPinnedActivityRestartAttempt()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_11
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    :goto_14
    add-int/lit8 v53, v53, -0x1

    goto :goto_13

    :cond_22
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_10
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_2c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    move-result v6

    add-int/lit8 v53, v6, -0x1

    :goto_15
    if-ltz v53, :cond_23

    :try_start_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/ITaskStackListener;

    invoke-interface {v6}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationEnded()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_10
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    :goto_16
    add-int/lit8 v53, v53, -0x1

    goto :goto_15

    :cond_23
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_11
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_2f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_12

    move-result v6

    add-int/lit8 v53, v6, -0x1

    :goto_17
    if-ltz v53, :cond_24

    :try_start_30
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/ITaskStackListener;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v6, v13, v0}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_f
    .catchall {:try_start_30 .. :try_end_30} :catchall_12

    :goto_18
    add-int/lit8 v53, v53, -0x1

    goto :goto_17

    :cond_24
    :try_start_31
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_12

    monitor-exit v16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_12
    move-exception v6

    monitor-exit v16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_26
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_32
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_13

    move-result v6

    add-int/lit8 v53, v6, -0x1

    :goto_19
    if-ltz v53, :cond_25

    :try_start_33
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/ITaskStackListener;

    invoke-interface {v6}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedStack()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_e
    .catchall {:try_start_33 .. :try_end_33} :catchall_13

    :goto_1a
    add-int/lit8 v53, v53, -0x1

    goto :goto_19

    :cond_25
    :try_start_34
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get14(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_13

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_13
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_27
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v84, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, [B

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v13

    const/16 v53, 0x0

    :goto_1b
    :try_start_35
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    move/from16 v0, v53

    if-ge v0, v6, :cond_27

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v65

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v0, v84

    if-ne v6, v0, :cond_26

    move-object/from16 v0, v65

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_14

    if-eqz v6, :cond_26

    :try_start_36
    move-object/from16 v0, v65

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_36} :catch_d
    .catchall {:try_start_36 .. :try_end_36} :catchall_14

    :cond_26
    :goto_1c
    add-int/lit8 v53, v53, 0x1

    goto :goto_1b

    :cond_27
    monitor-exit v13

    goto/16 :goto_0

    :catchall_14
    move-exception v6

    monitor-exit v13

    throw v6

    :sswitch_28
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    move/from16 v84, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v68

    move/from16 v1, v84

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Landroid/util/Pair;

    if-nez v85, :cond_28

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/16 v16, 0x0

    move-object/from16 v0, v68

    move/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Landroid/util/Pair;

    :cond_28
    if-eqz v85, :cond_29

    move-object/from16 v0, v85

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v58

    move-object/from16 v0, v85

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_15

    :goto_1d
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-nez v68, :cond_2a

    return-void

    :cond_29
    const-wide/16 v58, 0x0

    const/16 v74, 0x0

    goto :goto_1d

    :catchall_15
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :cond_2a
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v23

    if-nez v23, :cond_2b

    return-void

    :cond_2b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v68, v13, v16

    const v16, 0x10403ca

    move/from16 v0, v16

    invoke-virtual {v6, v0, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v81

    new-instance v46, Landroid/content/Intent;

    invoke-direct/range {v46 .. v46}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.server.am.DELETE_DUMPHEAP"

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v32, Landroid/content/Intent;

    invoke-direct/range {v32 .. v32}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "android"

    const-class v13, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "process"

    move-object/from16 v0, v32

    move-object/from16 v1, v68

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "size"

    move-object/from16 v0, v32

    move-wide/from16 v1, v58

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v74, :cond_2c

    const-string/jumbo v6, "direct_launch"

    move-object/from16 v0, v32

    move-object/from16 v1, v74

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2c
    invoke-static/range {v84 .. v84}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    new-instance v6, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x1080873

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, v81

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v16, 0x106005a

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Context;->getColor(I)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, v81

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v16, 0x10403cb

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    new-instance v35, Landroid/os/UserHandle;

    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v31, 0x0

    const/high16 v33, 0x10000000

    const/16 v34, 0x0

    invoke-static/range {v30 .. v35}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v16, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v46

    move/from16 v2, v18

    move-object/from16 v3, v16

    invoke-static {v13, v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v28

    const/4 v6, 0x1

    :try_start_38
    new-array v0, v6, [I

    move-object/from16 v29, v0

    const-string/jumbo v24, "android"

    const-string/jumbo v25, "android"

    const/16 v26, 0x0

    const v27, 0x10403ca

    move/from16 v30, v21

    invoke-interface/range {v23 .. v30}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_38} :catch_c

    goto/16 :goto_0

    :catch_9
    move-exception v50

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "Error showing notification for dump heap"

    move-object/from16 v0, v50

    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :sswitch_29
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v13

    sget-object v16, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    const/16 v18, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v6, v13, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_39
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_16

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_16
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v13}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    goto/16 :goto_0

    :sswitch_2b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v83, v0

    check-cast v83, Lcom/android/server/am/AppTimeTracker;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v83

    invoke-virtual {v0, v6}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v13}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    goto/16 :goto_0

    :sswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/app/IUiAutomationConnection;

    :try_start_3a
    invoke-interface/range {v42 .. v42}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3a} :catch_a

    :goto_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    invoke-static {v6, v13}, Lcom/android/server/am/ActivityManagerService;->-set9(Lcom/android/server/am/ActivityManagerService;Z)Z

    goto/16 :goto_0

    :catch_a
    move-exception v48

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "Error shutting down UiAutomationConnection"

    invoke-static {v6, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_3b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get7(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v6

    if-eqz v6, :cond_2d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    const-wide/16 v24, 0x9c4

    sub-long v18, v18, v24

    cmp-long v6, v16, v18

    if-gez v6, :cond_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-wrap2()I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/server/am/ActivityManagerService;->-set5(Lcom/android/server/am/ActivityManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v6, v0, v1}, Lcom/android/server/am/ActivityManagerService;->-set2(Lcom/android/server/am/ActivityManagerService;J)J
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_17

    :cond_2d
    :goto_1f
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :cond_2e
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v16, 0x3a

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v16, 0x9c4

    move-object/from16 v0, v62

    move-wide/from16 v1, v16

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_17

    goto :goto_1f

    :catchall_17
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v6

    if-nez v6, :cond_2f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "AMS_RESUME_TAIL"

    const/16 v17, 0x15

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/android/server/am/ActivityManagerService;->-set0(Lcom/android/server/am/ActivityManagerService;Lcom/samsung/android/os/SemDvfsManager;)Lcom/samsung/android/os/SemDvfsManager;

    :cond_2f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_3d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "mActivityResumeBoosterTail.acquire()"

    invoke-static {v6, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "mActivityResumeBoosterTail is failed"

    invoke-static {v6, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_30
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    goto/16 :goto_0

    :sswitch_31
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->logStackState()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_18

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_18
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_32
    const-class v6, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Lcom/android/server/vr/VrManagerInternal;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_3f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_31

    const/16 v86, 0x1

    :goto_20
    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    move-object/from16 v75, v0

    move-object/from16 v0, v72

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v21, v0

    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get6(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v6

    move/from16 v0, v86

    if-eq v6, v0, :cond_30

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v86

    invoke-static {v6, v0}, Lcom/android/server/am/ActivityManagerService;->-set4(Lcom/android/server/am/ActivityManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService;->-get6(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/am/ActivityManagerService;->-wrap1(Landroid/content/res/Configuration;Z)Z

    move-result v16

    move/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/server/am/ActivityManagerService;->-set8(Lcom/android/server/am/ActivityManagerService;Z)Z
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_19

    :cond_30
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, v87

    move/from16 v1, v86

    move-object/from16 v2, v75

    move/from16 v3, v21

    move-object/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    goto/16 :goto_0

    :cond_31
    const/16 v86, 0x0

    goto :goto_20

    :catchall_19
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :sswitch_33
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Lcom/android/server/am/ActivityRecord;

    if-eqz v72, :cond_32

    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_32

    const/16 v61, 0x1

    :goto_21
    if-eqz v61, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v6, v13, :cond_33

    const/16 v34, 0x1

    :goto_22
    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    move-object/from16 v35, v0

    move-object/from16 v0, v72

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v36, v0

    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v37

    const/16 v38, 0x0

    invoke-static/range {v33 .. v38}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Lcom/android/server/am/ActivityManagerService;ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    goto/16 :goto_0

    :cond_32
    const/16 v61, 0x0

    goto :goto_21

    :cond_33
    const/16 v34, 0x0

    goto :goto_22

    :catch_c
    move-exception v48

    goto/16 :goto_0

    :catch_d
    move-exception v54

    goto/16 :goto_1c

    :catch_e
    move-exception v48

    goto/16 :goto_1a

    :catch_f
    move-exception v48

    goto/16 :goto_18

    :catch_10
    move-exception v48

    goto/16 :goto_16

    :catch_11
    move-exception v48

    goto/16 :goto_14

    :catch_12
    move-exception v48

    goto/16 :goto_12

    :catch_13
    move-exception v48

    goto/16 :goto_10

    :catch_14
    move-exception v48

    goto/16 :goto_e

    :catch_15
    move-exception v48

    goto/16 :goto_0

    :catch_16
    move-exception v48

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x14 -> :sswitch_6
        0x15 -> :sswitch_8
        0x16 -> :sswitch_9
        0x17 -> :sswitch_a
        0x18 -> :sswitch_b
        0x19 -> :sswitch_c
        0x1b -> :sswitch_d
        0x1c -> :sswitch_4
        0x1d -> :sswitch_5
        0x21 -> :sswitch_f
        0x22 -> :sswitch_10
        0x23 -> :sswitch_12
        0x24 -> :sswitch_13
        0x25 -> :sswitch_14
        0x26 -> :sswitch_15
        0x27 -> :sswitch_16
        0x28 -> :sswitch_17
        0x29 -> :sswitch_18
        0x2a -> :sswitch_1b
        0x2b -> :sswitch_1d
        0x2c -> :sswitch_1e
        0x2d -> :sswitch_1f
        0x2f -> :sswitch_20
        0x31 -> :sswitch_21
        0x32 -> :sswitch_27
        0x33 -> :sswitch_28
        0x34 -> :sswitch_29
        0x35 -> :sswitch_2a
        0x37 -> :sswitch_2b
        0x38 -> :sswitch_2c
        0x39 -> :sswitch_2d
        0x3a -> :sswitch_2e
        0x3b -> :sswitch_7
        0x3c -> :sswitch_30
        0x3d -> :sswitch_1c
        0x3e -> :sswitch_31
        0x3f -> :sswitch_32
        0x40 -> :sswitch_22
        0x41 -> :sswitch_23
        0x42 -> :sswitch_24
        0x43 -> :sswitch_25
        0x44 -> :sswitch_26
        0x45 -> :sswitch_33
        0x47 -> :sswitch_2f
        0x190 -> :sswitch_19
        0x1f4 -> :sswitch_1a
        0x259 -> :sswitch_11
        0x3e7 -> :sswitch_e
    .end sparse-switch
.end method
