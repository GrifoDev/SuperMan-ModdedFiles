.class public Lcom/android/launcher2/CellLayoutMoveApps;
.super Lcom/android/launcher2/CellLayoutNoGap;
.source "CellLayoutMoveApps.java"


# static fields
.field public static final USE_INTRO_TEXT:Z

.field private static final USE_INTRO_TEXT_REPEAT:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragItemOrigPosition:I

.field private mIconSize:I

.field private mIntroTextView:Landroid/widget/TextView;

.field private mIsBulkUnload:Z

.field private mItemMaxLimitCount:I

.field private mMinGridX:I

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutMoveApps;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutMoveApps;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIconSize:I

    iput v1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mMinGridX:I

    iput v0, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mItemMaxLimitCount:I

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIsBulkUnload:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mDragItemOrigPosition:I

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mScrollable:Z

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mItemMaxLimitCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/CellLayoutMoveApps;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIntroTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private animationIntoText(ZZ)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutMoveApps;->canAcceptAddItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getCountX()I

    move-result v3

    if-ne v3, v0, :cond_1

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/CellLayoutMoveApps;->setGridSize(II)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->refreshCellDimension()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->updateScrollViewState()V

    iput-boolean v2, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIsBulkUnload:Z

    goto :goto_0
.end method

.method public canAcceptAddItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mContext:Landroid/content/Context;

    const v2, 0x7f090081

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v3

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sub-int v0, v3, v0

    iget v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mItemMaxLimitCount:I

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mContext:Landroid/content/Context;

    const v4, 0x7f090086

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mItemMaxLimitCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method protected closeLayoutGap()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIsBulkUnload:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    :cond_0
    return-void
.end method

.method protected emptyPositionForReorder()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getCountX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutMoveApps;->setGridSize(II)V

    :cond_0
    return-void
.end method

.method protected forceRealTimeReorder()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    return-void
.end method

.method public isScrollable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mScrollable:Z

    return v0
.end method

.method protected needToAnimateChild(Landroid/view/View;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 8

    const/4 v7, 0x6

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragState;

    move-object v1, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    if-eq v3, v7, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    :goto_2
    return v3

    :cond_2
    sget-object v1, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->cancelCloseFolderAlarm()V

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->cancelRealTimeReorder()V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayoutMoveApps;->canAcceptAddItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->cancelRealTimeReorder()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->closeLayoutGap()V

    move v3, v4

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getCountX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v6}, Lcom/android/launcher2/CellLayoutMoveApps;->setGridSize(II)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mMinGridX:I

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/android/launcher2/CellLayoutMoveApps;->setGridSize(II)V

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mDragItemOrigPosition:I

    goto/16 :goto_1

    :cond_9
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mDragItemOrigPosition:I

    goto/16 :goto_1
.end method

.method protected onDropWithoutReorder(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, p2}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget-object v2, v0, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/launcher2/HomeItem$PosistionBackup;

    invoke-direct {v2, v0}, Lcom/android/launcher2/HomeItem$PosistionBackup;-><init>(Lcom/android/launcher2/HomeItem;)V

    iput-object v2, v0, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutMoveApps;->addItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_2
    return-void
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 13

    const-wide/16 v6, 0x0

    const/16 v5, 0x14a

    const/4 v8, 0x1

    const/4 v12, -0x1

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onFailedDrop(Lcom/android/launcher2/BaseItem;)V

    iget v1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mDragItemOrigPosition:I

    if-le v1, v12, :cond_4

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->allItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eq v0, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mDragItemOrigPosition:I

    if-ne v3, v4, :cond_0

    const/4 v9, 0x1

    :cond_1
    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->allItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v1

    iget v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mDragItemOrigPosition:I

    if-lt v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v1

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v0, v10}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMoveApps;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v10}, Lcom/android/launcher2/CellLayoutMoveApps;->getCellXFromPos(I)I

    move-result v3

    invoke-virtual {p0, v10}, Lcom/android/launcher2/CellLayoutMoveApps;->getCellYFromPos(I)I

    move-result v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/CellLayoutMoveApps;->animateChildToPosition(Landroid/view/View;IIIJZ)Z

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mDragItemOrigPosition:I

    invoke-virtual {p1, v1}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutMoveApps;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    iget v1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mDragItemOrigPosition:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutMoveApps;->getCellXFromPos(I)I

    move-result v3

    iget v1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mDragItemOrigPosition:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutMoveApps;->getCellYFromPos(I)I

    move-result v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/CellLayoutMoveApps;->animateChildToPosition(Landroid/view/View;IIIJZ)Z

    iput v12, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mDragItemOrigPosition:I

    :cond_4
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v0

    if-ne v0, v6, :cond_2

    invoke-direct {p0, v2, v2}, Lcom/android/launcher2/CellLayoutMoveApps;->animationIntoText(ZZ)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getCountX()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mMinGridX:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v0, v6}, Lcom/android/launcher2/CellLayoutMoveApps;->setGridSize(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->refreshCellDimension()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->updateScrollViewState()V

    return v1

    :cond_2
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIsBulkUnload:Z

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/launcher2/CellLayoutMoveApps$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/CellLayoutMoveApps$2;-><init>(Lcom/android/launcher2/CellLayoutMoveApps;)V

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/launcher2/CellLayoutMoveApps;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setBulkUnloadMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIsBulkUnload:Z

    return-void
.end method

.method public setIconSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIconSize:I

    return-void
.end method

.method protected setItemLocation(Lcom/android/launcher2/BaseItem;II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {p1, p2}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/HomeItem;

    new-instance v1, Lcom/android/launcher2/HomeItem$PosistionBackup;

    invoke-direct {v1, v0}, Lcom/android/launcher2/HomeItem$PosistionBackup;-><init>(Lcom/android/launcher2/HomeItem;)V

    iput-object v1, v0, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayoutMoveApps;->cellToPosition(II)I

    move-result v1

    invoke-virtual {p0, p1, v1, p6}, Lcom/android/launcher2/CellLayoutMoveApps;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    return-void
.end method

.method public setMinimunGridSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mMinGridX:I

    return-void
.end method

.method public setViews(Landroid/widget/TextView;Landroid/widget/HorizontalScrollView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIntroTextView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIntroTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateItemStyle(II)V
    .locals 7

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

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

    instance-of v5, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/android/launcher2/AppIconView;

    if-eqz v5, :cond_0

    move-object v2, v3

    check-cast v2, Lcom/android/launcher2/AppIconView;

    int-to-float v5, p1

    invoke-virtual {v2, v5}, Lcom/android/launcher2/AppIconView;->setCustomTextSize(F)V

    instance-of v5, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    iget v5, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIconSize:I

    invoke-virtual {v0, v5}, Lcom/android/launcher2/FolderIconView;->setCustomIconSize(I)V

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIconSize:I

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;ZI)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/launcher2/BaseItem;->getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIconSize:I

    invoke-virtual {v2, v1, v5, v6}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateItemView(Lcom/android/launcher2/BaseItem;)V
    .locals 4

    instance-of v2, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/AppIconView;

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/BaseItem;->getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mIconSize:I

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public updateScrollViewState()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mMinGridX:I

    if-ge v3, v4, :cond_3

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/CellLayoutMoveApps;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :goto_0
    iput-boolean v5, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mScrollable:Z

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v4, Lcom/android/launcher2/CellLayoutMoveApps$3;

    invoke-direct {v4, p0}, Lcom/android/launcher2/CellLayoutMoveApps$3;-><init>(Lcom/android/launcher2/CellLayoutMoveApps;)V

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mMinGridX:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getCellWidth()I

    move-result v5

    mul-int/2addr v4, v5

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mMinGridX:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMoveApps;->getCellWidth()I

    move-result v4

    mul-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v5}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/CellLayoutMoveApps;->mScrollable:Z

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v3, v4, :cond_0

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    goto :goto_1
.end method

.method public willCreateFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
