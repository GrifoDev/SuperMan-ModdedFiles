.class public Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;
.super Ljava/lang/Object;
.source "SemHorizontalHeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mIsFilterable:Z

    if-nez p1, :cond_0

    sget-object v0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    :goto_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-boolean v2, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFootersCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    return-object v3

    :cond_0
    sub-int v1, p1, v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    return-object v5

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    return-object v3
.end method

.method public getItemId(I)J
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    sub-int v1, p1, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    return-wide v4
.end method

.method public getItemViewType(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    sub-int v1, p1, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    return v3

    :cond_0
    const/4 v3, -0x2

    return v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    return-object v3

    :cond_0
    sub-int v1, p1, v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    return-object v5

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-boolean v3, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    return v3

    :cond_0
    sub-int v1, p1, v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    return v3

    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    const/4 v3, 0x0

    return v3

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-boolean v3, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    return v3
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v3, v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v3, v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
