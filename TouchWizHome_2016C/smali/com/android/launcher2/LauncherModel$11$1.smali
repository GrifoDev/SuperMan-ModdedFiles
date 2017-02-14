.class Lcom/android/launcher2/LauncherModel$11$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel$11;

.field final synthetic val$folder:Lcom/android/launcher2/HomeFolderItem;

.field final synthetic val$item:Lcom/android/launcher2/HomeItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$11;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$11$1;->this$0:Lcom/android/launcher2/LauncherModel$11;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$11$1;->val$folder:Lcom/android/launcher2/HomeFolderItem;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$11$1;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$11$1;->val$folder:Lcom/android/launcher2/HomeFolderItem;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$11$1;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$11$1;->val$folder:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$11$1;->val$folder:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher2/Workspace;->removeRemainItems(Ljava/util/List;Lcom/android/launcher2/HomeFolderItem;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$11$1;->val$folder:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$11$1;->this$0:Lcom/android/launcher2/LauncherModel$11;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$11;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$11$1;->val$folder:Lcom/android/launcher2/HomeFolderItem;

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_0
.end method
