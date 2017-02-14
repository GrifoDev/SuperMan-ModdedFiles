.class Lcom/android/launcher2/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->setPackageState(Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$installInfo:Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$1;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$1;->val$installInfo:Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherModel$1;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v13, v12, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherModel$1;->val$installInfo:Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherModel$1;->val$installInfo:Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v12, v12, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    if-nez v12, :cond_1

    :cond_0
    const-string v12, "Launcher.Model"

    const-string v14, "return, setPackageState(),  installInfo is null"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v13

    :goto_0
    return-void

    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherModel$1;->val$installInfo:Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v12, v12, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    if-nez v12, :cond_2

    const-string v12, "Launcher.Model"

    const-string v14, "return, setPackageState(),  PackageInstallerCompat.STATUS_INSTALLED"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    :cond_2
    :try_start_1
    sget-object v12, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    instance-of v14, v5, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v14, :cond_3

    move-object v0, v5

    check-cast v0, Lcom/android/launcher2/HomeShortcutItem;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/launcher2/HomeShortcutItem;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/launcher2/HomeShortcutItem;->isPromise()Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel$1;->val$installInfo:Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v14, v14, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel$1;->val$installInfo:Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v14, v14, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    invoke-virtual {v10, v14}, Lcom/android/launcher2/HomeShortcutItem;->setInstallProgress(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel$1;->val$installInfo:Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v14, v14, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    iget v14, v10, Lcom/android/launcher2/HomeShortcutItem;->status:I

    and-int/lit8 v14, v14, -0x9

    iput v14, v10, Lcom/android/launcher2/HomeShortcutItem;->status:I

    :cond_4
    const-string v14, "Launcher.Model"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setPackageState(Workspace), si : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", progress: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lcom/android/launcher2/HomeShortcutItem;->getInstallProgress()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v12

    if-nez v12, :cond_7

    sget-object v12, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel$1;->val$installInfo:Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v14, v14, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel$1;->val$installInfo:Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v14, v14, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    iput v14, v11, Lcom/android/launcher2/HomeWidgetItem;->installProgress:I

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    new-instance v9, Lcom/android/launcher2/LauncherModel$1$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v4}, Lcom/android/launcher2/LauncherModel$1$1;-><init>(Lcom/android/launcher2/LauncherModel$1;Ljava/util/HashSet;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherModel$1;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v12, v12, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    invoke-virtual {v12, v9}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_8
    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->IsLoaded()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->getApps()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    invoke-virtual {v6}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/launcher2/AppItem;->isPromise()Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel$1;->val$installInfo:Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v14, v14, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel$1;->val$installInfo:Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v14, v14, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    invoke-virtual {v6, v14}, Lcom/android/launcher2/AppItem;->setInstallProgress(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel$1;->val$installInfo:Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v14, v14, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_a

    iget v14, v6, Lcom/android/launcher2/AppItem;->status:I

    and-int/lit8 v14, v14, -0x9

    iput v14, v6, Lcom/android/launcher2/AppItem;->status:I

    :cond_a
    const-string v14, "Launcher.Model"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setPackageState(Apps), item : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", progress: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lcom/android/launcher2/AppItem;->getInstallProgress()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c

    new-instance v9, Lcom/android/launcher2/LauncherModel$1$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v1}, Lcom/android/launcher2/LauncherModel$1$2;-><init>(Lcom/android/launcher2/LauncherModel$1;Ljava/util/HashSet;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherModel$1;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v12, v12, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    invoke-virtual {v12, v9}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_c
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
