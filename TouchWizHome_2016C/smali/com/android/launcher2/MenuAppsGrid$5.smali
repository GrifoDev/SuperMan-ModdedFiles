.class Lcom/android/launcher2/MenuAppsGrid$5;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V
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

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->access$702(Lcom/android/launcher2/MenuAppsGrid;I)I

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterFolderItemViews(Ljava/lang/Iterable;)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuAppsGrid;->findIconViewByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Folder;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    :cond_1
    return-void
.end method
