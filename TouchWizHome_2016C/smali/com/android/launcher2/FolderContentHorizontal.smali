.class public Lcom/android/launcher2/FolderContentHorizontal;
.super Lcom/android/launcher2/FolderContent;
.source "FolderContentHorizontal.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentPage:I

.field private mCurrentView:Lcom/android/launcher2/CellLayoutNoGap;

.field private mFolderView:Lcom/android/launcher2/Folder;

.field private mPagedView:Lcom/android/launcher2/FolderPagedView;

.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher2/FolderContentHorizontal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/FolderContentHorizontal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/FolderContent;-><init>()V

    return-void
.end method


# virtual methods
.method public addItems(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/ItemViewBuilder;)I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderContentHorizontal;->mPagedView:Lcom/android/launcher2/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher2/FolderContentHorizontal;->mFolderView:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderPagedView;->bind(Lcom/android/launcher2/Folder;)V

    iget-object v0, p0, Lcom/android/launcher2/FolderContentHorizontal;->mPagedView:Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderPagedView;->invalidatePageData()V

    iget-object v0, p0, Lcom/android/launcher2/FolderContentHorizontal;->mPagedView:Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderPagedView;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FolderContentHorizontal;->mCurrentPage:I

    iget-object v0, p0, Lcom/android/launcher2/FolderContentHorizontal;->mPagedView:Lcom/android/launcher2/FolderPagedView;

    iget v1, p0, Lcom/android/launcher2/FolderContentHorizontal;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutNoGap;

    iput-object v0, p0, Lcom/android/launcher2/FolderContentHorizontal;->mCurrentView:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getContentView()Lcom/android/launcher2/CellLayoutNoGap;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/FolderContentHorizontal;->mPagedView:Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderPagedView;->getCurrentPage()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/FolderContentHorizontal;->mCurrentPage:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/launcher2/FolderContentHorizontal;->mCurrentPage:I

    iget-object v1, p0, Lcom/android/launcher2/FolderContentHorizontal;->mPagedView:Lcom/android/launcher2/FolderPagedView;

    iget v2, p0, Lcom/android/launcher2/FolderContentHorizontal;->mCurrentPage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutNoGap;

    iput-object v1, p0, Lcom/android/launcher2/FolderContentHorizontal;->mCurrentView:Lcom/android/launcher2/CellLayoutNoGap;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/FolderContentHorizontal;->mCurrentView:Lcom/android/launcher2/CellLayoutNoGap;

    return-object v1
.end method

.method public getContentViewByPage(I)Lcom/android/launcher2/CellLayoutNoGap;
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderContentHorizontal;->mPagedView:Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderPagedView;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderContentHorizontal;->mPagedView:Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutNoGap;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/android/launcher2/FolderContentHorizontal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentViewByPage() : invalid page = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderContentHorizontal;->mPagedView:Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderPagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPagedView()Lcom/android/launcher2/FolderPagedView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderContentHorizontal;->mPagedView:Lcom/android/launcher2/FolderPagedView;

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderContentHorizontal;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public inflateContentView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    const v1, 0x7f030014

    invoke-static {p1, v1, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/android/launcher2/Folder;

    iput-object v1, p0, Lcom/android/launcher2/FolderContentHorizontal;->mFolderView:Lcom/android/launcher2/Folder;

    const v1, 0x7f10003d

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderPagedView;

    iput-object v1, p0, Lcom/android/launcher2/FolderContentHorizontal;->mPagedView:Lcom/android/launcher2/FolderPagedView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/FolderContentHorizontal;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method
