.class Lcom/android/launcher2/MenuAppsGrid$14;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid;->changeGridSize(Lcom/android/launcher2/LauncherApplication$HomeGridSize;)V
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

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$14;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$14;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4, v7}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPage(I)V

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$14;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v5, v5, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$14;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v6, v6, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    mul-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppModel;->startChangeGridLoader(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "Launcher.MenuAppsGrid"

    const-string v5, "topItem is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$14;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-boolean v4, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    if-eqz v4, :cond_2

    new-instance v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v2}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x4

    :goto_2
    iput v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v4, v0, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v4, v4, Lcom/android/launcher2/AppFolderItem;->mId:J

    :goto_3
    iput-wide v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    iget v4, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    iget v4, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    iget-boolean v4, v0, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-boolean v7, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v4, -0x1

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method
