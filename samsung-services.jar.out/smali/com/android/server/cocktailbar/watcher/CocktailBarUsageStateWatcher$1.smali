.class Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;
.super Landroid/app/usage/IUsageStatsWatcher$Stub;
.source "CocktailBarUsageStateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->registerUsageStatsWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHideEdgeServiceComponentCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVisible:Z

.field final synthetic this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-direct {p0}, Landroid/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "resumeComponentName is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v9}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get6(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v9}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get4(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v9}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get1(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Landroid/app/ActivityManager;

    move-result-object v9

    const/4 v11, 0x1

    const/4 v12, 0x5

    invoke-virtual {v9, v11, v12}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v9}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get8(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x0

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v9}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get8(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x0

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v9}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get4(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v8, 0x0

    :cond_3
    :goto_0
    iget-boolean v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    if-eq v9, v8, :cond_4

    iput-boolean v8, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v9}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get5(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;->onChangeVisibleEdgeService(Z)V

    :cond_4
    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v9}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get4(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v9}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get3(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v9}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get3(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_6

    :cond_5
    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v9, v6}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-set0(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;Ljava/lang/String;)Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v9}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get5(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    move-result-object v9

    invoke-interface {v9, v6}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;->onChangedResumePackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v10

    return-void

    :cond_7
    :try_start_1
    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v9}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get2(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    const/16 v9, 0x80

    :try_start_2
    invoke-virtual {v5, p1, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_8

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iget-object v11, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get7(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "noteResumeComponent: getActivityInfo="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "noteResumeComponent: getActivityInfo not found. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method
