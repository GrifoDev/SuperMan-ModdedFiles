.class public Lcom/android/launcher2/FolderItemMovePanel;
.super Landroid/widget/FrameLayout;
.source "FolderItemMovePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/FolderItemMovePanel$Scroller;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c


# instance fields
.field private mCurrentFolder:Lcom/android/launcher2/Folder;

.field private mCurrentFolderRect:Landroid/graphics/Rect;

.field private mEditBarHeight:I

.field private mFolderListView:Landroid/widget/LinearLayout;

.field private mFolderScrollViewRect:Landroid/graphics/Rect;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mPanelVisible:Z

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mScroller:Lcom/android/launcher2/FolderItemMovePanel$Scroller;

.field private mWaitTimeForDelay:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/FolderItemMovePanel;->mPanelVisible:Z

    new-instance v0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/FolderItemMovePanel$Scroller;-><init>(Lcom/android/launcher2/FolderItemMovePanel;Lcom/android/launcher2/FolderItemMovePanel$1;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderItemMovePanel;->mScroller:Lcom/android/launcher2/FolderItemMovePanel$Scroller;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/FolderItemMovePanel;->mWaitTimeForDelay:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/FolderItemMovePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/FolderItemMovePanel;->mPanelVisible:Z

    new-instance v0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/FolderItemMovePanel$Scroller;-><init>(Lcom/android/launcher2/FolderItemMovePanel;Lcom/android/launcher2/FolderItemMovePanel$1;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderItemMovePanel;->mScroller:Lcom/android/launcher2/FolderItemMovePanel$Scroller;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/FolderItemMovePanel;->mWaitTimeForDelay:J

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderItemMovePanel;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderItemMovePanel;->mScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderItemMovePanel;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderItemMovePanel;->mFolderListView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addFolderItem()V
    .locals 9

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/FolderItemMovePanel;->mFolderScrollViewRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/launcher2/FolderItemMovePanel;->mFolderListView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/launcher2/FolderItemMovePanel;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher2/FolderItemMovePanel;->getHomeFolderItemList(Lcom/android/launcher2/Workspace;)Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderItem;

    iget-object v7, p0, Lcom/android/launcher2/FolderItemMovePanel;->mCurrentFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v7

    if-eq v7, v2, :cond_1

    const v7, 0x7f030017

    iget-object v8, p0, Lcom/android/launcher2/FolderItemMovePanel;->mFolderListView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v7, v8}, Lcom/android/launcher2/FolderItemMovePanel;->createAppFolder(Lcom/android/launcher2/FolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/FolderIconView;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/launcher2/FolderIconView;->setMaxLines(I)V

    iget-object v7, p0, Lcom/android/launcher2/FolderItemMovePanel;->mFolderListView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/FolderItemMovePanel;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/FolderItemMovePanel;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher2/FolderItemMovePanel;->getAppFolderItemList(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private addFolderItemInCellLayout(Ljava/util/List;Lcom/android/launcher2/CellLayout;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/FolderItem;",
            ">;",
            "Lcom/android/launcher2/CellLayout;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/FolderItem;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FolderItem;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createAppFolder(Lcom/android/launcher2/FolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/launcher2/FolderItemMovePanel;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    instance-of v1, p1, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem;

    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/HomeFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    check-cast p1, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v0, p1, v4, v3}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;ZI)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    return-object v0

    :cond_1
    instance-of v1, p1, Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/AppFolderItem;

    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/AppFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    check-cast p1, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0, p1, v4, v3}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;ZI)V

    goto :goto_0
.end method

.method public static fromXml(Landroid/content/Context;)Lcom/android/launcher2/FolderItemMovePanel;
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItemMovePanel;

    return-object v0
.end method

.method private getAppFolderItemList(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppsGrid;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/FolderItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {p1, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-virtual {v5, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v7, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher2/FolderItem;

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/FolderItem;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getHomeFolderItemList(Lcom/android/launcher2/Workspace;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/FolderItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-direct {p0, v1, v3}, Lcom/android/launcher2/FolderItemMovePanel;->addFolderItemInCellLayout(Ljava/util/List;Lcom/android/launcher2/CellLayout;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/FolderItemMovePanel;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/launcher2/FolderItemMovePanel;->addFolderItemInCellLayout(Ljava/util/List;Lcom/android/launcher2/CellLayout;)V

    return-object v1
.end method

.method private interceptDragEvent(II)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderItemMovePanel;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mFolderScrollViewRect:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mFolderScrollViewRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Lcom/android/launcher2/FolderItemMovePanel;->mFolderScrollViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mCurrentFolderRect:Landroid/graphics/Rect;

    if-nez v2, :cond_3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mCurrentFolderRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mCurrentFolder:Lcom/android/launcher2/Folder;

    iget-object v3, p0, Lcom/android/launcher2/FolderItemMovePanel;->mCurrentFolderRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Folder;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mCurrentFolderRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_0

    iget-wide v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mWaitTimeForDelay:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mWaitTimeForDelay:J

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mFolderScrollViewRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/launcher2/FolderItemMovePanel;->mEditBarHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v2, p1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mWaitTimeForDelay:J

    move v0, v1

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mWaitTimeForDelay:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher2/FolderItemMovePanel;->mWaitTimeForDelay:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private scrollIfNeeded(Landroid/view/DragEvent;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    iget-object v7, p0, Lcom/android/launcher2/FolderItemMovePanel;->mCurrentFolderRect:Landroid/graphics/Rect;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/FolderItemMovePanel;->mCurrentFolderRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gez v7, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderItemMovePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09022a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v0, v2

    int-to-float v7, v0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/FolderItemMovePanel;->mScroller:Lcom/android/launcher2/FolderItemMovePanel$Scroller;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->scrollLeft()V

    move v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/FolderItemMovePanel;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v7, v2

    int-to-float v7, v1

    cmpl-float v7, v3, v7

    if-lez v7, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/FolderItemMovePanel;->mScroller:Lcom/android/launcher2/FolderItemMovePanel$Scroller;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->scrollRight()V

    move v5, v6

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/FolderItemMovePanel;->mScroller:Lcom/android/launcher2/FolderItemMovePanel$Scroller;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->unQueue()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderItemMovePanel;->scrollIfNeeded(Landroid/view/DragEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderItemMovePanel;->mScroller:Lcom/android/launcher2/FolderItemMovePanel$Scroller;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->hasQueue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public hideFolderPanel()V
    .locals 9

    const/4 v8, 0x0

    iget-boolean v4, p0, Lcom/android/launcher2/FolderItemMovePanel;->mPanelVisible:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/FolderItemMovePanel;->mFolderListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/FolderItemMovePanel;->mFolderListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/FolderItemMovePanel;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    new-instance v2, Lcom/android/launcher2/FolderItemMovePanel$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/FolderItemMovePanel$2;-><init>(Lcom/android/launcher2/FolderItemMovePanel;)V

    const-string v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher2/FolderItemMovePanel;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_3
    iput-boolean v8, p0, Lcom/android/launcher2/FolderItemMovePanel;->mPanelVisible:Z

    goto :goto_0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :pswitch_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mWaitTimeForDelay:J

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/FolderItemMovePanel;->interceptDragEvent(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mCurrentFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f100044

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderItemMovePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/FolderItemMovePanel;->mFolderListView:Landroid/widget/LinearLayout;

    const v0, 0x7f100043

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderItemMovePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/launcher2/FolderItemMovePanel;->mScrollView:Landroid/widget/HorizontalScrollView;

    return-void
.end method

.method public setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Folder;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher2/FolderItemMovePanel;->mLauncher:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mCurrentFolder:Lcom/android/launcher2/Folder;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/FolderItemMovePanel;->mCurrentFolderRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher2/FolderItemMovePanel;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/launcher2/FolderItemMovePanel;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeEditBar;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/FolderItemMovePanel;->mEditBarHeight:I

    iget v1, p0, Lcom/android/launcher2/FolderItemMovePanel;->mEditBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderItemMovePanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showFolderPanel()V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/launcher2/FolderItemMovePanel;->addFolderItem()V

    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel;->mFolderListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/launcher2/FolderItemMovePanel$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/FolderItemMovePanel$1;-><init>(Lcom/android/launcher2/FolderItemMovePanel;)V

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/FolderItemMovePanel;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    iput-boolean v6, p0, Lcom/android/launcher2/FolderItemMovePanel;->mPanelVisible:Z

    return-void
.end method
