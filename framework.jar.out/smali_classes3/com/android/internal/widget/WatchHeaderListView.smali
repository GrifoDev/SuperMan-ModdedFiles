.class public Lcom/android/internal/widget/WatchHeaderListView;
.super Landroid/widget/ListView;
.source "WatchHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;
    }
.end annotation


# instance fields
.field private mTopPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private wrapAdapterIfNecessary()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView;->wrapHeaderListAdapterInternal()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;

    iget-object v2, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->setTopPanel(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView;->dispatchDataSetObserverOnChangedInternal()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/WatchHeaderListView;->setTopPanel(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "WatchHeaderListView can host only one header"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getHeaderViewsCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView;->wrapAdapterIfNecessary()V

    return-void
.end method

.method public setTopPanel(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView;->wrapAdapterIfNecessary()V

    return-void
.end method

.method protected wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")",
            "Landroid/widget/HeaderViewListAdapter;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-object v0
.end method
