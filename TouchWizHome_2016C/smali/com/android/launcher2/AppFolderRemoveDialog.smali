.class public Lcom/android/launcher2/AppFolderRemoveDialog;
.super Landroid/app/DialogFragment;
.source "AppFolderRemoveDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mAppFolderItem:Lcom/android/launcher2/AppFolderItem; = null

.field private static mFolders:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem; = null

.field private static mTitle:Ljava/lang/String; = null

.field private static mdrageState:Lcom/android/launcher2/DragState; = null

.field private static final sFragmentTag:Ljava/lang/String; = "AppFolderRemoveDialog"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private animateInItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;I)V
    .locals 12

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v3

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v2

    move-object v4, v7

    new-instance v0, Lcom/android/launcher2/AppFolderRemoveDialog$1;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AppFolderRemoveDialog$1;-><init>(Lcom/android/launcher2/AppFolderRemoveDialog;Lcom/android/launcher2/AnimationLayer;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/CellLayout;)V

    int-to-long v10, p3

    invoke-virtual {v3, v0, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;)V
    .locals 2

    invoke-static {p1}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/android/launcher2/AppFolderRemoveDialog;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    new-instance v0, Lcom/android/launcher2/AppFolderRemoveDialog;

    invoke-direct {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;-><init>()V

    const-string v1, "AppFolderRemoveDialog"

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    goto :goto_0
.end method

.method static createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    sput-object p2, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/launcher2/AppFolderRemoveDialog;->createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;)V

    return-void
.end method

.method static createAndShow(Lcom/android/launcher2/HomeFolderItem;Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/launcher2/DragState;)V
    .locals 2

    sput-object p0, Lcom/android/launcher2/AppFolderRemoveDialog;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    sput-object p3, Lcom/android/launcher2/AppFolderRemoveDialog;->mdrageState:Lcom/android/launcher2/DragState;

    sput-object p2, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher2/AppFolderRemoveDialog;

    invoke-direct {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;-><init>()V

    const-string v1, "AppFolderRemoveDialog"

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "AppFolderRemoveDialog"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method static getCurrentInstance(Landroid/app/FragmentManager;)Lcom/android/launcher2/AppFolderRemoveDialog;
    .locals 1

    const-string v0, "AppFolderRemoveDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderRemoveDialog;

    return-object v0
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "AppFolderRemoveDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFolder()V
    .locals 15

    const/4 v14, 0x0

    sget-object v8, Lcom/android/launcher2/AppFolderRemoveDialog;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_2

    const-string v8, "AppFolderRemoveDialog"

    const-string v9, "removeFolder() : activity is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppModel;->getAppItems()Ljava/util/Map;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/AppFolderRemoveDialog;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v9}, Lcom/android/launcher2/AppFolderItem;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppFolderItem;

    sput-object v8, Lcom/android/launcher2/AppFolderRemoveDialog;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    sget-object v8, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    sget-object v9, Lcom/android/launcher2/AppFolderRemoveDialog;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v4

    sget-object v8, Lcom/android/launcher2/AppFolderRemoveDialog;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v8}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v3

    sget-object v8, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v5

    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v8, v5, :cond_4

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppItem;

    iget-wide v8, v8, Lcom/android/launcher2/AppItem;->mId:J

    invoke-virtual {v4, v8, v9}, Lcom/android/launcher2/MenuAppsGrid;->getPageIndexForItemId(J)I

    move-result v7

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v8

    if-eq v8, v7, :cond_3

    invoke-virtual {v4, v7}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    iget v8, v4, Lcom/android/launcher2/MenuAppsGrid;->PAGE_SNAP_ANIMATION_DURATION:I

    add-int/lit8 v2, v8, 0xa

    :cond_3
    invoke-virtual {v4, v7}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_5

    const-string v9, "AppFolderRemoveDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cellLayout is null. index : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", item 0 :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppItem;

    iget-wide v12, v8, Lcom/android/launcher2/AppItem;->mId:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppItem;

    iget-object v8, v8, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v8

    add-int/lit8 v7, v8, -0x2

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppFolderRemoveDialog;->animateInItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;I)V

    goto :goto_2
.end method

.method private removeFolderHome()V
    .locals 7

    iget-object v3, p0, Lcom/android/launcher2/AppFolderRemoveDialog;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    sget-object v3, Lcom/android/launcher2/AppFolderRemoveDialog;->mdrageState:Lcom/android/launcher2/DragState;

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onDelete()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/android/launcher2/AppFolderRemoveDialog;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/android/launcher2/AppFolderRemoveDialog;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/AppFolderRemoveDialog;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v6

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/launcher2/LauncherModel;->addShortcutHomeOnlyFromDeleteFolder(Lcom/android/launcher2/HomeItem;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/BaseItem$Type;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeFolders()V
    .locals 4

    sget-object v2, Lcom/android/launcher2/AppFolderRemoveDialog;->mFolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    return-void
.end method


# virtual methods
.method public cancelDelete()V
    .locals 3

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    sget-object v0, Lcom/android/launcher2/AppFolderRemoveDialog;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->removeFolderHome()V

    :goto_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->setRemoveReadyItem(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/android/launcher2/AppFolderRemoveDialog;->mFolders:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->removeFolder()V

    :goto_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "DTAF"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->removeFolders()V

    goto :goto_2

    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->cancelDelete()V

    sget-object v0, Lcom/android/launcher2/AppFolderRemoveDialog;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->readdRemoveReadyItem()V

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const v8, 0x7f0900bf

    const v6, 0x7f0900b6

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/AppFolderRemoveDialog;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderPopup()Z

    move-result v2

    sget-object v5, Lcom/android/launcher2/AppFolderRemoveDialog;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/AppFolderRemoveDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/AppFolderRemoveDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900c0

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/launcher2/AppFolderRemoveDialog;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0900b5

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->releaseWindowDim(Landroid/view/Window;)V

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v5, 0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, 0x3e4ccccd    # 0.2f

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v1

    :cond_0
    sget-object v5, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/AppFolderRemoveDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900be

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/AppFolderRemoveDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    sget-object v7, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/AppFolderRemoveDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-object v5, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/AppFolderRemoveDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900b9

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/AppFolderRemoveDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/AppFolderRemoveDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900b8

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/AppFolderRemoveDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900bb

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/AppFolderRemoveDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    sget-object v7, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->cancelDelete()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->readdRemoveReadyItem()V

    sput-object v1, Lcom/android/launcher2/AppFolderRemoveDialog;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    sput-object v1, Lcom/android/launcher2/AppFolderRemoveDialog;->mdrageState:Lcom/android/launcher2/DragState;

    sput-object v1, Lcom/android/launcher2/AppFolderRemoveDialog;->mTitle:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
