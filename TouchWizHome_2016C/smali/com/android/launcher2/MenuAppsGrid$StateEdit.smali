.class Lcom/android/launcher2/MenuAppsGrid$StateEdit;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateEdit"
.end annotation


# instance fields
.field launcher:Lcom/android/launcher2/Launcher;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->launcher:Lcom/android/launcher2/Launcher;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->mHasEntered:Z

    sget-object v13, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_3

    const/4 v9, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/launcher2/MenuAppsGrid;->access$2602(Lcom/android/launcher2/MenuAppsGrid;Z)Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x800

    invoke-virtual {v13, v14}, Landroid/view/Window;->clearFlags(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Launcher;

    iget-boolean v13, v13, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-eqz v13, :cond_0

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0005

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    invoke-virtual {v12, v4}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v13}, Lcom/android/launcher2/MenuAppsGrid;->access$400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v9}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v0, p1

    invoke-static {v13, v0, v9}, Lcom/android/launcher2/MenuAppsGrid;->access$1900(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090078

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    sget-object v13, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/16 v14, 0x20

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v5, v15}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(ILjava/lang/String;Z)V

    sget-object v13, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v13}, Lcom/android/launcher2/MenuAppsGrid;->access$400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v13

    if-nez v13, :cond_1

    const v13, 0x7f110099

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v13, "all_apps_button_icon"

    invoke-virtual {v10, v13}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v13}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v13

    iget-object v13, v13, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v13}, Lcom/android/launcher2/FolderContent;->getPagedView()Lcom/android/launcher2/FolderPagedView;

    move-result-object v7

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7}, Lcom/android/launcher2/FolderPagedView;->getChildCount()I

    move-result v13

    if-ge v8, v13, :cond_5

    invoke-virtual {v7, v8}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayoutFolder;

    move-object v3, v13

    check-cast v3, Lcom/android/launcher2/CellLayoutFolder;

    if-eqz v3, :cond_2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v3, v13}, Lcom/android/launcher2/CellLayoutFolder;->setCrosshairsVisibility(F)V

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutFolder;->invalidate()V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090078

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v13}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/launcher2/Folder;->showAddFolderItem(Ljava/lang/Boolean;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v11

    if-eqz v11, :cond_7

    const v13, 0x7f1100a2

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    :cond_7
    return-void
.end method

.method public enterFolderItemViews(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/MenuAppIconView;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppIconView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/launcher2/MenuAppsGrid;->access$2100(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/MenuAppModel;->canRemovable(Lcom/android/launcher2/AppItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher2/MenuAppIconView;->setUninstallIconVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/launcher2/MenuAppIconView;->setUninstallIconVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/MenuAppIconView;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v5

    const/4 v14, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/MenuAppIconView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2100(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/AppItem;

    if-eqz v13, :cond_7

    sget-object v21, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuAppModel;->canRemovable(Lcom/android/launcher2/AppItem;)Z

    move-result v21

    if-nez v21, :cond_1

    invoke-virtual {v13}, Lcom/android/launcher2/AppItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v21

    sget-object v23, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderPopup()Z

    move-result v21

    if-nez v21, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v21, v13

    check-cast v21, Lcom/android/launcher2/FolderItem;

    invoke-interface/range {v21 .. v21}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v21, v13

    check-cast v21, Lcom/android/launcher2/FolderItem;

    invoke-interface/range {v21 .. v21}, Lcom/android/launcher2/FolderItem;->haveOpenOnceOrNot()Z

    move-result v21

    if-eqz v21, :cond_7

    :cond_1
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppIconView;->setUninstallIconVisibility(I)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAlphabeticalOrder()Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v21

    sget-object v23, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    iget v14, v13, Lcom/android/launcher2/AppItem;->mScreenInAlphabetical:I

    :goto_0
    if-ne v14, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/MenuAppsGrid;->access$2600(Lcom/android/launcher2/MenuAppsGrid;)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v21

    if-nez v21, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppIconView;->startShowOverlayAnimation()V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/launcher2/FolderItem;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v7}, Lcom/android/launcher2/AppFolderItem;->isOpened()Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/FolderContent;->getPagedView()Lcom/android/launcher2/FolderPagedView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/FolderPagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/CellLayoutFolder;

    move-object/from16 v3, v21

    check-cast v3, Lcom/android/launcher2/CellLayoutFolder;

    const/16 v16, 0x0

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v21, 0x7f0c0017

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v21, 0x7f0c0018

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    mul-int v16, v6, v9

    :goto_2
    const/4 v15, 0x0

    :goto_3
    invoke-virtual {v7}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v15, v0, :cond_0

    invoke-virtual {v7, v15}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v12

    instance-of v0, v12, Lcom/android/launcher2/AppItem;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object v11, v12

    check-cast v11, Lcom/android/launcher2/AppItem;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->getIconView()Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_3

    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->getIconView()Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/launcher2/MenuAppIconView;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->getIconView()Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/MenuAppIconView;

    move-object/from16 v10, v21

    check-cast v10, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppIconView;->hideBadge()V

    sget-object v21, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/launcher2/MenuAppModel;->canRemovable(Lcom/android/launcher2/AppItem;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/android/launcher2/MenuAppIconView;->setUninstallIconVisibility(I)V

    iget v0, v11, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v21, v0

    div-int v17, v21, v16

    move/from16 v0, v17

    if-ne v4, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/MenuAppsGrid;->access$2600(Lcom/android/launcher2/MenuAppsGrid;)Z

    move-result v21

    if-eqz v21, :cond_3

    iget v0, v11, Lcom/android/launcher2/AppItem;->mBadgeCount:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppIconView;->startShowOverlayAnimation()V

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_4
    iget v14, v13, Lcom/android/launcher2/AppItem;->mScreen:I

    goto/16 :goto_0

    :cond_5
    const-string v23, "Launcher.MenuAppsGrid"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Not show uninstall icon:"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/MenuAppsGrid;->access$2600(Lcom/android/launcher2/MenuAppsGrid;)Z

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v24, " screen:"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v13, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v5, :cond_6

    const/16 v21, 0x1

    :goto_4
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const/16 v21, 0x0

    goto :goto_4

    :cond_7
    const/16 v21, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppIconView;->setUninstallIconVisibility(I)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutFolder;->getCountX()I

    move-result v21

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutFolder;->getCountY()I

    move-result v23

    mul-int v16, v21, v23

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->mHasEntered:Z

    if-nez v5, :cond_0

    const-string v5, "Launcher.MenuAppsGrid"

    const-string v6, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->saveEditChanges()V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v1

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->resetPreFolderBg()V

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v5, v8}, Lcom/android/launcher2/MenuAppsGrid;->access$2602(Lcom/android/launcher2/MenuAppsGrid;Z)Z

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v5, p1}, Lcom/android/launcher2/MenuAppsGrid;->access$2000(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;)V

    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->mHasEntered:Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x800

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderContent;->getPagedView()Lcom/android/launcher2/FolderPagedView;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher2/FolderPagedView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutFolder;

    move-object v0, v5

    check-cast v0, Lcom/android/launcher2/CellLayoutFolder;

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutFolder;->setCrosshairsVisibility(F)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutFolder;->invalidate()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->removeAddItemPlusButton()V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/MenuAppsGrid;->setIsFolderOpenWithEdit(Z)V

    goto/16 :goto_0
.end method

.method public exitFolderItemViews(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/MenuAppIconView;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuAppIconView;->setUninstallIconVisibility(I)V

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->hideBadge()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/MenuAppIconView;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuAppIconView;->setUninstallIconVisibility(I)V

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->hideBadge()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAppsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2700(Lcom/android/launcher2/MenuAppsGrid;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2702(Lcom/android/launcher2/MenuAppsGrid;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppModel;->canUninstallable(Lcom/android/launcher2/AppItem;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v2, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v7

    if-le v7, v9, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    :cond_2
    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/app/FragmentManager;Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V

    :cond_3
    :goto_0
    sput-boolean v8, Lcom/android/launcher2/Launcher;->sDisableOrUninstallAppFromApps:Z

    :cond_4
    return v8

    :cond_5
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppModel;->canDisableable(Lcom/android/launcher2/AppItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-object p1, v0, Lcom/android/launcher2/MenuAppsGrid;->mDisableItem:Lcom/android/launcher2/AppItem;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    if-le v1, v9, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    :cond_7
    invoke-virtual {v0, p1, v6}, Lcom/android/launcher2/Launcher;->callDisableDialog(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V

    goto :goto_0
.end method

.method public preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderMultiSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateEdit;Lcom/android/launcher2/Folder;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/Folder;->setAddToFolderButtonListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
