.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;
.super Landroid/content/BroadcastReceiver;
.source "CocktailBarManagerServiceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/16 v8, -0x2710

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-get3(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-get3(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-get3(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onConfigurationChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-get3(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v5, :cond_2

    invoke-virtual {v5, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit v7

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_4
    const-string/jumbo v6, "android.intent.action.USER_STARTED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string/jumbo v7, "android.intent.extra.user_handle"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-wrap3(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "android.intent.action.USER_STOPPED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string/jumbo v7, "android.intent.extra.user_handle"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-wrap4(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto :goto_1

    :cond_6
    const-string/jumbo v6, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string/jumbo v7, "android.intent.extra.user_handle"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserSwitched(I)V

    goto :goto_1

    :cond_7
    const-string/jumbo v6, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_8

    return-void

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-get4(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onBroadcastReceived(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_a

    return-void

    :cond_a
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-get3(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v7

    monitor-enter v7

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->getSendingUserId()I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-get3(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-get3(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v5, :cond_b

    invoke-virtual {v5, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6
.end method
