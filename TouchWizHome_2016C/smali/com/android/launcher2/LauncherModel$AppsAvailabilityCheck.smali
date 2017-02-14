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
    .locals 15

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v9, v8, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/android/launcher2/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v11

    if-nez v11, :cond_1

    const/16 v11, 0x2000

    invoke-virtual {v1, v2, v6, v11}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_2
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iget-object v13, p0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v14, 0x3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-direct {v12, v13, v14, v8, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    # invokes: Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V
    invoke-static {v11, v12}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iget-object v13, p0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v14, 0x5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-direct {v12, v13, v14, v8, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    # invokes: Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V
    invoke-static {v11, v12}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    :cond_5
    sget-object v8, Lcom/android/launcher2/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
