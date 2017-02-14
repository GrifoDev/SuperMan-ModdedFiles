.class public Lcom/android/launcher2/BackupItemsRecords;
.super Ljava/lang/Object;
.source "BackupItemsRecords.java"


# instance fields
.field private cell:I

.field private container:J

.field private itemInFolder:I

.field private itemInMoveApp:I

.field private mFolderView:Lcom/android/launcher2/FolderIconView;

.field private mIsFromMoveApp:Z

.field private mIsInFolder:Z

.field private mItem:Lcom/android/launcher2/BaseItem;

.field private mLayout:Lcom/android/launcher2/CellLayout;

.field private mView:Landroid/view/View;

.field private screen:I

.field private spanX:I

.field private spanY:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher2/DragState;Lcom/android/launcher2/FolderIconView;)V
    .locals 8

    const/4 v5, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->x:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->y:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->spanX:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->spanY:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->screen:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->itemInFolder:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->itemInMoveApp:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->cell:I

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/launcher2/BackupItemsRecords;->container:J

    iput-object p1, p0, Lcom/android/launcher2/BackupItemsRecords;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    iput-object v5, p0, Lcom/android/launcher2/BackupItemsRecords;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p2, p1}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/BackupItemsRecords;->mLayout:Lcom/android/launcher2/CellLayout;

    iput-object p3, p0, Lcom/android/launcher2/BackupItemsRecords;->mFolderView:Lcom/android/launcher2/FolderIconView;

    iget-object v5, p0, Lcom/android/launcher2/BackupItemsRecords;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v5, v5, Lcom/android/launcher2/HomeItem;

    if-eqz v5, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/BackupItemsRecords;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v3, Lcom/android/launcher2/HomeItem;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/BackupItemsRecords;->mIsFromMoveApp:Z

    iget-object v5, p0, Lcom/android/launcher2/BackupItemsRecords;->mItem:Lcom/android/launcher2/BaseItem;

    iget v5, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->itemInMoveApp:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Launcher;->setStateBeforeClick(Lcom/android/launcher2/Workspace$State;)V

    :cond_0
    :goto_0
    iget v5, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->spanX:I

    iget v5, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->spanY:I

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/BackupItemsRecords;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v5}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher2/BackupItemsRecords;->mIsInFolder:Z

    iput-object p3, p0, Lcom/android/launcher2/BackupItemsRecords;->mFolderView:Lcom/android/launcher2/FolderIconView;

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/BackupItemsRecords;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v5}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v4, :cond_0

    iget v5, v4, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->x:I

    iget v5, v4, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->y:I

    iget-object v5, p0, Lcom/android/launcher2/BackupItemsRecords;->mItem:Lcom/android/launcher2/BaseItem;

    iget v5, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->itemInFolder:I

    iget v5, v4, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->screen:I

    iget-wide v6, v4, Lcom/android/launcher2/HomeFolderItem;->container:J

    iput-wide v6, p0, Lcom/android/launcher2/BackupItemsRecords;->container:J

    goto :goto_0

    :cond_3
    iget v5, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->x:I

    iget v5, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->y:I

    iget v5, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->screen:I

    iget-wide v6, v3, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v6, p0, Lcom/android/launcher2/BackupItemsRecords;->container:J

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/BackupItemsRecords;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v5, v5, Lcom/android/launcher2/AppItem;

    if-eqz v5, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/BackupItemsRecords;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-object v5, p0, Lcom/android/launcher2/BackupItemsRecords;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v5}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    iget-object v5, p0, Lcom/android/launcher2/BackupItemsRecords;->mItem:Lcom/android/launcher2/BaseItem;

    iget v5, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->itemInFolder:I

    iget v5, v0, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->screen:I

    iget v5, v0, Lcom/android/launcher2/AppFolderItem;->mCell:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->cell:I

    goto :goto_1

    :cond_5
    iget v5, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->screen:I

    iget v5, v1, Lcom/android/launcher2/AppItem;->mCell:I

    iput v5, p0, Lcom/android/launcher2/BackupItemsRecords;->cell:I

    goto/16 :goto_1
.end method


# virtual methods
.method public IsFromMoveApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/BackupItemsRecords;->mIsFromMoveApp:Z

    return v0
.end method

.method public IsInFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/BackupItemsRecords;->mIsInFolder:Z

    return v0
.end method

.method public getBaseItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BackupItemsRecords;->mItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getCell()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BackupItemsRecords;->cell:I

    return v0
.end method

.method public getCellayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BackupItemsRecords;->mLayout:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method public getContainer()J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher2/BackupItemsRecords;->container:J

    return-wide v0
.end method

.method public getFolderView()Lcom/android/launcher2/FolderIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BackupItemsRecords;->mFolderView:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method public getItemInFolder()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BackupItemsRecords;->itemInFolder:I

    return v0
.end method

.method public getItemInMoveApp()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BackupItemsRecords;->itemInMoveApp:I

    return v0
.end method

.method public getScreen()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BackupItemsRecords;->screen:I

    return v0
.end method

.method public getSpanX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BackupItemsRecords;->spanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BackupItemsRecords;->spanY:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BackupItemsRecords;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BackupItemsRecords;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BackupItemsRecords;->y:I

    return v0
.end method
