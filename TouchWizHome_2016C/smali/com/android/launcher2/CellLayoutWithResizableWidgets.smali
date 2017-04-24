.class public Lcom/android/launcher2/CellLayoutWithResizableWidgets;
.super Lcom/android/launcher2/CellLayout;
.source "CellLayoutWithResizableWidgets.java"


# instance fields
.field private mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

.field private mNoRoomForDropStatus:Z

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mNoRoomForDropStatus:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/CellLayoutWithResizableWidgets;)Lcom/android/launcher2/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 4

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mIsZeroPageCell:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    if-ne v2, p0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->remainOrRemovePlusPage()V

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->createPageForDrag()V

    :cond_2
    instance-of v2, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget-object v2, v0, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    goto :goto_0
.end method

.method public canAcceptDrop(Lcom/android/launcher2/DragState;IZ)Z
    .locals 26

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v22

    if-nez v22, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->invalidatePageIndicatorPreview()V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getOccupied()[[Z

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mDragCell:[I

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCountX()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCountY()I

    move-result v6

    invoke-static/range {v2 .. v7}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->findVacantCell([IIIII[[Z)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->invalidatePageIndicatorPreview()V

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v12

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mDragCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mDragCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/16 v18, 0x1

    :goto_1
    if-nez v18, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/16 v18, 0x0

    goto :goto_1

    :cond_5
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v17

    iput v12, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, v17

    iput v13, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mDragCell:[I

    const/4 v3, 0x0

    aget v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mDragCell:[I

    const/4 v3, 0x1

    aget v11, v2, v3

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    move/from16 v14, p2

    move/from16 v15, p3

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, v24

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_8

    move-object/from16 v2, v24

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->onDrop()V

    move-object/from16 v0, v24

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_9

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v23, v24

    check-cast v23, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public clearResizeFrame()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->exitResize()V

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->realRemoveView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->setCurrentResizeWidgetItem(Lcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method public findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->invalidatePageIndicatorPreview()V

    return v0
.end method

.method public getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    return-object v0
.end method

.method protected invalidatePageIndicatorPreview()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    iget-object v0, v1, Lcom/android/launcher2/Workspace;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->invalidate()V

    :cond_0
    return-void
.end method

.method public isNoRoomForDropStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mNoRoomForDropStatus:Z

    return v0
.end method

.method newCellPositioner()Lcom/android/launcher2/CellPositioner;
    .locals 1

    new-instance v0, Lcom/android/launcher2/CellPositioner;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellPositioner;-><init>(Lcom/android/launcher2/CellLayout;)V

    return-object v0
.end method

.method public noRoomForDrop(Lcom/android/launcher2/DragState;III)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Workspace;

    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v12

    if-eqz v12, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mNoRoomForDropStatus:Z

    if-eqz v2, :cond_2

    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    :goto_1
    const/high16 v10, -0x80000000

    const/4 v3, 0x1

    add-int/lit8 v8, p2, 0x1

    :goto_2
    if-eqz v3, :cond_0

    if-lt v8, v6, :cond_0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_3
    add-int/lit8 v8, v12, 0x0

    :cond_0
    if-nez v3, :cond_5

    move/from16 v0, p2

    if-lt v8, v0, :cond_5

    if-nez v2, :cond_4

    :goto_4
    const/high16 v12, -0x80000000

    if-eq v12, v10, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher2/Workspace;->setOutOfSpaceMessageNeeded(Z)V

    move v9, v10

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v11, v9}, Lcom/android/launcher2/CellLayoutWithResizableWidgets$2;-><init>(Lcom/android/launcher2/CellLayoutWithResizableWidgets;Lcom/android/launcher2/Workspace;I)V

    const-wide/16 v14, 0x32

    invoke-virtual {v7, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mNoRoomForDropStatus:Z

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    :cond_4
    move v8, v6

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v11, v8}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v12, v4, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v12, :cond_6

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8, v12}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->canAcceptDrop(Lcom/android/launcher2/DragState;IZ)Z

    move-result v12

    if-eqz v12, :cond_6

    move v10, v8

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/launcher2/HomeView;->showNoRoomAnyPageMessage(Landroid/content/Context;)V

    goto :goto_5
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->onDragExit()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public onDragExit()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->invalidatePageIndicatorPreview()V

    return-void
.end method

.method public onPreReorderAnimation(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->onPreReorderAnimation(Landroid/view/View;)V

    return-void
.end method

.method public reapplyIconViewStyles(Z)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/IconConfig;->getInfo(Lcom/android/launcher2/IconConfig$TYPE;)Lcom/android/launcher2/IconInfo$Info;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/IconInfo$Info;->loadStyle(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getPageChildCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_0
    if-ltz v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v5, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/FolderIconView;->setUseScaleAnimation(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v3, v7}, Lcom/android/launcher2/FolderIconView;->setUseScaleAnimation(Z)V

    sget-object v5, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher2/IconConfig;->applyFolderIconView(Lcom/android/launcher2/IconConfig$TYPE;Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    instance-of v5, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v5, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppIconView;->setUseScaleAnimation(Z)V

    sget-object v5, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v5, v0}, Lcom/android/launcher2/IconConfig;->applyAppIconView(Lcom/android/launcher2/IconConfig$TYPE;Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0, v5}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    :cond_2
    invoke-virtual {v0, v7}, Lcom/android/launcher2/AppIconView;->setUseScaleAnimation(Z)V

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/IconConfig;->recycleViewStyles(Lcom/android/launcher2/IconConfig$TYPE;)V

    return-void
.end method

.method public setHomeView(Lcom/android/launcher2/HomeView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V
    .locals 7

    invoke-super/range {p0 .. p8}, Lcom/android/launcher2/CellLayout;->setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/IconMoveContainer;->checkAndUpdateItemsPosition(IIIII)V

    :cond_0
    return-void
.end method

.method public setResizeFrame(Landroid/view/View;Ljava/lang/Runnable;Lcom/android/launcher2/Workspace$State;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq p3, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    new-instance v2, Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1, p0}, Lcom/android/launcher2/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher2/HomeItem;Landroid/view/View;Lcom/android/launcher2/CellLayoutWithResizableWidgets;)V

    iput-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    new-instance v3, Lcom/android/launcher2/CellLayoutWithResizableWidgets$1;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets$1;-><init>(Lcom/android/launcher2/CellLayoutWithResizableWidgets;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppWidgetResizeFrame;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->snapToWidget(Z)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setClipChildren(Z)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/HomeView;->setCurrentResizeWidgetItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method
