.class public Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppsAvailabilityCheck"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method protected constructor <init>(Lcom/android/launcher2/LauncherModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v14, v13, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v13, v13, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-object v13, Lcom/android/launcher2/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v7, v3, v12}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v8, v0, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v12}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/LauncherModel;->checkIfValidLauncherComponent(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v9, :cond_2

    if-eqz v6, :cond_2

    const-string v16, "Launcher.Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "AppsAvailabilityCheck added unavailable app="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    :cond_2
    :try_start_1
    const-string v16, "Launcher.Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "AppsAvailabilityCheck added removed app="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v13, v12}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-static/range {v16 .. v17}, Lcom/android/launcher2/LauncherModel;->access$2400(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v13, v12}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-static/range {v16 .. v17}, Lcom/android/launcher2/LauncherModel;->access$2400(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    :cond_5
    sget-object v13, Lcom/android/launcher2/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
