.class Lcom/android/launcher2/MenuAppsGrid$16;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid;->appModelUpdatedForUnHidden()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$16;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->getApps()Ljava/util/Map;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$16;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isEditState()Z

    move-result v4

    :cond_0
    if-nez v4, :cond_1

    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->isGame()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->isGameHomeApp()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->unhide()V

    const-string v5, "Launcher.MenuAppsGrid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showGameApps:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_3
    if-nez v4, :cond_4

    :try_start_1
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    :cond_4
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$16;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/MenuAppsGridFragment;->setPendingModelUpdate(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$16;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
