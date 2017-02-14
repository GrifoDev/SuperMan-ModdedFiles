.class public Lcom/android/launcher2/CellLayoutFolder;
.super Lcom/android/launcher2/CellLayoutNoGap;
.source "CellLayoutFolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CellLayoutFolder"

.field private static mHasSetStartXY:Z

.field private static sDeltaOffset:Z

.field private static sDragXYForQuickOptionsFolder:[I

.field private static sIsDraggingWithinQuickOptionsBounds:Z


# instance fields
.field private mAcceptMoveTo:Z

.field private mExternalDragItem:Lcom/android/launcher2/BaseItem;

.field private mInternalDragItem:Lcom/android/launcher2/BaseItem;

.field private mIsItemAddingToOtherPage:Z

.field private mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

.field private mPendingItemTobeRemoved:Lcom/android/launcher2/BaseItem;

.field private mPushItemToRight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/CellLayoutFolder;->sDragXYForQuickOptionsFolder:[I

    sput-boolean v1, Lcom/android/launcher2/CellLayoutFolder;->sIsDraggingWithinQuickOptionsBounds:Z

    sput-boolean v1, Lcom/android/launcher2/CellLayoutFolder;->sDeltaOffset:Z

    sput-boolean v1, Lcom/android/launcher2/CellLayoutFolder;->mHasSetStartXY:Z

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutFolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutFolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutFolder;->mExternalDragItem:Lcom/android/launcher2/BaseItem;

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemTobeRemoved:Lcom/android/launcher2/BaseItem;

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutFolder;->mPushItemToRight:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutFolder;->mIsItemAddingToOtherPage:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutFolder;->mAcceptMoveTo:Z

    return-void
.end method

.method private checkEmptyCell()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutFolder;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutFolder;->mExternalDragItem:Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutFolder;->makeEmptyCellAsFakeIfNeeded()V

    :cond_1
    return-void
.end method

.method private makeEmptyCellAsFakeIfNeeded()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->getCellCountX()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->getCellCountY()I

    move-result v6

    mul-int v0, v5, v6

    const v2, 0x7fffffff

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v5

    div-int v2, v5, v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->existsEmptyCell()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v5

    if-ge v2, v5, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v5

    if-ge v2, v5, :cond_4

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/CellLayoutFolder;->mPushItemToRight:Z

    :goto_0
    const/4 v1, 0x0

    iget-boolean v5, p0, Lcom/android/launcher2/CellLayoutFolder;->mPushItemToRight:Z

    if-eqz v5, :cond_6

    move v3, v0

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayoutFolder;->getGlobalPositionForFolder(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    if-eqz v1, :cond_5

    :cond_2
    if-eqz v1, :cond_3

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/CellLayoutFolder;->hide(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v5

    if-ge v2, v5, :cond_3

    iget v5, p0, Lcom/android/launcher2/CellLayoutFolder;->mTargetCell:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getPageItemCount()I

    move-result v6

    if-lt v5, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getPageItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/launcher2/CellLayoutFolder;->mTargetCell:I

    :cond_3
    return-void

    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/CellLayoutFolder;->mPushItemToRight:Z

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayoutFolder;->getGlobalPositionForFolder(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    if-nez v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private offsetXYOccurredByScaleAnimation(Lcom/android/launcher2/BaseItem;)V
    .locals 7

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/launcher2/AppIconView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Lcom/android/launcher2/AppIconView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, v3, Lcom/android/launcher2/AppIconView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v5

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, v3, Lcom/android/launcher2/AppIconView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, v5

    sget-object v4, Lcom/android/launcher2/CellLayoutFolder;->sDragXYForQuickOptionsFolder:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    sub-int/2addr v6, v0

    aput v6, v4, v5

    sget-object v4, Lcom/android/launcher2/CellLayoutFolder;->sDragXYForQuickOptionsFolder:[I

    const/4 v5, 0x1

    aget v6, v4, v5

    sub-int/2addr v6, v1

    aput v6, v4, v5

    :cond_0
    return-void
.end method

.method private pushFirstItemToLeftPage(Lcom/android/launcher2/CellLayoutFolder;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->isReorderingForDragOnFolder()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Couldn\'t add and remove item. This should never happen!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->getCellCountX()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->getCellCountY()I

    move-result v7

    mul-int v0, v6, v7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayoutFolder;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {p1, v2}, Lcom/android/launcher2/CellLayoutFolder;->getGlobalPositionForFolder(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v6, "CellLayoutFolder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pushLastItemToLeftPage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " page would push "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayoutFolder;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutFolder;

    if-nez v3, :cond_3

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find left page : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v3, v6}, Lcom/android/launcher2/CellLayoutFolder;->setTargetCell(I)V

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutFolder;->realTimeReorderOnParent()V

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v7

    invoke-virtual {v3, v1, v6, v7}, Lcom/android/launcher2/CellLayoutFolder;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayoutFolder;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    :goto_1
    return v5

    :cond_4
    const-string v6, "CellLayoutFolder"

    const-string v7, "pushLastItemToLeftPage : can\'t push first item to left page"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private pushItemToLeftPage(Lcom/android/launcher2/BaseItem;)Z
    .locals 11

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->isReorderingForDragOnFolder()Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Couldn\'t add and remove item. This should never happen!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const-string v8, "CellLayoutFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pushItemToLeftPage : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->getCellCountX()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->getCellCountY()I

    move-result v9

    mul-int v0, v8, v9

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    iget-object v8, p0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    if-eqz v8, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutFolder;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    iget-object v8, p0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v8}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v8

    div-int v7, v8, v0

    add-int/lit8 v3, v7, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v8

    if-ge v3, v8, :cond_3

    invoke-virtual {v4, v3}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutFolder;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutFolder;->existsEmptyCell()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-direct {p0, v2}, Lcom/android/launcher2/CellLayoutFolder;->pushFirstItemToLeftPage(Lcom/android/launcher2/CellLayoutFolder;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v8, "CellLayoutFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pushItemToLeftPage : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " page can\'t push first item"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v8, "CellLayoutFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pushItemToLeftPage : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " page would push "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutFolder;

    if-nez v1, :cond_4

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t find left page : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v1, v8}, Lcom/android/launcher2/CellLayoutFolder;->setTargetCell(I)V

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutFolder;->realTimeReorderOnParent()V

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v9

    invoke-virtual {v1, p1, v8, v9}, Lcom/android/launcher2/CellLayoutFolder;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutFolder;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    :cond_5
    return v6
.end method

.method private pushItemToRightPage(Lcom/android/launcher2/BaseItem;)Z
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->isReorderingForDragOnFolder()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Couldn\'t add and remove item. This should never happen!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    const-string v9, "CellLayoutFolder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pushItemToRightPage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->getCellCountX()I

    move-result v9

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->getCellCountY()I

    move-result v10

    mul-int v0, v9, v10

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutFolder;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v9

    add-int/lit8 v8, v9, -0x1

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v9}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v9

    div-int v8, v9, v0

    :cond_1
    move v3, v8

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    if-lt v3, v9, :cond_4

    invoke-virtual {v4, v3}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutFolder;

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutFolder;->existsEmptyCell()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-direct {p0, v2}, Lcom/android/launcher2/CellLayoutFolder;->pushLastItemToRightPage(Lcom/android/launcher2/CellLayoutFolder;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v9, "CellLayoutFolder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pushItemToRightPage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " page can\'t push last item"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    const-string v9, "CellLayoutFolder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pushItemToRightPage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " page would push "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayoutFolder;

    if-nez v7, :cond_6

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher2/CellLayoutFolder;->mIsItemAddingToOtherPage:Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    mul-int v1, v0, v9

    invoke-virtual {p1, v1}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    invoke-virtual {v4, p1}, Lcom/android/launcher2/FolderPagedView;->addItemToValidPage(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    iput-boolean v12, p0, Lcom/android/launcher2/CellLayoutFolder;->mIsItemAddingToOtherPage:Z

    :cond_5
    :goto_1
    return v6

    :cond_6
    invoke-virtual {v7, v12}, Lcom/android/launcher2/CellLayoutFolder;->setTargetCell(I)V

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutFolder;->realTimeReorderOnParent()V

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v9

    invoke-virtual {v7, p1, v12, v9}, Lcom/android/launcher2/CellLayoutFolder;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    invoke-virtual {v7, p1}, Lcom/android/launcher2/CellLayoutFolder;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    goto :goto_1
.end method

.method private pushLastItemToRightPage(Lcom/android/launcher2/CellLayoutFolder;)Z
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->isReorderingForDragOnFolder()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Couldn\'t add and remove item. This should never happen!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->getCellCountX()I

    move-result v7

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->getCellCountY()I

    move-result v8

    mul-int v0, v7, v8

    const/4 v5, 0x0

    const/4 v1, 0x0

    move v3, v0

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayoutFolder;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    invoke-virtual {p1, v3}, Lcom/android/launcher2/CellLayoutFolder;->getGlobalPositionForFolder(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v7, "CellLayoutFolder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pushLastItemToRightPage : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " page would push "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayoutFolder;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutFolder;

    if-nez v6, :cond_3

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher2/CellLayoutFolder;->mIsItemAddingToOtherPage:Z

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    mul-int v2, v0, v7

    invoke-virtual {v1, v2}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    invoke-virtual {v4, v1}, Lcom/android/launcher2/FolderPagedView;->addItemToValidPage(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    iput-boolean v10, p0, Lcom/android/launcher2/CellLayoutFolder;->mIsItemAddingToOtherPage:Z

    :goto_1
    return v5

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v6, v10}, Lcom/android/launcher2/CellLayoutFolder;->setTargetCell(I)V

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutFolder;->realTimeReorderOnParent()V

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v7

    invoke-virtual {v6, v1, v10, v7}, Lcom/android/launcher2/CellLayoutFolder;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    invoke-virtual {v6, v1}, Lcom/android/launcher2/CellLayoutFolder;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    goto :goto_1

    :cond_4
    const-string v7, "CellLayoutFolder"

    const-string v8, "pushLastItemToRightPage : can\'t push last item to right page"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removeItemBeforeAddToInternal()V
    .locals 8

    iget-boolean v5, p0, Lcom/android/launcher2/CellLayoutFolder;->mAcceptMoveTo:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemTobeRemoved:Lcom/android/launcher2/BaseItem;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutFolder;

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemTobeRemoved:Lcom/android/launcher2/BaseItem;

    iget v5, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v3}, Lcom/android/launcher2/FolderPagedView;->getCellCountX()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/launcher2/FolderPagedView;->getCellCountY()I

    move-result v7

    mul-int/2addr v6, v7

    div-int v4, v5, v6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v5

    if-eq v5, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutFolder;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemTobeRemoved:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "CellLayoutFolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove item before add : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemTobeRemoved:Lcom/android/launcher2/BaseItem;

    iget v7, v7, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemTobeRemoved:Lcom/android/launcher2/BaseItem;

    iget-object v7, v7, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemTobeRemoved:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/CellLayoutFolder;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected ableToCloseLayGap()Z
    .locals 1

    instance-of v0, p0, Lcom/android/launcher2/CellLayoutFolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public acceptMoveTo(Lcom/android/launcher2/BaseItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutFolder;->mAcceptMoveTo:Z

    return v0
.end method

.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/FolderPagedView;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderPagedView;

    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v0}, Lcom/android/launcher2/FolderPagedView;->getCellCountX()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/launcher2/FolderPagedView;->getCellCountY()I

    move-result v5

    mul-int/2addr v4, v5

    div-int v2, v3, v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutFolder;->mIsItemAddingToOtherPage:Z

    if-nez v3, :cond_1

    const-string v3, "CellLayoutFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addItem : target page is not matched. this item will be added to other page. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/CellLayoutFolder;->mIsItemAddingToOtherPage:Z

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderPagedView;->addItemToValidPage(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/CellLayoutFolder;->mIsItemAddingToOtherPage:Z

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected emptyPositionForReorder()V
    .locals 3

    const-string v0, "CellLayoutFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emptyPositionForReorder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getGlobalPositionForFolder(I)I
    .locals 4

    move v0, p1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/PagedView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getCellCountX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getCellCountY()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v3

    mul-int/2addr v2, v3

    add-int v0, v2, p1

    :cond_0
    return v0
.end method

.method protected getGlobalPositionForFolder(II)I
    .locals 4

    move v0, p1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/PagedView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getCellCountX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getCellCountY()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int v0, v2, p1

    :cond_0
    return v0
.end method

.method protected getPositionByPage(I)I
    .locals 4

    move v1, p1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/PagedView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getCellCountX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getCellCountY()I

    move-result v3

    mul-int/2addr v2, v3

    rem-int v1, p1, v2

    :cond_0
    return v1
.end method

.method protected isReorderingForDragOnFolder()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderPagedView;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/FolderPagedView;->isInReorder()Z

    move-result v1

    goto :goto_0
.end method

.method public moveToLastPage()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderPagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderPagedView;->snapToPage(I)V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/DragState;

    move-object v4, v11

    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    const/4 v11, 0x3

    if-ne v2, v11, :cond_1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mAcceptMoveTo:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->setReorderingForDrag(Z)V

    :cond_1
    :goto_2
    return v6

    :cond_2
    sget-object v4, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_0

    :pswitch_0
    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    :cond_3
    :goto_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    invoke-static {v11}, Lcom/android/launcher2/QuickOptionsPopup;->isValidType(Lcom/android/launcher2/BaseItem;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    sget-object v11, Lcom/android/launcher2/CellLayoutFolder;->sDragXYForQuickOptionsFolder:[I

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    aput v13, v11, v12

    sget-object v11, Lcom/android/launcher2/CellLayoutFolder;->sDragXYForQuickOptionsFolder:[I

    const/4 v12, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    aput v13, v11, v12

    :cond_4
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/launcher2/CellLayoutFolder;->mHasSetStartXY:Z

    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/launcher2/CellLayoutFolder;->sIsDraggingWithinQuickOptionsBounds:Z

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v11}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/launcher2/FolderItem;->contains(Lcom/android/launcher2/BaseItem;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mAcceptMoveTo:Z

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemTobeRemoved:Lcom/android/launcher2/BaseItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->hide(Lcom/android/launcher2/BaseItem;)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mExternalDragItem:Lcom/android/launcher2/BaseItem;

    goto/16 :goto_3

    :pswitch_1
    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    :cond_7
    :goto_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v11}, Lcom/android/launcher2/QuickOptionsPopup;->isValidType(Lcom/android/launcher2/BaseItem;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v4, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-ne v11, v0, :cond_8

    sget-boolean v11, Lcom/android/launcher2/CellLayoutFolder;->sDeltaOffset:Z

    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->offsetXYOccurredByScaleAnimation(Lcom/android/launcher2/BaseItem;)V

    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/launcher2/CellLayoutFolder;->sDeltaOffset:Z

    :cond_8
    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->setCrosshairsVisibility(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->invalidate()V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v11

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v11}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/launcher2/FolderItem;->contains(Lcom/android/launcher2/BaseItem;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mAcceptMoveTo:Z

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemTobeRemoved:Lcom/android/launcher2/BaseItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->hide(Lcom/android/launcher2/BaseItem;)V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mExternalDragItem:Lcom/android/launcher2/BaseItem;

    goto/16 :goto_4

    :pswitch_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v11

    if-eqz v11, :cond_b

    sget-object v11, Lcom/android/launcher2/CellLayoutFolder;->sDragXYForQuickOptionsFolder:[I

    const/4 v12, 0x0

    sget-object v13, Lcom/android/launcher2/CellLayoutFolder;->sDragXYForQuickOptionsFolder:[I

    const/4 v14, 0x1

    const/4 v15, -0x1

    aput v15, v13, v14

    aput v15, v11, v12

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/launcher2/CellLayoutFolder;->sIsDraggingWithinQuickOptionsBounds:Z

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/launcher2/CellLayoutFolder;->sDeltaOffset:Z

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/launcher2/CellLayoutFolder;->mHasSetStartXY:Z

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mAcceptMoveTo:Z

    if-nez v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->show(Lcom/android/launcher2/BaseItem;)V

    :cond_c
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mAcceptMoveTo:Z

    :cond_d
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemTobeRemoved:Lcom/android/launcher2/BaseItem;

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v11}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v11

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Folder;->setOnceExited(Z)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    if-eqz v11, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->getPageChildCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/FolderPagedView;

    if-nez v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getItems()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v5, :cond_13

    const-string v11, "CellLayoutFolder"

    const-string v12, "abnormal drag exit - folder info : total(%d), currentPage(%d), drag-exit(%d), child(%d)"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v5}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v5}, Lcom/android/launcher2/FolderPagedView;->getCurrentPage()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_5
    if-eqz v3, :cond_10

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPushItemToRight:Z

    if-eqz v11, :cond_14

    add-int/lit8 v7, v3, -0x1

    :goto_6
    move-object/from16 v0, p0

    invoke-super {v0, v7}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->getScreen()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v7, v12}, Lcom/android/launcher2/CellLayoutFolder;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->show(Lcom/android/launcher2/BaseItem;)V

    :cond_10
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    :cond_11
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mExternalDragItem:Lcom/android/launcher2/BaseItem;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v11, v12, :cond_12

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->setCrosshairsVisibility(F)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->invalidate()V

    goto/16 :goto_1

    :cond_13
    const-string v11, "CellLayoutFolder"

    const-string v12, "FolderPagedView is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_14
    const/4 v7, 0x0

    goto :goto_6

    :pswitch_4
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->isAlphabeticalGrid()Z

    move-result v11

    if-eqz v11, :cond_16

    if-eqz v4, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    iget v11, v11, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v5}, Lcom/android/launcher2/FolderPagedView;->getCellCountX()I

    move-result v12

    invoke-virtual {v5}, Lcom/android/launcher2/FolderPagedView;->getCellCountY()I

    move-result v13

    mul-int/2addr v12, v13

    div-int v8, v11, v12

    invoke-virtual {v5, v8}, Lcom/android/launcher2/FolderPagedView;->snapToPage(I)V

    invoke-virtual {v5, v8}, Lcom/android/launcher2/FolderPagedView;->loadAssociatedPages(I)V

    :cond_15
    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_16
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v11

    if-eqz v11, :cond_17

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v11}, Lcom/android/launcher2/QuickOptionsPopup;->isValidType(Lcom/android/launcher2/BaseItem;)Z

    move-result v11

    if-eqz v11, :cond_17

    sget-boolean v11, Lcom/android/launcher2/CellLayoutFolder;->sIsDraggingWithinQuickOptionsBounds:Z

    if-nez v11, :cond_17

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v11}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v11}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v11

    if-eqz v11, :cond_17

    const-string v11, "CellLayoutFolder"

    const-string v12, "onDragEvent: Dismiss Quick Options Popup on ACTION_DROP."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v11}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v11}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    :cond_17
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    if-nez v11, :cond_18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mExternalDragItem:Lcom/android/launcher2/BaseItem;

    if-eqz v11, :cond_1a

    :cond_18
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->setReorderingForDrag(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    if-eqz v11, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->removeItemBeforeAddToInternal()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->show(Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPushItemToRight:Z

    if-eqz v11, :cond_1b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->pushItemToRightPage(Lcom/android/launcher2/BaseItem;)Z

    :cond_19
    :goto_7
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mExternalDragItem:Lcom/android/launcher2/BaseItem;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v11}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher2/FolderItem;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v11}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/android/launcher2/FolderItem;->setAddingItemWithDrag(Z)V

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->pushItemToLeftPage(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_7

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->existsEmptyCell()Z

    move-result v11

    if-eqz v11, :cond_1d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    if-eqz v11, :cond_19

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->makeEmptyCellAsFakeIfNeeded()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    if-eqz v11, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->removeItemBeforeAddToInternal()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->show(Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPushItemToRight:Z

    if-eqz v11, :cond_1e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->pushItemToRightPage(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_7

    :cond_1e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mPendingItemToPushOut:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/CellLayoutFolder;->pushItemToLeftPage(Lcom/android/launcher2/BaseItem;)Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mTargetCell:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->getPageItemCount()I

    move-result v12

    if-le v11, v12, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutFolder;->getPageItemCount()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mTargetCell:I

    goto/16 :goto_7

    :pswitch_5
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v11}, Lcom/android/launcher2/QuickOptionsPopup;->isValidType(Lcom/android/launcher2/BaseItem;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v4, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-ne v11, v0, :cond_0

    sget-object v11, Lcom/android/launcher2/CellLayoutFolder;->sDragXYForQuickOptionsFolder:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sget-object v11, Lcom/android/launcher2/CellLayoutFolder;->sDragXYForQuickOptionsFolder:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v12

    float-to-int v12, v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v12, v9

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    int-to-double v14, v10

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mMinimumDistanceToDismissQuickOptions:I

    int-to-double v14, v11

    cmpl-double v11, v12, v14

    if-lez v11, :cond_1f

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/launcher2/CellLayoutFolder;->sIsDraggingWithinQuickOptionsBounds:Z

    :cond_1f
    sget-boolean v11, Lcom/android/launcher2/CellLayoutFolder;->sIsDraggingWithinQuickOptionsBounds:Z

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v11}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v11}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v11

    if-eqz v11, :cond_0

    const-string v11, "CellLayoutFolder"

    const-string v12, "onDragEvent: Dismiss Quick Options Popup on ACTION_DRAG_LOCATION."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayoutFolder;->mInternalDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v11}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v11}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method realTimeReorder()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CellLayoutFolder"

    const-string v1, "folder would be closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutFolder;->setRealTimeReordering(Z)V

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutFolder;->checkEmptyCell()V

    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutFolder;->setRealTimeReordering(Z)V

    goto :goto_0
.end method

.method public realTimeReorderOnParent()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->isReorderingForDragOnFolder()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->cancelAllFolderAnimations()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->closeLayoutGap()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher2/FolderPagedView;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderPagedView;->clampCurrentPage()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_0

    check-cast v0, Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderPagedView;->syncItemViewOnRemoveItem()V

    :cond_0
    return v1
.end method

.method public setRealTimeReordering(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderPagedView;->setRealtimeReordering(Z)V

    return-void
.end method

.method public setReorderingForDrag(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderPagedView;->setReorderingForDrag(Z)V

    return-void
.end method

.method public willCreateFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
