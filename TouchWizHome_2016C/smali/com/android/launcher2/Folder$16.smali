.class Lcom/android/launcher2/Folder$16;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->showSearchAppListAfterLoadAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$16;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/Folder$16;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v1, p1}, Lcom/android/launcher2/Folder;->access$1002(Lcom/android/launcher2/Folder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/Folder$16;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v1}, Lcom/android/launcher2/Folder;->access$1000(Lcom/android/launcher2/Folder;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder$16;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v1}, Lcom/android/launcher2/Folder;->access$1000(Lcom/android/launcher2/Folder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder$16;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    const/16 v0, 0x1f4

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Folder$16;->this$0:Lcom/android/launcher2/Folder;

    new-instance v2, Lcom/android/launcher2/Folder$16$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$16$1;-><init>(Lcom/android/launcher2/Folder$16;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher2/Folder;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onShow()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Folder$16;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$16;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher2/Folder$16;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->setVisibility(I)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(I)V

    :cond_0
    return-void
.end method
