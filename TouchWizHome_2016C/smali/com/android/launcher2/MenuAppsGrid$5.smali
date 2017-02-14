.class Lcom/android/launcher2/MenuAppsGrid$5;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Lcom/android/launcher2/ItemViewBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
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
.method public buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$800(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$800(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getLoadingState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setLoadingListener(Lcom/android/launcher2/BaseItem$LoadingListener;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$900(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002d

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->onAddItem(Lcom/android/launcher2/AppIconView;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$900(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030030

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    goto :goto_1
.end method

.method public onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V
    .locals 7

    const/4 v6, -0x1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getIconId()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    iget-wide v4, p2, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    instance-of v3, p1, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v4

    move-object v3, p1

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/Folder;->notifyFolderIconChanged(Lcom/android/launcher2/FolderIconView;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    iput v6, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v6, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    return-void
.end method
