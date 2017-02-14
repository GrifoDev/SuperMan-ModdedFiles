.class public Lcom/android/launcher2/CellLayoutNoGap;
.super Lcom/android/launcher2/CellLayout;
.source "CellLayoutNoGap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CellLayoutNoGap"


# instance fields
.field private mCloseLayoutGapPosted:Z

.field protected mDisabled:Z

.field protected mDragOutline:Landroid/graphics/Bitmap;

.field private mEmptyCell:I

.field protected mFolder:Lcom/android/launcher2/Folder;

.field private mForceReorder:Z

.field protected mHiddenItem:Lcom/android/launcher2/BaseItem;

.field protected mHighlightedCell:I

.field private mIsClosingEmptyFolder:Z

.field protected mOverCell:I

.field private mPreviousOverCell:I

.field private mPreviousTargetCell:I

.field private mReOrderingEnabled:Z

.field private mReorderAlarm:Lcom/android/launcher2/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

.field protected mReorderImmediately:Z

.field private mReorderOnItemDeleted:Z

.field protected mTargetCell:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/launcher2/Alarm;

    invoke-direct {v0}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mOverCell:I

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHighlightedCell:I

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mEmptyCell:I

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousOverCell:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    iput-boolean v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    iput-boolean v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderOnItemDeleted:Z

    iput-boolean v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    iput-boolean v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mCloseLayoutGapPosted:Z

    iput-boolean v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    iput-boolean v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mIsClosingEmptyFolder:Z

    new-instance v0, Lcom/android/launcher2/CellLayoutNoGap$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutNoGap$2;-><init>(Lcom/android/launcher2/CellLayoutNoGap;)V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayoutNoGap;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mCloseLayoutGapPosted:Z

    return p1
.end method

.method private isFolderAnimRange(Lcom/android/launcher2/BaseItem;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getActiveRange()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v1

    if-eqz v0, :cond_1

    aget v4, v0, v2

    if-lt v1, v4, :cond_0

    aget v4, v0, v3

    if-le v1, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V
    .locals 1

    iget v0, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;II)V

    return-void
.end method

.method private updateItemToNewPosition(Lcom/android/launcher2/BaseItem;IIJ)V
    .locals 10

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/PagedView;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/PagedView;

    invoke-virtual {v9}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v8

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderOnItemDeleted:Z

    if-nez v1, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v3

    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v4

    instance-of v1, v2, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_8

    move-object v1, v2

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_1
    :goto_1
    instance-of v1, p0, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_2

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    const/16 v5, 0x14a

    move-object v1, p0

    move-wide v6, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/CellLayoutNoGap;->animateChildToPosition(Landroid/view/View;IIIJZ)Z

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getScreen()I

    move-result v1

    invoke-virtual {v9}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v5

    if-eq v1, v5, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    instance-of v1, p0, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v1, :cond_0

    check-cast v9, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuAppsGrid;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->isFolderAnimRange(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v8, 0x1

    :goto_2
    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    :cond_8
    instance-of v1, v2, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v1, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    goto :goto_1
.end method


# virtual methods
.method protected ableToCloseLayGap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher2/FolderItem;->contains(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReorderingForDragOnFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-interface {v0, p1, v1}, Lcom/android/launcher2/FolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->updateVisibleRange()V

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelAllFolderAnimations()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v4, v3, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v1

    instance-of v4, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v4, :cond_0

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method cancelRealTimeReorder()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    return-void
.end method

.method cellToPosition(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v0

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0
.end method

.method checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z
    .locals 17

    const/4 v9, 0x0

    const/4 v12, 0x2

    new-array v11, v12, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v10

    const/4 v12, 0x0

    aget v12, v10, v12

    sub-int v12, p2, v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int v4, v12, v13

    const/4 v12, 0x1

    aget v12, v10, v12

    sub-int v12, p3, v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int v5, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v11}, Lcom/android/launcher2/CellLayoutNoGap;->pointToCellExact(II[I)V

    const/4 v12, 0x2

    new-array v8, v12, [I

    const/4 v12, 0x0

    aget v12, v11, v12

    const/4 v13, 0x1

    aget v13, v11, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v8}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPoint(II[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCellWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCellHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getGapX()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int v13, v3, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v14

    mul-int/2addr v13, v14

    sub-int/2addr v12, v13

    div-int/lit8 v7, v12, 0x2

    move-object/from16 v0, p0

    instance-of v12, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v12, :cond_0

    const/4 v7, 0x0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    const/4 v12, 0x0

    aget v12, v8, v12

    add-int/2addr v12, v7

    div-int/lit8 v13, v3, 0x4

    add-int/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v8, v13

    div-int/lit8 v14, v2, 0x4

    add-int/2addr v13, v14

    const/4 v14, 0x0

    aget v14, v8, v14

    add-int/2addr v14, v7

    add-int/2addr v14, v3

    div-int/lit8 v15, v3, 0x4

    sub-int/2addr v14, v15

    const/4 v15, 0x1

    aget v15, v8, v15

    add-int/2addr v15, v2

    div-int/lit8 v16, v2, 0x4

    sub-int v15, v15, v16

    invoke-direct {v1, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v12, v1, Landroid/graphics/Rect;->left:I

    if-le v4, v12, :cond_1

    iget v12, v1, Landroid/graphics/Rect;->right:I

    if-ge v4, v12, :cond_1

    iget v12, v1, Landroid/graphics/Rect;->top:I

    if-le v5, v12, :cond_1

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v12, :cond_1

    const/4 v9, 0x1

    :cond_1
    return v9
.end method

.method protected closeLayoutGap()V
    .locals 11

    const/4 v7, 0x1

    const/4 v10, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->hasAnimatingChild()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mCloseLayoutGapPosted:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v7, p0, Lcom/android/launcher2/CellLayoutNoGap;->mCloseLayoutGapPosted:Z

    new-instance v7, Lcom/android/launcher2/CellLayoutNoGap$1;

    invoke-direct {v7, p0}, Lcom/android/launcher2/CellLayoutNoGap$1;-><init>(Lcom/android/launcher2/CellLayoutNoGap;)V

    const-wide/16 v8, 0x14

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/launcher2/CellLayoutNoGap;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v8

    if-le v8, v10, :cond_3

    if-nez v2, :cond_3

    const-string v8, "CellLayoutNoGap"

    const-string v9, "existsEmptyCell() went unexpected returns. Check with findFirstEmptySpace() again to correct."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v8

    if-le v8, v10, :cond_5

    move v2, v7

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    iget-boolean v7, p0, Lcom/android/launcher2/CellLayoutNoGap;->mIsClosingEmptyFolder:Z

    if-nez v7, :cond_4

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v1

    if-ne v1, v10, :cond_6

    :cond_4
    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    iget-object v7, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findAllOccupiedCells()[Z

    move-result-object v5

    const/4 v6, -0x1

    add-int/lit8 v4, v1, 0x1

    :goto_3
    array-length v7, v5

    if-ge v4, v7, :cond_7

    aget-boolean v7, v5, v4

    if-eqz v7, :cond_8

    move v6, v4

    :cond_7
    if-eq v6, v1, :cond_4

    if-eq v6, v10, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v3, v1}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V

    goto :goto_2

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method protected emptyPositionForReorder()V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find empty cell. This should never happen! Cell Occupancy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findAllOccupiedCells()[Z

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " item count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method existsEmptyCell()Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderOnItemDeleted:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v3

    mul-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method existsEmptyCellIgnoreHidden()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findAllOccupiedCells()[Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v5

    mul-int v0, v4, v5

    new-array v2, v0, [Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v3

    if-ltz v3, :cond_0

    if-ge v3, v0, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderOnItemDeleted:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mEmptyCell:I

    if-eq v3, v5, :cond_0

    :cond_1
    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public findDropLocation(IIILjava/lang/Object;)V
    .locals 41

    if-eqz p4, :cond_1

    check-cast p4, Lcom/android/launcher2/DragState;

    move-object/from16 v17, p4

    :goto_0
    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v17, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v34, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPoint(II[I)V

    :try_start_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v31

    const/4 v4, 0x0

    aget v4, v34, v4

    const/4 v5, 0x0

    aget v5, v31, v5

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getWidthGap()I

    move-result v5

    add-int p1, v4, v5

    const/4 v4, 0x1

    aget v4, v34, v4

    const/4 v5, 0x1

    aget v5, v31, v5

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getHeightGap()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int p2, v4, v5

    :goto_2
    :pswitch_1
    const/4 v4, 0x2

    new-array v7, v4, [I

    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v38, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v37

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    const/4 v4, 0x0

    aget v4, v37, v4

    sub-int v4, p1, v4

    div-int/lit8 v5, v36, 0x2

    add-int v18, v4, v5

    const/4 v4, 0x1

    aget v4, v37, v4

    sub-int v4, p2, v4

    div-int/lit8 v5, v35, 0x2

    add-int v19, v4, v5

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/launcher2/CellLayoutNoGap;->pointToCellExact(II[I)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->pointToCellPartial(II[I)V

    const/4 v4, 0x0

    aget v20, v7, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getGapX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCellWidth()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v14, v4, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    if-nez v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContainerType()J

    move-result-wide v4

    const-wide/16 v8, -0x65

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move/from16 v0, v18

    if-le v0, v14, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v5, v7, v4

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderOnItemDeleted:Z

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayoutNoGap;->mEmptyCell:I

    move/from16 v24, v0

    :goto_4
    const/4 v4, 0x0

    aget v4, v7, v4

    const/4 v5, 0x1

    aget v5, v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPosition(II)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayoutNoGap;->mOverCell:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v21

    instance-of v4, v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v4, :cond_14

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/FolderIconView;

    if-nez v4, :cond_14

    const/16 v32, 0x1

    :goto_5
    if-nez v32, :cond_3

    move-object/from16 v0, v22

    instance-of v4, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v4, :cond_15

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/FolderIconView;

    if-nez v4, :cond_15

    :cond_3
    const/16 v32, 0x1

    :goto_6
    move/from16 v0, v24

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    const/4 v4, 0x0

    aget v4, v7, v4

    if-nez v4, :cond_4

    move/from16 v0, v24

    move/from16 v1, v33

    if-lt v0, v1, :cond_5

    :cond_4
    const/4 v4, 0x0

    aget v4, v7, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_16

    move/from16 v0, v24

    move/from16 v1, v33

    if-le v0, v1, :cond_16

    :cond_5
    const/4 v4, 0x0

    aget v4, v7, v4

    const/4 v5, 0x1

    aget v5, v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPosition(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v30

    const/16 v28, 0x0

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-nez v4, :cond_6

    add-int/lit8 v30, v30, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move/from16 v0, v30

    if-ge v4, v0, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-gez v4, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-gez v4, :cond_1c

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    :goto_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v5

    aput v5, v7, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v5

    aput v5, v7, v4

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    if-nez v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v40

    if-nez v40, :cond_1f

    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    if-eq v4, v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->clearDragOutlines()V

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher2/CellLayoutNoGap;->willCreateFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v13

    const/16 v27, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v25

    if-eqz v25, :cond_b

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v27, 0x1

    :cond_b
    const/16 v29, 0x0

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    move-object/from16 v29, v4

    check-cast v29, Lcom/android/launcher2/BaseItem;

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v4

    if-eqz v4, :cond_20

    instance-of v4, v13, Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_20

    if-nez v27, :cond_20

    move-object v10, v13

    check-cast v10, Lcom/android/launcher2/AppIconView;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/Hotseat;

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutHotseat;->getAllappsPos()I

    move-result v12

    move/from16 v0, v20

    if-ne v0, v12, :cond_d

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    :cond_d
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_f

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-eq v4, v10, :cond_f

    :cond_e
    invoke-virtual {v10}, Lcom/android/launcher2/AppIconView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_f

    invoke-static/range {v29 .. v29}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4}, Lcom/android/launcher2/CellLayoutNoGap;->setPreFolderBg(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->clearDragOutlines()V

    :cond_f
    :goto_a
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-nez v4, :cond_0

    if-nez v32, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v5

    aput v5, v7, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v5

    aput v5, v7, v4

    const/4 v4, 0x0

    aget v4, v7, v4

    const/4 v5, 0x1

    aget v5, v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v39

    move-object/from16 v0, v39

    instance-of v4, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v4, :cond_10

    check-cast v39, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v39

    :cond_10
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/FolderItem;

    if-nez v4, :cond_11

    move-object/from16 v0, v39

    instance-of v4, v0, Lcom/android/launcher2/FolderIconView;

    if-nez v4, :cond_0

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/Hotseat;

    if-eqz v4, :cond_25

    const/4 v4, 0x0

    aget v5, v7, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Hotseat;

    iget-object v4, v4, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutHotseat;->getAllappsPos()I

    move-result v4

    if-eq v5, v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayoutNoGap;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    goto/16 :goto_1

    :catch_0
    move-exception v23

    const/4 v4, 0x0

    aget v4, v34, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getWidthGap()I

    move-result v5

    add-int p1, v4, v5

    const/4 v4, 0x1

    aget v4, v34, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getHeightGap()I

    move-result v5

    add-int p2, v4, v5

    goto/16 :goto_2

    :cond_12
    move/from16 v18, p1

    move/from16 v19, p2

    goto/16 :goto_3

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v24

    goto/16 :goto_4

    :cond_14
    const/16 v32, 0x0

    goto/16 :goto_5

    :cond_15
    const/16 v32, 0x0

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    instance-of v4, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v4, :cond_18

    const/4 v4, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_18

    const/4 v4, 0x0

    aget v4, v7, v4

    const/4 v5, 0x0

    aget v5, v38, v5

    if-ne v4, v5, :cond_17

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    :goto_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v5

    aput v5, v7, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v5

    aput v5, v7, v4

    goto/16 :goto_7

    :cond_17
    add-int/lit8 v4, v33, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    goto :goto_b

    :cond_18
    const/4 v4, 0x0

    aget v4, v7, v4

    const/4 v5, 0x0

    aget v5, v38, v5

    if-ne v4, v5, :cond_1a

    move/from16 v0, v24

    move/from16 v1, v33

    if-lt v0, v1, :cond_19

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    goto :goto_b

    :cond_19
    add-int/lit8 v4, v33, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    goto :goto_b

    :cond_1a
    move/from16 v0, v24

    move/from16 v1, v33

    if-lt v0, v1, :cond_1b

    add-int/lit8 v4, v33, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    goto :goto_b

    :cond_1b
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    goto :goto_b

    :cond_1c
    if-eqz v30, :cond_1d

    const/16 v28, 0x1

    :cond_1d
    if-nez v30, :cond_1e

    :goto_c
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    goto/16 :goto_8

    :cond_1e
    add-int/lit8 v30, v30, -0x1

    goto :goto_c

    :cond_1f
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    const/4 v6, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_9

    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v4

    if-eqz v4, :cond_23

    instance-of v4, v13, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v4, :cond_23

    if-nez v28, :cond_23

    if-nez v27, :cond_23

    move-object v10, v13

    check-cast v10, Lcom/android/launcher2/MenuAppIconView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v5

    if-eq v4, v5, :cond_22

    :cond_21
    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->setPreFolderBg(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->clearDragOutlines()V

    :cond_22
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    goto/16 :goto_a

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->resetPreFolderBg()V

    goto/16 :goto_a

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->resetPreFolderBg()V

    goto/16 :goto_a

    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayoutNoGap;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findDropLocation(Landroid/view/DragEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(IIILjava/lang/Object;)V

    return-void
.end method

.method public findFirstEmptySpace()I
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findAllOccupiedCells()[Z

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-boolean v2, v1, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected forceRealTimeReorder()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    return-void
.end method

.method public getActiveRange()[I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getActiveRange()[I

    move-result-object v1

    return-object v1
.end method

.method getCellXFromPos(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v0

    rem-int v0, p1, v0

    return v0
.end method

.method getCellYFromPos(I)I
    .locals 4

    int-to-double v0, p1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getContainerType()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getContainerType()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getFolder()Lcom/android/launcher2/Folder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method protected getGlobalPositionForFolder(I)I
    .locals 0

    return p1
.end method

.method protected getGlobalPositionForFolder(II)I
    .locals 0

    return p1
.end method

.method protected getPositionByPage(I)I
    .locals 0

    return p1
.end method

.method hasAnimatingChild()Z
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v6, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    if-nez v5, :cond_0

    move v6, v7

    :goto_0
    return v6

    :cond_0
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v6

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_8

    iget-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v6, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v6, v9, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    instance-of v6, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_6

    move-object v6, v0

    check-cast v6, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderIconView;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v8

    goto :goto_0

    :cond_5
    move-object v6, v0

    check-cast v6, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v8

    goto :goto_0

    :cond_6
    instance-of v6, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v6, :cond_3

    move-object v4, v0

    check-cast v4, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v0

    instance-of v6, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_3

    move-object v6, v0

    check-cast v6, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderIconView;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v8

    goto/16 :goto_0

    :cond_7
    move-object v6, v0

    check-cast v6, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v8

    goto/16 :goto_0

    :cond_8
    move v6, v7

    goto/16 :goto_0
.end method

.method public hide(Lcom/android/launcher2/BaseItem;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->hide(Lcom/android/launcher2/BaseItem;)V

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method public initVisibleRange(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->initVisibleRange(II)V

    return-void
.end method

.method public isReOrderingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    return v0
.end method

.method protected isReorderingForDragOnFolder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected needToAnimateChild(Landroid/view/View;)Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sDisableOrUninstallAppFromApps:Z

    return v0
.end method

.method newCellPositioner()Lcom/android/launcher2/CellPositioner;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 66

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v5, :cond_0

    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    :goto_0
    return v5

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/DragState;

    move-object v4, v5

    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    const/4 v8, 0x5

    if-ne v5, v8, :cond_4

    iget-object v5, v4, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-eq v5, v0, :cond_4

    iget-object v5, v4, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v5, v5, Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_4

    iget-object v0, v4, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {v47 .. v47}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {v47 .. v47}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v0, v5

    move/from16 v64, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v0, v5

    move/from16 v65, v0

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v62

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v61

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v60

    const/4 v5, 0x0

    aget v5, v62, v5

    sub-int v5, v64, v5

    div-int/lit8 v8, v61, 0x2

    add-int v64, v5, v8

    const/4 v5, 0x1

    aget v5, v62, v5

    sub-int v5, v65, v5

    div-int/lit8 v8, v60, 0x2

    add-int v65, v5, v8

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(Landroid/view/DragEvent;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_6
    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_0

    :pswitch_0
    iget-object v5, v4, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-ne v5, v0, :cond_7

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->setIsDragOverlapping(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEnter()V

    :cond_7
    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v5

    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-eq v5, v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->clearDragOutlines()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->resetPreFolderBg()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_2
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousOverCell:I

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHighlightedCell:I

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v33

    move-object/from16 v0, p0

    instance-of v5, v0, Lcom/android/launcher2/CellLayoutMoveApps;

    if-nez v5, :cond_9

    if-eqz v33, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v0, v33

    if-eq v0, v5, :cond_9

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    :cond_9
    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    if-eq v5, v0, :cond_b

    const-string v5, "CellLayoutNoGap"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_DRAG_LOCATION is not getting from current page"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mOverCell:I

    invoke-virtual {v5, v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mOverCell:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousOverCell:I

    if-ne v5, v8, :cond_c

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHighlightedCell:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mOverCell:I

    if-eq v5, v8, :cond_12

    :cond_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousOverCell:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mOverCell:I

    if-eq v5, v8, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousOverCell:I

    invoke-virtual {v5, v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v58

    if-eqz v58, :cond_d

    move-object/from16 v0, v58

    instance-of v5, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v5, :cond_10

    move-object/from16 v5, v58

    check-cast v5, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_10

    check-cast v58, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual/range {v58 .. v58}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v35

    check-cast v35, Lcom/android/launcher2/FolderIconView;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHighlightedCell:I

    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mOverCell:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousOverCell:I

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderIconView;

    if-nez v5, :cond_11

    move-object/from16 v0, v29

    instance-of v5, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v5, :cond_11

    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_11

    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v35

    check-cast v35, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/android/launcher2/CellLayoutNoGap;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/launcher2/FolderIconView;->onDragEnter(Lcom/android/launcher2/DragState;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mOverCell:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHighlightedCell:I

    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v8, 0x15e

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    :cond_f
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v5

    if-nez v5, :cond_16

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, v58

    instance-of v5, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_d

    check-cast v58, Lcom/android/launcher2/FolderIconView;

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHighlightedCell:I

    goto :goto_3

    :cond_11
    move-object/from16 v0, v29

    instance-of v5, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderIconView;

    if-nez v5, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/android/launcher2/CellLayoutNoGap;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/launcher2/FolderIconView;->onDragEnter(Lcom/android/launcher2/DragState;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mOverCell:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHighlightedCell:I

    goto :goto_4

    :cond_12
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderIconView;

    if-nez v5, :cond_f

    move-object/from16 v0, v29

    instance-of v5, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v5, :cond_f

    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_f

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isAlphabeticalGrid()Z

    move-result v5

    if-nez v5, :cond_13

    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v35

    check-cast v35, Lcom/android/launcher2/FolderIconView;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/launcher2/FolderIconView;->checkNsecOpen(Lcom/android/launcher2/DragState;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mOverCell:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHighlightedCell:I

    goto/16 :goto_5

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mOverCell:I

    invoke-virtual {v5, v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v5, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v5, :cond_14

    check-cast v29, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v29

    :cond_14
    move-object/from16 v0, v29

    instance-of v5, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderIconView;

    if-nez v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/android/launcher2/CellLayoutNoGap;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->clearDragOutlines()V

    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/FolderIconView;->onDragEnter(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_5

    :cond_15
    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_f

    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHighlightedCell:I

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    if-eq v5, v8, :cond_1e

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    if-eqz v5, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    :cond_18
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {v5, v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    if-eqz v55, :cond_1b

    invoke-virtual/range {v55 .. v55}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v5

    move-object/from16 v0, p0

    if-eq v5, v0, :cond_1b

    invoke-virtual/range {v55 .. v55}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    sget v8, Lcom/android/launcher2/Folder;->ON_EXIT_CLOSE_DELAY:I

    move-object/from16 v0, v55

    iget v9, v0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x64

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    :cond_19
    :goto_7
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1a
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isAlphabeticalGrid()Z

    move-result v5

    if-nez v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v5, v8}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    goto :goto_6

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/PagedView;

    if-eqz v5, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v5

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView;

    iget v9, v5, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView;

    iget-object v5, v5, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->timePassed()I

    move-result v5

    sub-int v5, v9, v5

    add-int/lit16 v5, v5, 0xc8

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_7

    :cond_1c
    move-object/from16 v0, v29

    instance-of v5, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_19

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderIconView;

    if-nez v5, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/android/launcher2/CellLayoutNoGap;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/launcher2/FolderIconView;->onDragEnter(Lcom/android/launcher2/DragState;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v5

    if-nez v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v8, 0x15e

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto/16 :goto_7

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mOverCell:I

    invoke-virtual {v5, v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v5, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_20

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderIconView;

    if-nez v5, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/android/launcher2/CellLayoutNoGap;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->clearDragOutlines()V

    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/FolderIconView;->onDragEnter(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_7

    :cond_1f
    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_19

    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHighlightedCell:I

    goto/16 :goto_7

    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v5

    if-nez v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v8, 0x15e

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->foundValidDrop()Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mOverCell:I

    invoke-virtual {v5, v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderIconView;

    if-nez v5, :cond_27

    move-object/from16 v0, v29

    instance-of v5, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v5, :cond_27

    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_27

    check-cast v29, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/launcher2/AppIconView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->resetPreFolderBg()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->cancelAllFolderAnimations()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move/from16 v1, v64

    move/from16 v2, v65

    move-object/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->pointToCellExact(II[I)V

    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v59, v0

    const/4 v5, 0x0

    aget v5, v63, v5

    const/4 v8, 0x1

    aget v8, v63, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v5, v8, v1}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPoint(II[I)V

    const/4 v5, 0x0

    aget v5, v63, v5

    const/4 v8, 0x1

    aget v8, v63, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPosition(II)I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v50

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v8

    mul-int/2addr v5, v8

    add-int/lit8 v51, v5, -0x1

    const/16 v44, 0x0

    move/from16 v0, v27

    move/from16 v1, v50

    if-lt v0, v1, :cond_23

    const/16 v44, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move/from16 v0, v51

    if-ge v5, v0, :cond_23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    :cond_23
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getScreen()I

    move-result v10

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v28

    const/16 v37, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v37

    :cond_24
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v32

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v5

    if-eqz v5, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v5, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    if-eqz v5, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v8, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v8, :cond_25

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-nez v5, :cond_25

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_28

    const-string v5, "home_only_locked_items"

    invoke-static/range {v28 .. v28}, Lcom/android/launcher2/BaseItem;->getContainingFolderId(Lcom/android/launcher2/BaseItem;)J

    move-result-wide v8

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v8, v9}, Lcom/android/launcher2/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_25

    const/16 v41, 0x1

    :cond_25
    :goto_8
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v5

    if-eqz v5, :cond_26

    if-eqz v32, :cond_26

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v5

    if-eqz v5, :cond_29

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-nez v5, :cond_29

    const/16 v42, 0x1

    :cond_26
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v57

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/android/launcher2/CellLayoutNoGap;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v5

    if-eqz v5, :cond_34

    if-nez v44, :cond_34

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->willCreateFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_34

    move-object/from16 v0, v57

    instance-of v5, v0, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v5, :cond_34

    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v54

    const/16 v36, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string v5, "CellLayoutNoGap"

    const-string v8, " cannot create folder with same items"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_27
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderIconView;

    if-nez v5, :cond_22

    move-object/from16 v0, v29

    instance-of v5, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_22

    move-object/from16 v5, v29

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_22

    check-cast v29, Lcom/android/launcher2/FolderIconView;

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    if-eqz v5, :cond_22

    goto/16 :goto_2

    :cond_28
    const-string v5, "home_locked_items"

    invoke-static/range {v28 .. v28}, Lcom/android/launcher2/BaseItem;->getContainingFolderId(Lcom/android/launcher2/BaseItem;)J

    move-result-wide v8

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v8, v9}, Lcom/android/launcher2/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_25

    const/16 v41, 0x1

    goto/16 :goto_8

    :cond_29
    const/16 v42, 0x0

    goto/16 :goto_9

    :cond_2a
    if-nez v54, :cond_2b

    const-string v5, "CellLayoutNoGap"

    const-string v8, " origin item seemed to be gone by removing package"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_2b
    move-object/from16 v5, v54

    check-cast v5, Lcom/android/launcher2/AppItem;

    move-object/from16 v0, v46

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v28

    check-cast v5, Lcom/android/launcher2/AppItem;

    move-object/from16 v0, v46

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v52, v57

    check-cast v52, Lcom/android/launcher2/MenuAppsGrid;

    invoke-static/range {v28 .. v28}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v40

    if-eqz v40, :cond_2e

    move-object/from16 v5, v28

    check-cast v5, Lcom/android/launcher2/AppItem;

    invoke-virtual {v5}, Lcom/android/launcher2/AppItem;->getContainingFolderItem()Lcom/android/launcher2/AppFolderItem;

    move-result-object v36

    move-object/from16 v0, v52

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->findIconViewByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v34

    if-nez v34, :cond_2d

    move-object/from16 v0, v36

    iget v5, v0, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v5

    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v5, v8, :cond_2c

    move-object/from16 v0, v36

    iget v5, v0, Lcom/android/launcher2/AppFolderItem;->mScreenInAlphabetical:I

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/CellLayout;

    :cond_2c
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v34

    :cond_2d
    if-eqz v34, :cond_2e

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout;

    :cond_2e
    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v8

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v9

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    move/from16 v2, v42

    move/from16 v3, v40

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->createFolderFromDrag(ILjava/util/List;ZZ)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGameHome()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getGameHomeManager()Lcom/android/launcher2/gamehome/GameHomeManager;

    move-result-object v5

    if-nez v5, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->initGameHomeManager()V

    :cond_2f
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getGameHomeManager()Lcom/android/launcher2/gamehome/GameHomeManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v5, v8, v0}, Lcom/android/launcher2/gamehome/GameHomeManager;->startGameHUN(Landroid/content/Context;Ljava/util/List;)V

    :cond_30
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->onDrop()V

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v31

    if-eqz v31, :cond_31

    if-eqz v42, :cond_31

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v8}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderHomeItem(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-static {v0, v5, v8, v4}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/launcher2/DragState;)V

    :cond_31
    if-eqz v12, :cond_32

    if-eqz v13, :cond_32

    if-eqz v31, :cond_32

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_32

    new-instance v30, Lcom/android/launcher2/DragState;

    move-object/from16 v0, v30

    invoke-direct {v0, v13}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    move-object/from16 v38, v36

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_33

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/launcher2/AppItem;

    invoke-virtual/range {v38 .. v38}, Lcom/android/launcher2/AppFolderItem;->getPosition()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v45

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v16

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/AppItem;->getSpanX()I

    move-result v17

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/AppItem;->getSpanY()I

    move-result v18

    move-object v11, v4

    invoke-virtual/range {v11 .. v18}, Lcom/android/launcher2/DragState;->dropItemtoTarget(Lcom/android/launcher2/CellLayout;Landroid/view/View;Landroid/view/View;IIII)V

    move-object/from16 v0, v52

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->removeFolderFromDrag(Lcom/android/launcher2/AppFolderItem;)V

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/DragState;->onDelete()V

    :cond_32
    :goto_a
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_33
    const-string v5, "CellLayoutNoGap"

    const-string v8, "AppItem i2 is null"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v5

    if-nez v5, :cond_37

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isAlphabeticalGrid()Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, v4, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v5, v5, Lcom/android/launcher2/CellLayoutFolder;

    if-eqz v5, :cond_36

    move-object/from16 v0, p0

    instance-of v5, v0, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v5, :cond_36

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v5

    if-eqz v5, :cond_37

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_37

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->onDrop()V

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->onEnd()V

    move-object/from16 v0, v57

    instance-of v5, v0, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v5, :cond_35

    move-object/from16 v52, v57

    check-cast v52, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual/range {v52 .. v52}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    move-object/from16 v0, v28

    instance-of v5, v0, Lcom/android/launcher2/AppItem;

    if-eqz v5, :cond_35

    check-cast v28, Lcom/android/launcher2/AppItem;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/launcher2/AppItem;->mScreenInAlphabetical:I

    move/from16 v56, v0

    const/4 v5, -0x1

    move/from16 v0, v56

    if-eq v0, v5, :cond_35

    invoke-virtual/range {v52 .. v52}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v5

    move/from16 v0, v56

    if-eq v5, v0, :cond_35

    move-object/from16 v0, v52

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    :cond_35
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_36
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher2/CellLayoutNoGap;->onDropWithoutReorder(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->onDragExit()V

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_37
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_38

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_38
    move-object/from16 v0, v57

    instance-of v5, v0, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v5, :cond_39

    move-object/from16 v52, v57

    check-cast v52, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual/range {v52 .. v52}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v5

    add-int/lit8 v8, v10, 0x1

    if-ne v5, v8, :cond_39

    invoke-virtual/range {v52 .. v52}, Lcom/android/launcher2/MenuAppsGrid;->createNewPage()V

    :cond_39
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isAlphabeticalGrid()Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->forceRealTimeReorder()V

    :cond_3a
    move-object/from16 v0, v57

    instance-of v5, v0, Lcom/android/launcher2/FolderPagedView;

    if-eqz v5, :cond_3c

    move-object/from16 v0, v28

    instance-of v5, v0, Lcom/android/launcher2/AppItem;

    if-eqz v5, :cond_3c

    iget-object v5, v4, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v5, v5, Lcom/android/launcher2/CellLayoutFolder;

    if-nez v5, :cond_3b

    move-object/from16 v5, v28

    check-cast v5, Lcom/android/launcher2/AppItem;

    iget-object v5, v5, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v5, :cond_3c

    :cond_3b
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(I)I

    move-result v10

    :cond_3c
    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v8

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v9

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->onDrop()V

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v31

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v5

    if-eqz v5, :cond_3f

    move-object/from16 v0, v57

    instance-of v5, v0, Lcom/android/launcher2/MenuAppsGrid;

    if-nez v5, :cond_3d

    move-object/from16 v0, v57

    instance-of v5, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v5, :cond_42

    :cond_3d
    const/16 v49, 0x1

    :goto_b
    move-object/from16 v0, v28

    instance-of v5, v0, Lcom/android/launcher2/AppItem;

    if-eqz v5, :cond_43

    move-object/from16 v0, p0

    instance-of v5, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v5, :cond_43

    const/16 v48, 0x1

    :goto_c
    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v53, v0

    if-eqz v53, :cond_3e

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isLockedApp(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-eqz v5, :cond_44

    move-object/from16 v0, v53

    iget-object v5, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v5

    if-eqz v5, :cond_44

    const/16 v43, 0x1

    :goto_d
    move-object/from16 v0, v53

    iget-object v5, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v5

    if-eqz v5, :cond_3e

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->lockApp(Lcom/android/launcher2/BaseItem;)V

    :cond_3e
    if-eqz v42, :cond_45

    if-eqz v49, :cond_45

    if-nez v48, :cond_45

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v8}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderHomeItem(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderMenuItem(Lcom/android/launcher2/FolderItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-static {v0, v5, v8, v4}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/launcher2/DragState;)V

    :cond_3f
    :goto_e
    if-eqz v31, :cond_40

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_40

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    if-eqz v5, :cond_40

    new-instance v30, Lcom/android/launcher2/DragState;

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    move-object/from16 v0, v57

    instance-of v5, v0, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v5, :cond_46

    move-object/from16 v52, v57

    check-cast v52, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_40

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_40

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/launcher2/AppFolderItem;

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/launcher2/AppItem;

    invoke-virtual/range {v38 .. v38}, Lcom/android/launcher2/AppFolderItem;->getPosition()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v45

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v16

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v18

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/AppItem;->getSpanX()I

    move-result v22

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/AppItem;->getSpanY()I

    move-result v23

    move-object/from16 v17, v4

    move/from16 v20, v15

    move/from16 v21, v16

    invoke-virtual/range {v17 .. v23}, Lcom/android/launcher2/DragState;->dropItemtoTarget(Landroid/view/View;Landroid/view/View;IIII)V

    move-object/from16 v0, v52

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->removeFolderFromDrag(Lcom/android/launcher2/AppFolderItem;)V

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/DragState;->onDelete()V

    :cond_40
    :goto_f
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->onEnd()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v5

    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v5, v8, :cond_41

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher2/CellLayoutNoGap;->onDropWithoutReorder(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V

    :cond_41
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_42
    const/16 v49, 0x0

    goto/16 :goto_b

    :cond_43
    const/16 v48, 0x0

    goto/16 :goto_c

    :cond_44
    const/16 v43, 0x0

    goto/16 :goto_d

    :cond_45
    if-eqz v41, :cond_3f

    if-nez v43, :cond_3f

    move-object/from16 v0, p0

    instance-of v5, v0, Lcom/android/launcher2/CellLayoutMoveApps;

    if-nez v5, :cond_3f

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v8}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderHomeItem(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderMenuItem(Lcom/android/launcher2/FolderItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-static {v0, v5}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;)V

    goto/16 :goto_e

    :cond_46
    move-object/from16 v0, p0

    instance-of v5, v0, Lcom/android/launcher2/CellLayoutMoveApps;

    if-nez v5, :cond_40

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_47

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/HomeItem;

    if-eqz v5, :cond_47

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_47

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/HomeItem;

    if-eqz v5, :cond_47

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/launcher2/HomeItem;

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/launcher2/HomeItem;

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v18

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v20, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v21, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move/from16 v22, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v23, v0

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v23}, Lcom/android/launcher2/DragState;->dropItemtoTarget(Landroid/view/View;Landroid/view/View;IIII)V

    :cond_47
    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/DragState;->onDelete()V

    goto/16 :goto_f

    :cond_48
    const/4 v5, 0x0

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->onEnd()V

    sget-object v5, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v5, :cond_49

    sget-object v5, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->onEnd()V

    :cond_49
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->resetPreFolderBg()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v5

    if-nez v5, :cond_4a

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4a
    iget-boolean v5, v4, Lcom/android/launcher2/DragState;->mRevertDrag:Z

    if-eqz v5, :cond_4c

    iget-object v5, v4, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-ne v0, v5, :cond_4c

    iget-object v5, v4, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->hide(Lcom/android/launcher2/BaseItem;)V

    iget v5, v4, Lcom/android/launcher2/DragState;->mOriginalCell:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->show(Lcom/android/launcher2/BaseItem;)V

    :cond_4b
    :goto_10
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->clearDragOutlines()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->onDragExit()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4c
    move-object/from16 v0, p0

    instance-of v5, v0, Lcom/android/launcher2/CellLayoutMoveApps;

    if-nez v5, :cond_4b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->ableToCloseLayGap()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    goto :goto_10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDropWithoutReorder(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V
    .locals 4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAlphabeticalOrder()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid;

    instance-of v2, p2, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    check-cast p2, Lcom/android/launcher2/AppItem;

    iget v1, p2, Lcom/android/launcher2/AppItem;->mScreenInAlphabetical:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v2

    if-eq v2, v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    goto :goto_0
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    :cond_0
    return-void
.end method

.method public onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v4, v5, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->getScrollX()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->getScrollY()I

    move-result v2

    invoke-virtual {p2, v7, v7}, Lcom/android/launcher2/FolderIconView;->scrollTo(II)V

    invoke-virtual {p0, p2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p2, v1, v2}, Lcom/android/launcher2/FolderIconView;->scrollTo(II)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/DragState;

    move-object v0, v6

    :goto_0
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(IIILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/launcher2/CellLayoutNoGap;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v6}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    iget-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget-object v7, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_0
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->onViewAddedToLayout(Landroid/view/View;)V

    return-void

    :cond_1
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-eq v2, v3, :cond_2

    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ne v2, v3, :cond_4

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v0

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    goto :goto_0
.end method

.method realTimeReorder()V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v11, -0x1

    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderOnItemDeleted:Z

    if-nez v9, :cond_1

    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->hasAnimatingChild()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v9}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v10, 0x14

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderOnItemDeleted:Z

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mEmptyCell:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v10

    mul-int/2addr v9, v10

    add-int/lit8 v5, v9, -0x1

    if-eqz v5, :cond_0

    iget v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-eq v8, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v9

    invoke-virtual {p0, v8}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v1, v11, :cond_2

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-nez v9, :cond_0

    :cond_2
    if-ne v1, v11, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->emptyPositionForReorder()V

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v9}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v1

    if-eq v1, v11, :cond_0

    :cond_3
    if-ne v8, v11, :cond_5

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Couldn\'t find target cell. This should never happen!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderOnItemDeleted:Z

    if-eqz v9, :cond_9

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v9

    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v9, v4, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v9, :cond_7

    :cond_6
    instance-of v9, v4, Lcom/android/launcher2/AppItem;

    if-eqz v9, :cond_8

    move-object v9, v4

    check-cast v9, Lcom/android/launcher2/AppItem;

    iget v9, v9, Lcom/android/launcher2/AppItem;->mCell:I

    if-eq v9, v1, :cond_8

    const-string v9, "CellLayoutNoGap"

    const-string v10, " it is not the item to be removed !!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    const-wide/16 v6, 0x0

    :goto_3
    if-ge v8, v1, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v9

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p0, v10}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v4

    const/16 v0, 0x21

    if-eqz v4, :cond_c

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v9, :cond_a

    invoke-direct {p0, v4}, Lcom/android/launcher2/CellLayoutNoGap;->isFolderAnimRange(Lcom/android/launcher2/BaseItem;)Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {p0, v4, v1, v6, v7}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;IJ)V

    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderOnItemDeleted:Z

    if-nez v9, :cond_b

    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    if-eqz v9, :cond_d

    :cond_b
    int-to-long v10, v0

    :goto_4
    add-long/2addr v6, v10

    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_d
    move-wide v10, v12

    goto :goto_4

    :cond_e
    :goto_5
    if-le v8, v1, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {p0, v10}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v4

    const/16 v0, 0x21

    if-eqz v4, :cond_11

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v9, :cond_f

    invoke-direct {p0, v4}, Lcom/android/launcher2/CellLayoutNoGap;->isFolderAnimRange(Lcom/android/launcher2/BaseItem;)Z

    move-result v9

    if-nez v9, :cond_f

    const/4 v0, 0x0

    :cond_f
    invoke-virtual {p0, v4, v1, v6, v7}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;IJ)V

    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderOnItemDeleted:Z

    if-nez v9, :cond_10

    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    if-eqz v9, :cond_12

    :cond_10
    int-to-long v10, v0

    :goto_6
    add-long/2addr v6, v10

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    move-wide v10, v12

    goto :goto_6

    :cond_13
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v9, :cond_0

    instance-of v9, p0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    instance-of v9, v9, Lcom/android/launcher2/HomeItem;

    if-eqz v9, :cond_14

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v9}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/launcher2/HomeItem;->setPrevPosition(I)V

    :cond_14
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v8}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    goto/16 :goto_0
.end method

.method public realTimeReorder(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    return-void
.end method

.method public realTimeReorderOnItemDeleted(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderOnItemDeleted:Z

    iput p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    iput p2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mEmptyCell:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderOnItemDeleted:Z

    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->allowMoveAfterDrop()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReorderingForDragOnFolder()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mIsClosingEmptyFolder:Z

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v1, p1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mIsClosingEmptyFolder:Z

    :cond_4
    return v0
.end method

.method final setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    return-void
.end method

.method public setEnableReOrdering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    return-void
.end method

.method public setFolder(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    return-void
.end method

.method protected setItemLocation(Lcom/android/launcher2/BaseItem;II)V
    .locals 9

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid position"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v5, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v7, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v8, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    :cond_1
    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V
    .locals 9

    iput p6, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPosition(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    move-wide/from16 v2, p7

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    :cond_2
    return-void
.end method

.method protected setItemLocationWithScreen(Lcom/android/launcher2/BaseItem;II)V
    .locals 9

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid position"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v5, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v7, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v8, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    :cond_1
    return-void
.end method

.method public setTargetCell(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    return-void
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->show(Lcom/android/launcher2/BaseItem;)V

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method updateCustomViewToCellLayout()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateItemToNewPosition(Lcom/android/launcher2/BaseItem;II)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;IIJ)V

    return-void
.end method

.method public updateItemToNewPosition(Lcom/android/launcher2/BaseItem;IJ)V
    .locals 7

    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;IIJ)V

    return-void
.end method

.method protected updateViewToCellLayout(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v1

    if-lez p1, :cond_0

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    mul-int/2addr v6, p1

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int v2, v6, v7

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateViewsToTheirItemPositions()V
    .locals 8

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v7

    if-ge v2, v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/CellLayoutNoGap;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v0

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v1

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v7, v0, :cond_2

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-eq v7, v1, :cond_0

    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public updateVisibleRange(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->updateVisibleRange(II)V

    return-void
.end method
