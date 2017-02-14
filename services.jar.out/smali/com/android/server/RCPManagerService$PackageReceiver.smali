.class public Lcom/android/server/RCPManagerService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageReceiver"
.end annotation


# instance fields
.field private mUserId:I

.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    iput p2, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "PackageReceiver onReceive()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "App Installed with packageNAme = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v3, -0x1

    :try_start_0
    const-string/jumbo v13, "package"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    const/16 v14, 0x80

    invoke-interface {v9, v1, v14, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    const-string/jumbo v13, "proxyName"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v13}, Lcom/android/server/RCPManagerService;->-get5(Lcom/android/server/RCPManagerService;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v13}, Lcom/android/server/RCPManagerService;->-get0(Lcom/android/server/RCPManagerService;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string/jumbo v13, "Bridge_PROXY"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " PackageReceiver onReceive() proxyName "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v10, :cond_3

    const-string/jumbo v13, "RCPProxy"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v13, v12, v1}, Lcom/android/server/RCPManagerService;->-wrap3(Lcom/android/server/RCPManagerService;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :cond_3
    return-void

    :catch_0
    move-exception v8

    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Exception trying to get applicationInfo for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "com.samsung.knox.rcp.components"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v13}, Lcom/android/server/RCPManagerService;->-get4(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v14

    monitor-enter v14

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    invoke-static {v13, v15}, Lcom/android/server/RCPManagerService;->-wrap8(Lcom/android/server/RCPManagerService;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v13}, Lcom/android/server/RCPManagerService;->-get4(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v13}, Lcom/android/server/RCPManagerService;->-get0(Lcom/android/server/RCPManagerService;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string/jumbo v13, "Bridge_PROXY"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " PackageReceiver onReceive() ACTION_PACKAGE_CHANGED "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v13, "com.samsung.knox.rcp.components"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "android.intent.extra.changed_component_name_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    array-length v13, v7

    if-lez v13, :cond_2

    const/4 v13, 0x0

    array-length v15, v7

    move v14, v13

    :goto_1
    if-ge v14, v15, :cond_2

    aget-object v6, v7, v14

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    :try_start_2
    const-string/jumbo v13, "package"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    const/16 v16, 0x80

    move/from16 v0, v16

    invoke-interface {v9, v5, v0, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v13}, Lcom/android/server/RCPManagerService;->-get0(Lcom/android/server/RCPManagerService;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string/jumbo v13, "Bridge_PROXY"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " PackageReceiver : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " appInfo.enabled = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-boolean v0, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v13, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v0}, Lcom/android/server/RCPManagerService;->-wrap6(Lcom/android/server/RCPManagerService;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v16, " PacakgeReceiver : received ACTION_PACKAGE_CHANGED - Exception"

    move-object/from16 v0, v16

    invoke-static {v13, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_1

    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v13}, Lcom/android/server/RCPManagerService;->-get4(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v16

    monitor-enter v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/server/RCPManagerService;->-wrap8(Lcom/android/server/RCPManagerService;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v13}, Lcom/android/server/RCPManagerService;->-get4(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v16

    goto/16 :goto_0

    :catchall_1
    move-exception v13

    monitor-exit v16

    throw v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method
