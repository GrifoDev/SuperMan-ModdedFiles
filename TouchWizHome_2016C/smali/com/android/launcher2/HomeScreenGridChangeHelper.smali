.class public Lcom/android/launcher2/HomeScreenGridChangeHelper;
.super Ljava/lang/Object;
.source "HomeScreenGridChangeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.HomeScreenGrid"

.field public static mChangeGridState:Z


# instance fields
.field private mCellGapX:I

.field private mCellGapY:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCellX:I

.field private mCellY:I

.field private mContext:Landroid/content/Context;

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private original_cellX:I

.field private original_cellY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mChangeGridState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/HomeView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    iput v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    iput v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->original_cellX:I

    iput v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->original_cellY:I

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomeScreenGridChangeHelper;)Lcom/android/launcher2/QuickViewWorkspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeScreenGridChangeHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->addNewPageOnChangingGrid()V

    return-void
.end method

.method private addNewPageOnChangingGrid()V
    .locals 5

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->getAdditionPageCount()I

    move-result v0

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    add-int v1, v4, v0

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v4, v1, v3}, Lcom/android/launcher2/QuickViewWorkspace;->insertPageAndMoveItems(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addOutsideAndRemovedItem(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/HomeItem;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    iget-object v0, p1, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private doChangeWorkspace(Lcom/android/launcher2/CellLayout;)Z
    .locals 32

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellHeight:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lcom/android/launcher2/CellLayout;->setCellSize(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellGapX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellGapY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lcom/android/launcher2/CellLayout;->setGaps(II)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/CellLayout;->refreshCellDimension()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellGapX:I

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellGapY:I

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v7}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getOutSidePosition(Ljava/util/List;II)I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v3

    add-int/lit8 v15, v3, -0x1

    :goto_0
    const/4 v3, -0x1

    if-le v15, v3, :cond_1a

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v17, v27

    check-cast v17, Lcom/android/launcher2/HomeItem;

    if-nez v17, :cond_2

    const-string v3, "Launcher.HomeScreenGrid"

    const-string v6, "HomeView: oChangeWorkspace() item is Null "

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v17, :cond_8

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    if-le v3, v6, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    sget-object v3, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->BOTTOM_LEFT:Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->ordinal()I

    move-result v3

    move/from16 v0, v20

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->TOP_LEFT:Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->ordinal()I

    move-result v3

    move/from16 v0, v20

    if-ne v0, v3, :cond_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :cond_4
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    if-le v3, v6, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    sget-object v3, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->TOP_RIGHT:Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->ordinal()I

    move-result v3

    move/from16 v0, v20

    if-eq v0, v3, :cond_5

    sget-object v3, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->TOP_LEFT:Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->ordinal()I

    move-result v3

    move/from16 v0, v20

    if-ne v0, v3, :cond_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    :cond_6
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v26, v0

    sget-object v3, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->BOTTOM_RIGHT:Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->ordinal()I

    move-result v3

    move/from16 v0, v20

    if-ne v0, v3, :cond_9

    add-int v3, v4, v25

    if-gt v3, v11, :cond_7

    add-int v3, v5, v26

    move/from16 v0, v24

    if-le v3, v0, :cond_c

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->addOutsideAndRemovedItem(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/HomeItem;)V

    :cond_8
    :goto_1
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_0

    :cond_9
    sget-object v3, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->BOTTOM_LEFT:Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->ordinal()I

    move-result v3

    move/from16 v0, v20

    if-ne v0, v3, :cond_10

    if-eqz v4, :cond_a

    add-int v3, v5, v26

    move/from16 v0, v24

    if-le v3, v0, :cond_b

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->addOutsideAndRemovedItem(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/HomeItem;)V

    goto :goto_1

    :cond_b
    add-int/lit8 v4, v4, -0x1

    :cond_c
    :goto_2
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ne v3, v4, :cond_d

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    if-eq v3, v5, :cond_e

    :cond_d
    const/4 v12, 0x1

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v17

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    :cond_e
    instance-of v3, v10, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_18

    move-object/from16 v30, v17

    check-cast v30, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v3, :cond_f

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellWidth:I

    mul-int/2addr v6, v3

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    const/4 v7, 0x2

    if-lt v3, v7, :cond_16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellGapX:I

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v3, v7

    :goto_3
    add-int v29, v6, v3

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellHeight:I

    mul-int/2addr v6, v3

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    const/4 v7, 0x2

    if-lt v3, v7, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellGapY:I

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v3, v7

    :goto_4
    add-int v28, v6, v3

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v30

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-static {v3, v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->calculateWidgetSize(Landroid/content/Context;Lcom/android/launcher2/HomeWidgetItem;II)Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v23

    move-object/from16 v0, v30

    iget-object v14, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v14, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setResizeScaleResult(Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v6, v14, v3, v7, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    invoke-virtual {v14}, Lcom/android/launcher2/LauncherAppWidgetHostView;->invalidate()V

    :cond_f
    :goto_5
    if-eqz v12, :cond_8

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto/16 :goto_1

    :cond_10
    sget-object v3, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->TOP_RIGHT:Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->ordinal()I

    move-result v3

    move/from16 v0, v20

    if-ne v0, v3, :cond_13

    add-int v3, v4, v25

    if-gt v3, v11, :cond_11

    if-nez v5, :cond_12

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->addOutsideAndRemovedItem(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_1

    :cond_12
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2

    :cond_13
    sget-object v3, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->TOP_LEFT:Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->ordinal()I

    move-result v3

    move/from16 v0, v20

    if-ne v0, v3, :cond_c

    if-eqz v4, :cond_14

    if-nez v5, :cond_15

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->addOutsideAndRemovedItem(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_1

    :cond_15
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2

    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_18
    instance-of v3, v10, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_19

    move-object v13, v10

    check-cast v13, Lcom/android/launcher2/FolderIconView;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v3

    sget-object v6, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v3, v6, v13}, Lcom/android/launcher2/IconConfig;->applyAppIconView(Lcom/android/launcher2/IconConfig$TYPE;Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v13}, Lcom/android/launcher2/FolderIconView;->refresh()V

    goto :goto_5

    :cond_19
    instance-of v3, v10, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_f

    move-object v9, v10

    check-cast v9, Lcom/android/launcher2/AppIconView;

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v3

    sget-object v6, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v3, v6, v9}, Lcom/android/launcher2/IconConfig;->applyAppIconView(Lcom/android/launcher2/IconConfig$TYPE;Lcom/android/launcher2/AppIconView;)V

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->getOutSideItems(I)Ljava/util/List;

    move-result-object v18

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    if-eqz v18, :cond_1e

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_1b
    :goto_6
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/BaseItem;

    move-object/from16 v17, v16

    check-cast v17, Lcom/android/launcher2/HomeItem;

    const/4 v3, 0x2

    new-array v8, v3, [I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    add-int/lit8 v3, v3, -0x1

    if-le v4, v3, :cond_1c

    add-int/lit8 v4, v4, -0x1

    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    add-int/lit8 v3, v3, -0x1

    if-le v5, v3, :cond_1d

    add-int/lit8 v5, v5, -0x1

    :cond_1d
    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher2/CellLayout;->findNearestVacantAreaWithCell(IIII[I)[I

    const/4 v3, 0x0

    aget v3, v8, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1b

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1b

    const/4 v3, 0x0

    aget v3, v8, v3

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v3, 0x1

    aget v3, v8, v3

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1e
    if-eqz v22, :cond_1f

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    if-eqz v3, :cond_1f

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1f
    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    if-eqz v3, :cond_20

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    const/16 v19, 0x1

    :cond_20
    return v19
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getOutSidePosition(Ljava/util/List;II)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;II)I"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    move-object v4, v3

    check-cast v4, Lcom/android/launcher2/HomeItem;

    iget v10, v4, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v11, v4, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    instance-of v13, v4, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v13, :cond_6

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getSpanX()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getSpanY()I

    move-result v7

    move/from16 v0, p2

    if-le v6, v0, :cond_1

    move/from16 v6, p2

    :cond_1
    move/from16 v0, p3

    if-le v7, v0, :cond_2

    move/from16 v7, p3

    :cond_2
    move/from16 v0, p2

    if-ge v10, v0, :cond_3

    move/from16 v0, p3

    if-ge v11, v0, :cond_3

    add-int v13, v10, v6

    move/from16 v0, p2

    if-gt v13, v0, :cond_3

    add-int v13, v11, v7

    move/from16 v0, p3

    if-gt v13, v0, :cond_3

    mul-int v13, v6, v7

    add-int/2addr v2, v13

    :cond_3
    if-lez v10, :cond_4

    move/from16 v0, p3

    if-ge v11, v0, :cond_4

    add-int v13, v10, v6

    if-lez v13, :cond_4

    add-int v13, v11, v7

    move/from16 v0, p3

    if-gt v13, v0, :cond_4

    mul-int v13, v6, v7

    add-int/2addr v1, v13

    :cond_4
    move/from16 v0, p2

    if-ge v10, v0, :cond_5

    if-lez v11, :cond_5

    add-int v13, v10, v6

    move/from16 v0, p2

    if-gt v13, v0, :cond_5

    add-int v13, v11, v7

    if-lez v13, :cond_5

    mul-int v13, v6, v7

    add-int/2addr v9, v13

    :cond_5
    if-lez v10, :cond_0

    if-lez v11, :cond_0

    add-int v13, v10, v6

    if-lez v13, :cond_0

    add-int v13, v11, v7

    if-lez v13, :cond_0

    mul-int v13, v6, v7

    add-int/2addr v8, v13

    goto :goto_0

    :cond_6
    move/from16 v0, p2

    if-ge v10, v0, :cond_7

    move/from16 v0, p3

    if-ge v11, v0, :cond_7

    add-int/lit8 v2, v2, 0x1

    :cond_7
    if-lez v10, :cond_8

    move/from16 v0, p3

    if-ge v11, v0, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    move/from16 v0, p2

    if-ge v10, v0, :cond_9

    if-lez v11, :cond_9

    add-int/lit8 v9, v9, 0x1

    :cond_9
    if-lez v10, :cond_0

    if-lez v11, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    return v12
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private restorePage(Lcom/android/launcher2/CellLayout;)V
    .locals 7

    iget-object v3, p1, Lcom/android/launcher2/CellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->original_cellX:I

    iget v6, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->original_cellY:I

    invoke-virtual {p1, v3, v6}, Lcom/android/launcher2/CellLayout;->restoreGridSize(II)V

    :cond_2
    iget-object v3, p1, Lcom/android/launcher2/CellLayout;->mRestoredItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, Lcom/android/launcher2/CellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p1, Lcom/android/launcher2/CellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    iget-object v3, p1, Lcom/android/launcher2/CellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BackupItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/BackupItem;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iget v3, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v0}, Lcom/android/launcher2/BackupItem;->getCellX()I

    move-result v6

    if-ne v3, v6, :cond_3

    iget v3, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v0}, Lcom/android/launcher2/BackupItem;->getCellY()I

    move-result v6

    if-ne v3, v6, :cond_3

    iget v3, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v0}, Lcom/android/launcher2/BackupItem;->getScreen()I

    move-result v6

    if-ne v3, v6, :cond_3

    iget v3, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    invoke-virtual {v0}, Lcom/android/launcher2/BackupItem;->getSpanX()I

    move-result v6

    if-ne v3, v6, :cond_3

    iget v3, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-virtual {v0}, Lcom/android/launcher2/BackupItem;->getSpanY()I

    move-result v6

    if-eq v3, v6, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher2/BackupItem;->getCellX()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v0}, Lcom/android/launcher2/BackupItem;->getCellY()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v0}, Lcom/android/launcher2/BackupItem;->getSpanX()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    invoke-virtual {v0}, Lcom/android/launcher2/BackupItem;->getSpanY()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-virtual {v0}, Lcom/android/launcher2/BackupItem;->getScreen()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-object v3, p1, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/launcher2/CellLayout;->mRestoredItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->updateItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1
.end method


# virtual methods
.method public addPage(I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030053

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    return-void

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030054

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030052

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_0
.end method

.method public applyGridChangefinally()V
    .locals 19

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    invoke-static {v2, v4, v5}, Lcom/android/launcher2/Utilities;->storeGridLayoutPreference(Landroid/content/Context;II)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v15

    const-string v2, "Launcher.HomeScreenGrid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyGridChangefinally : new grid applied = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    const-string v4, "HSGR"

    invoke-virtual {v15}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->name()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v18

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout;

    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/android/launcher2/CellLayout;->mTempPage:Z

    const/16 v17, 0x0

    :goto_1
    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    if-nez v3, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, v13, Lcom/android/launcher2/CellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    iget-wide v4, v3, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/BackupItem;

    if-eqz v12, :cond_2

    iget v2, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v12}, Lcom/android/launcher2/BackupItem;->getCellX()I

    move-result v4

    if-ne v2, v4, :cond_2

    iget v2, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v12}, Lcom/android/launcher2/BackupItem;->getCellY()I

    move-result v4

    if-ne v2, v4, :cond_2

    iget v2, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    invoke-virtual {v12}, Lcom/android/launcher2/BackupItem;->getSpanX()I

    move-result v4

    if-ne v2, v4, :cond_2

    iget v2, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-virtual {v12}, Lcom/android/launcher2/BackupItem;->getSpanY()I

    move-result v4

    if-eq v2, v4, :cond_0

    :cond_2
    const-string v2, "Launcher.HomeScreenGrid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db update item = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/launcher2/HomeItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v7, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v8, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v9, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v10, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    const-string v11, "applyGridChange"

    invoke-static/range {v2 .. v11}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIIILjava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public backupOriginalData()V
    .locals 12

    const/4 v8, 0x2

    new-array v7, v8, [I

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    const/4 v8, 0x0

    aget v8, v7, v8

    iput v8, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->original_cellX:I

    const/4 v8, 0x1

    aget v8, v7, v8

    iput v8, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->original_cellY:I

    iget-object v8, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    iget-object v8, v1, Lcom/android/launcher2/CellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/android/launcher2/CellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->clear()V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v8

    if-ge v5, v8, :cond_1

    new-instance v0, Lcom/android/launcher2/BackupItem;

    invoke-direct {v0}, Lcom/android/launcher2/BackupItem;-><init>()V

    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/BackupItem;->setItem(Lcom/android/launcher2/BaseItem;)V

    iget-object v8, v1, Lcom/android/launcher2/CellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    iget-wide v10, v4, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v8, v10, v11, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public changeGrid(II)V
    .locals 7

    const/4 v6, 0x1

    iget v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    if-ne v4, p1, :cond_1

    iget v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    if-ne v4, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v6, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mChangeGridState:Z

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mTempPage:Z

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->removeAllItems()V

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/QuickViewWorkspace;->removeScreen(I)V

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->restorePage(Lcom/android/launcher2/CellLayout;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->initWorkspaceInfo(II)V

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mChangeGridState:Z

    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    mul-int/2addr v4, v5

    div-int/2addr v4, p1

    iput v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    mul-int/2addr v4, v5

    div-int/2addr v4, p2

    iput v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellHeight:I

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_7
    iget v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    iget v5, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v1

    sget-object v4, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/IconConfig;->getInfo(Lcom/android/launcher2/IconConfig$TYPE;)Lcom/android/launcher2/IconInfo$Info;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/IconInfo$Info;->loadStyle(Landroid/content/Context;)V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_a

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v4, :cond_9

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v4

    if-ne v4, v6, :cond_9

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_8

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->doChangeWorkspace(Lcom/android/launcher2/CellLayout;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    sget-object v4, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/IconConfig;->recycleViewStyles(Lcom/android/launcher2/IconConfig$TYPE;)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/launcher2/HomeScreenGridChangeHelper$1;

    invoke-direct {v5, p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper$1;-><init>(Lcom/android/launcher2/HomeScreenGridChangeHelper;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public getGridValues()Lcom/android/launcher2/GridValues;
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getGridValuesForRes(Landroid/content/res/Resources;Landroid/content/Context;)Lcom/android/launcher2/GridValues;

    move-result-object v0

    return-object v0
.end method

.method public getGridValuesForRes(Landroid/content/res/Resources;Landroid/content/Context;)Lcom/android/launcher2/GridValues;
    .locals 16

    new-instance v13, Lcom/android/launcher2/GridValues;

    invoke-direct {v13}, Lcom/android/launcher2/GridValues;-><init>()V

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v5

    sget-object v14, Lcom/android/launcher2/HomeScreenGridChangeHelper$2;->$SwitchMap$com$android$launcher2$LauncherApplication$HomeGridSize:[I

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/launcher2/GridValues;->setCellWidth(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/launcher2/GridValues;->setCellHeight(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/launcher2/GridValues;->setGapX(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/launcher2/GridValues;->setGapY(I)V

    sget-object v14, Lcom/android/launcher2/ShadowStyleable;->View:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    sget-object v14, Lcom/android/launcher2/ShadowStyleable;->TextView:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget-object v14, Lcom/android/launcher2/ShadowStyleable;->View:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget-object v14, Lcom/android/launcher2/ShadowStyleable;->TextView:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v13

    :pswitch_0
    const v9, 0x7f0900f1

    const v8, 0x7f0900ee

    const v6, 0x7f0900e8

    const v7, 0x7f0900eb

    const v12, 0x7f0e0005

    const v11, 0x7f0e0006

    const v10, 0x7f090241

    goto :goto_0

    :pswitch_1
    const v9, 0x7f090231

    const v8, 0x7f090230

    const v6, 0x7f09022f

    const v7, 0x7f0901ce

    const v12, 0x7f0e0013

    const v11, 0x7f0e0014

    const v10, 0x7f09022d

    goto :goto_0

    :pswitch_2
    const v9, 0x7f090235

    const v8, 0x7f090234

    const v6, 0x7f090233

    const v7, 0x7f0901d0

    const v12, 0x7f0e0013

    const v11, 0x7f0e0014

    const v10, 0x7f09022e

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public initWorkspaceInfo(II)V
    .locals 6

    iput p1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    iput p2, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    iget v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellX:I

    iget v2, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellY:I

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherApplication;->setLauncherGridSize(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->getGridValues()Lcom/android/launcher2/GridValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/GridValues;->getGapX()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellGapX:I

    invoke-virtual {v0}, Lcom/android/launcher2/GridValues;->getCellWidth()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellWidth:I

    invoke-virtual {v0}, Lcom/android/launcher2/GridValues;->getCellHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellHeight:I

    invoke-virtual {v0}, Lcom/android/launcher2/GridValues;->getGapY()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellGapY:I

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget v2, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellGapX:I

    iget v5, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mCellGapY:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher2/WorkspaceSpanCalculator;->setCellSize(IIII)V

    :cond_0
    return-void
.end method

.method public restoreGridLayout()V
    .locals 2

    iget v0, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->original_cellX:I

    iget v1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->original_cellY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->changeGrid(II)V

    return-void
.end method
