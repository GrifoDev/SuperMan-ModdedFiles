.class Lcom/android/launcher2/MenuAppsGrid$StateNormal;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateNormal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateNormal;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method

.method private initSearchBarContainerView()V
    .locals 6

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getMenuAppsSearchBar()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200a7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getMenuAppsMoreButton()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    const v4, 0x7f1000c5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    goto :goto_0
.end method


# virtual methods
.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    :goto_0
    iget-object v12, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v12

    if-ge v10, v12, :cond_7

    iget-object v12, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v12, v10}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v3, v12, :cond_6

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    const/4 v5, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_5

    instance-of v12, v4, Lcom/android/launcher2/AppFolderItem;

    if-eqz v12, :cond_3

    const/4 v6, 0x0

    :goto_3
    move-object v12, v4

    check-cast v12, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v12}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v12

    if-ge v6, v12, :cond_4

    move-object v12, v4

    check-cast v12, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v12, v6}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppItem;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v11, v12, :cond_2

    instance-of v12, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v12

    if-ge v7, v12, :cond_1

    invoke-virtual {v2, v7}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v12

    instance-of v12, v12, Lcom/android/launcher2/AppIconView;

    if-eqz v12, :cond_0

    invoke-virtual {v2, v7}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v11, :cond_0

    invoke-virtual {v2, v7}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v12}, Lcom/android/launcher2/AppIconView;->showBadge()V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_1
    move-object v12, v0

    check-cast v12, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v12}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v4, :cond_4

    instance-of v12, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v12, :cond_4

    move-object v12, v0

    check-cast v12, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v12}, Lcom/android/launcher2/AppIconView;->showBadge()V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v12, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v12}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v12}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    :cond_8
    return-void
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 7
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

    const/4 v1, 0x1

    const/4 v4, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->mHasEntered:Z

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v5, v5, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v5, :cond_2

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v5, v6, v4}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v1}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getMenuAppsSearchBar()Landroid/view/ViewGroup;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    if-nez v3, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    new-instance v6, Lcom/android/launcher2/MenuAppsGrid$StateNormal$3;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuAppsGrid$StateNormal$3;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateNormal;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    new-instance v6, Lcom/android/launcher2/MenuAppsGrid$StateNormal$4;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuAppsGrid$StateNormal$4;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateNormal;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v5, Lcom/android/launcher2/MenuAppsGrid$StateNormal$5;

    invoke-direct {v5, p0}, Lcom/android/launcher2/MenuAppsGrid$StateNormal$5;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateNormal;)V

    invoke-virtual {v3, v5}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mIsFirstEnter:Z
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$2400(Lcom/android/launcher2/MenuAppsGrid;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->initSearchBarContainerView()V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # setter for: Lcom/android/launcher2/MenuAppsGrid;->mIsFirstEnter:Z
    invoke-static {v5, v4}, Lcom/android/launcher2/MenuAppsGrid;->access$2402(Lcom/android/launcher2/MenuAppsGrid;Z)Z

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/MenuAppsGrid;->updateMoreButtonState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuTitleBarManager;->getEditDoneBtn()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getMenuAppsMoreButton()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method public enterFolderItemViews(Ljava/lang/Iterable;)V
    .locals 5
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

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->showBadge()V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v4

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    invoke-static {v2, v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->access$2100(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/MenuAppIconView;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuAppsGrid;->getComingPage()I

    move-result v6

    const/4 v15, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/AppItem;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuAppIconView;->showBadge()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2100(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    if-eqz v14, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAlphabeticalOrder()Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v22

    sget-object v24, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4

    iget v15, v14, Lcom/android/launcher2/AppItem;->mScreenInAlphabetical:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v22, v0

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mIsStartUninstallAni:Z
    invoke-static/range {v22 .. v22}, Lcom/android/launcher2/MenuAppsGrid;->access$2600(Lcom/android/launcher2/MenuAppsGrid;)Z

    move-result v22

    if-eqz v22, :cond_0

    if-ne v15, v6, :cond_0

    iget v0, v14, Lcom/android/launcher2/AppItem;->mBadgeCount:I

    move/from16 v22, v0

    if-nez v22, :cond_2

    sget-object v22, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/android/launcher2/MenuAppModel;->canRemovable(Lcom/android/launcher2/AppItem;)Z

    move-result v22

    if-nez v22, :cond_1

    invoke-virtual {v14}, Lcom/android/launcher2/AppItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v22

    sget-object v24, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderPopup()Z

    move-result v22

    if-nez v22, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v22

    if-eqz v22, :cond_1

    check-cast v14, Lcom/android/launcher2/FolderItem;

    invoke-interface {v14}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v22

    if-nez v22, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v22

    if-nez v22, :cond_2

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuAppIconView;->startHideOverlayAnimation()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/launcher2/FolderItem;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v8}, Lcom/android/launcher2/AppFolderItem;->isOpened()Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v22, v0

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static/range {v22 .. v22}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/FolderContent;->getPagedView()Lcom/android/launcher2/FolderPagedView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/FolderPagedView;->getCurrentPage()I

    move-result v5

    invoke-virtual {v9, v5}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/CellLayoutFolder;

    move-object/from16 v3, v22

    check-cast v3, Lcom/android/launcher2/CellLayoutFolder;

    const/16 v17, 0x0

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v22, 0x7f0b0017

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const v22, 0x7f0b0018

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    mul-int v17, v7, v10

    :goto_1
    const/16 v16, 0x0

    :goto_2
    invoke-virtual {v8}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v22

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v13

    instance-of v0, v13, Lcom/android/launcher2/AppItem;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    move-object v12, v13

    check-cast v12, Lcom/android/launcher2/AppItem;

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/android/launcher2/AppItem;->getIconView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_3

    invoke-virtual {v12}, Lcom/android/launcher2/AppItem;->getIconView()Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/launcher2/MenuAppIconView;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    invoke-virtual {v12}, Lcom/android/launcher2/AppItem;->getIconView()Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/MenuAppIconView;

    move-object/from16 v11, v22

    check-cast v11, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppIconView;->showBadge()V

    sget-object v22, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/android/launcher2/MenuAppModel;->canRemovable(Lcom/android/launcher2/AppItem;)Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/android/launcher2/MenuAppIconView;->setUninstallIconVisibility(I)V

    iget v0, v12, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v22, v0

    div-int v18, v22, v17

    move/from16 v0, v18

    if-ne v5, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v22, v0

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mIsStartUninstallAni:Z
    invoke-static/range {v22 .. v22}, Lcom/android/launcher2/MenuAppsGrid;->access$2600(Lcom/android/launcher2/MenuAppsGrid;)Z

    move-result v22

    if-eqz v22, :cond_3

    iget v0, v13, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    move/from16 v22, v0

    if-nez v22, :cond_3

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppIconView;->startHideOverlayAnimation()V

    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_4
    iget v15, v14, Lcom/android/launcher2/AppItem;->mScreen:I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutFolder;->getCountX()I

    move-result v22

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutFolder;->getCountY()I

    move-result v24

    mul-int v17, v22, v24

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v22, v0

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static/range {v22 .. v22}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v22, v0

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static/range {v22 .. v22}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v22, v0

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static/range {v22 .. v22}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    :cond_7
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
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

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->mHasEntered:Z

    if-nez v0, :cond_0

    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x1

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setAppSearchAnimation(Ljava/util/List;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2500(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->mHasEntered:Z

    goto :goto_0
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

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->isMenuExiting()Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v0

    iget-object v2, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateNormal;Lcom/android/launcher2/AppItem;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->onResume()V

    :cond_0
    return-void
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getTabHost()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->changeToAppsStateSearch()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onVoiceSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderMultiSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$2;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher2/MenuAppsGrid$StateNormal$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateNormal;Lcom/android/launcher2/Folder;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/Folder;->setAddToFolderButtonListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
