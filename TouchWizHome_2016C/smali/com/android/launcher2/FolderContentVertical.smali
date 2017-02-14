.class public Lcom/android/launcher2/FolderContentVertical;
.super Lcom/android/launcher2/FolderContent;
.source "FolderContentVertical.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCellLayoutView:Lcom/android/launcher2/CellLayoutNoGap;

.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher2/FolderContentVertical;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/FolderContentVertical;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/FolderContent;-><init>()V

    return-void
.end method

.method private createAndAddShortcut(Lcom/android/launcher2/BaseItem;)Z
    .locals 3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/FolderContentVertical;->mCellLayoutView:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/FolderContentVertical;->mCellLayoutView:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/FolderContentVertical;->mCellLayoutView:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderContentVertical;->mCellLayoutView:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addItems(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/ItemViewBuilder;)I
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher2/FolderContentVertical;->mCellLayoutView:Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/FolderContentVertical;->mCellLayoutView:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3, p2}, Lcom/android/launcher2/CellLayoutNoGap;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/FolderContentVertical;->createAndAddShortcut(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/launcher2/FolderContentVertical;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addItems() current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", overflowed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/launcher2/FolderContentVertical;->TAG:Ljava/lang/String;

    const-string v4, "CellLayout is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public getContentView()Lcom/android/launcher2/CellLayoutNoGap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderContentVertical;->mCellLayoutView:Lcom/android/launcher2/CellLayoutNoGap;

    return-object v0
.end method

.method public getContentViewByPage(I)Lcom/android/launcher2/CellLayoutNoGap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderContentVertical;->mCellLayoutView:Lcom/android/launcher2/CellLayoutNoGap;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPagedView()Lcom/android/launcher2/FolderPagedView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderContentVertical;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public inflateContentView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    const v1, 0x7f030015

    invoke-static {p1, v1, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutNoGap;

    iput-object v1, p0, Lcom/android/launcher2/FolderContentVertical;->mCellLayoutView:Lcom/android/launcher2/CellLayoutNoGap;

    const v1, 0x7f100040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/launcher2/FolderContentVertical;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method
