.class Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;
.super Ljava/lang/Object;
.source "SecSearchResultsSummary.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecSearchInferface$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHistoryEmptyView:Landroid/view/View;

.field private mHistoryLayout:Landroid/view/ViewGroup;

.field private mHistoryListView:Landroid/widget/ListView;

.field private mLoadingView:Landroid/view/ViewGroup;

.field private mSearchResultEmptyView:Landroid/view/ViewGroup;

.field private mSearchResultLayout:Landroid/view/ViewGroup;

.field private mSearchResultListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field final synthetic this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/search/SecSearchResultsSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initSearchView(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f0a076d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const v3, 0x7f0e0008

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->inflateMenu(I)V

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3, v0}, Lcom/android/settings/SettingsActivity;->updateOptionMenu(Landroid/view/Menu;)Z

    const v3, 0x7f0a0760

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1$1;-><init>(Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearFocusOnSearchView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_0
    return-void
.end method

.method public getSearchText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public hideHistoryLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideIme()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public hideLoadingView(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mLoadingView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mLoadingView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_0

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mLoadingView:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public hideSearchResultLayout()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultEmptyView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultEmptyView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const v1, 0x7f0a04cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mLoadingView:Landroid/view/ViewGroup;

    const v1, 0x7f0a048d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a05c5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultEmptyView:Landroid/view/ViewGroup;

    const v1, 0x7f0a04c2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a048f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a05c7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryEmptyView:Landroid/view/View;

    const v1, 0x7f0a04c3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    const v3, 0x7f0d02a8

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->initSearchView(Landroid/view/View;)V

    return-void
.end method

.method public isSearchViewFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isFocused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestFocusOnSearchView()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x102045d

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setHistoryListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public setOnHistoryListScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public setOnSearchResultsListItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnSearchResultsListScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public setSearchResultsListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public setSearchText(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public showHistoryLayout(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryEmptyView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showLoadingViewIfPossible()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mLoadingView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mLoadingView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showSearchResultLayout(Z)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultEmptyView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultEmptyView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
