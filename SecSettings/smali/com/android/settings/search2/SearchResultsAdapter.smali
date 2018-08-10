.class public Lcom/android/settings/search2/SearchResultsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/settings/search2/SearchViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFragment:Lcom/android/settings/search2/SearchFragment;

.field private mResultsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/search2/SearchResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSearchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/search2/SearchFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mFragment:Lcom/android/settings/search2/SearchFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mResultsMap:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/search2/SearchResultsAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public addSearchResults(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/search2/SearchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mResultsMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearResults()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mResultsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchResultsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public displaySavedQuery(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/search2/SearchResult;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchResultsAdapter;->clearResults()V

    iget-object v0, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchResultsAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public displaySearchResults()I
    .locals 13

    iget-object v11, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mResultsMap:Ljava/util/Map;

    const-class v12, Lcom/android/settings/search2/DatabaseResultLoader;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v11, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mResultsMap:Ljava/util/Map;

    const-class v12, Lcom/android/settings/search2/InstalledAppResultLoader;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    add-int v11, v6, v2

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0xa

    if-gt v10, v11, :cond_4

    :goto_3
    move v5, v4

    if-ge v5, v6, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/search2/SearchResult;

    iget v11, v11, Lcom/android/settings/search2/SearchResult;->rank:I

    if-ne v11, v10, :cond_2

    add-int/lit8 v4, v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/search2/SearchResult;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_3

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/search2/SearchResult;

    iget v11, v11, Lcom/android/settings/search2/SearchResult;->rank:I

    if-ne v11, v10, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/search2/SearchResult;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    move v0, v1

    move v4, v5

    goto :goto_2

    :goto_5
    if-ge v5, v6, :cond_5

    add-int/lit8 v4, v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/search2/SearchResult;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v5, v4

    goto :goto_5

    :goto_6
    if-ge v1, v2, :cond_6

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/search2/SearchResult;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move v1, v0

    goto :goto_6

    :cond_6
    new-instance v11, Lcom/android/settings/search2/SearchResultDiffCallback;

    iget-object v12, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-direct {v11, v12, v9}, Lcom/android/settings/search2/SearchResultDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v7

    iput-object v9, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-virtual {v7, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v11, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    return v11
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search2/SearchResult;

    iget-wide v0, v0, Lcom/android/settings/search2/SearchResult;->stableId:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search2/SearchResult;

    iget v0, v0, Lcom/android/settings/search2/SearchResult;->viewType:I

    return v0
.end method

.method public getSearchResults()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/settings/search2/SearchViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/search2/SearchResultsAdapter;->onBindViewHolder(Lcom/android/settings/search2/SearchViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/search2/SearchViewHolder;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mFragment:Lcom/android/settings/search2/SearchFragment;

    iget-object v0, p0, Lcom/android/settings/search2/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search2/SearchResult;

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/search2/SearchViewHolder;->onBind(Lcom/android/settings/search2/SearchFragment;Lcom/android/settings/search2/SearchResult;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/search2/SearchResultsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/search2/SearchViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/search2/SearchViewHolder;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x0

    return-object v3

    :pswitch_1
    const v3, 0x7f0d028c

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/search2/IntentSearchViewHolder;

    invoke-direct {v3, v2}, Lcom/android/settings/search2/IntentSearchViewHolder;-><init>(Landroid/view/View;)V

    return-object v3

    :pswitch_2
    const v3, 0x7f0d028b

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/search2/InlineSwitchViewHolder;

    invoke-direct {v3, v2, v0}, Lcom/android/settings/search2/InlineSwitchViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-object v3

    :pswitch_3
    const v3, 0x7f0d028f

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/search2/SavedQueryViewHolder;

    invoke-direct {v3, v2}, Lcom/android/settings/search2/SavedQueryViewHolder;-><init>(Landroid/view/View;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
