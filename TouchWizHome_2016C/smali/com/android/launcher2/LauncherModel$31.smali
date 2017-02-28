.class final Lcom/android/launcher2/LauncherModel$31;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->updateWidgetsIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v3, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v3, v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->isUpdateRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Launcher.Model"

    const-string v6, "hostView re-update!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getIsSetFlingOption()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "fling"

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v3, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_4
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
