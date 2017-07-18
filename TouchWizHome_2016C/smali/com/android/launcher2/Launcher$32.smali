.class Lcom/android/launcher2/Launcher$32;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "show_button_background"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuView;->setEditTextBg(Z)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Folder;->setEditTextBg(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setEditTextBg(Z)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Folder;->setEditTextBg(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mChangeShowButtonBackgroundObserver.onChange SettingNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
