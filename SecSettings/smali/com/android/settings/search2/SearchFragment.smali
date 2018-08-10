.class public Lcom/android/settings/search2/SearchFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "SearchFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settings/search/IndexingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search2/SearchFragment$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/core/InstrumentedFragment;",
        "Landroid/widget/SearchView$OnQueryTextListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/android/settings/search2/SearchResult;",
        ">;>;",
        "Lcom/android/settings/search/IndexingCallback;"
    }
.end annotation


# static fields
.field static final LOADER_ID_DATABASE:I = 0x1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOADER_ID_INSTALLED_APPS:I = 0x2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final RESULT_CLICK_COUNT:Ljava/lang/String; = "settings_search_result_click_count"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SEARCH_TAG:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private mNeverEnteredQuery:Z

.field private mNoResultsView:Landroid/widget/LinearLayout;

.field mQuery:Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mResultClickCount:I

.field mResultsRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation
.end field

.field mSavedQueryController:Lcom/android/settings/search2/SavedQueryController;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mSearchAdapter:Lcom/android/settings/search2/SearchResultsAdapter;

.field mSearchFeatureProvider:Lcom/android/settings/search2/SearchFeatureProvider;
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation
.end field

.field mSearchView:Landroid/widget/SearchView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mShowingSavedQuery:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mUnfinishedLoadersCount:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/search2/SearchFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search2/SearchFragment;->hideKeyboard()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SearchViewTag"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/settings/search2/SearchFragment;->SEARCH_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/search2/SearchFragment;->mUnfinishedLoadersCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/search2/SearchFragment;->mNeverEnteredQuery:Z

    new-instance v0, Lcom/android/settings/search2/SearchFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/search2/SearchFragment$1;-><init>(Lcom/android/settings/search2/SearchFragment;)V

    iput-object v0, p0, Lcom/android/settings/search2/SearchFragment;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private hideKeyboard()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v3, p0, Lcom/android/settings/search2/SearchFragment;->mResultsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/search2/SearchFragment;->mResultsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    :cond_1
    return-void
.end method

.method private requery()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/search2/SearchFragment;->onQueryTextChange(Ljava/lang/String;)Z

    return-void
.end method

.method private restartLoaders()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/search2/SearchFragment;->mShowingSavedQuery:Z

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mUnfinishedLoadersCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x22

    return v0
.end method

.method makeSearchView(Landroid/app/ActionBar;Ljava/lang/String;)Landroid/widget/SearchView;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    invoke-virtual {v1, p2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    sget v2, Lcom/android/settings/search2/SearchFragment;->SEARCH_TAG:I

    invoke-virtual {v1, v2, v1}, Landroid/widget/SearchView;->setTag(ILjava/lang/Object;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search2/SearchFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search2/SearchFragment;->mSearchFeatureProvider:Lcom/android/settings/search2/SearchFeatureProvider;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search2/SearchFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/search2/SearchFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    new-instance v3, Lcom/android/settings/search2/SearchResultsAdapter;

    invoke-direct {v3, p0}, Lcom/android/settings/search2/SearchResultsAdapter;-><init>(Lcom/android/settings/search2/SearchFragment;)V

    iput-object v3, p0, Lcom/android/settings/search2/SearchFragment;->mSearchAdapter:Lcom/android/settings/search2/SearchResultsAdapter;

    new-instance v3, Lcom/android/settings/search2/SavedQueryController;

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/search2/SearchFragment;->mSearchAdapter:Lcom/android/settings/search2/SearchResultsAdapter;

    invoke-direct {v3, v4, v2, v5}, Lcom/android/settings/search2/SavedQueryController;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;Lcom/android/settings/search2/SearchResultsAdapter;)V

    iput-object v3, p0, Lcom/android/settings/search2/SearchFragment;->mSavedQueryController:Lcom/android/settings/search2/SavedQueryController;

    iget-object v3, p0, Lcom/android/settings/search2/SearchFragment;->mSearchFeatureProvider:Lcom/android/settings/search2/SearchFeatureProvider;

    invoke-interface {v3}, Lcom/android/settings/search2/SearchFeatureProvider;->initFeedbackButton()V

    if-eqz p1, :cond_0

    const-string/jumbo v3, "state_query"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    const-string/jumbo v3, "state_never_entered_query"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/search2/SearchFragment;->mNeverEnteredQuery:Z

    const-string/jumbo v3, "state_result_click_count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/search2/SearchFragment;->mResultClickCount:I

    const-string/jumbo v3, "state_showing_saved_query"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/search2/SearchFragment;->mShowingSavedQuery:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/search2/SearchFragment;->makeSearchView(Landroid/app/ActionBar;Ljava/lang/String;)Landroid/widget/SearchView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/search2/SearchFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/settings/search2/SearchFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/search2/SearchFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->requestFocus()Z

    invoke-static {v1}, Lcom/android/settings/Utils;->isLowStorage(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/search2/SearchFragment;->mSearchFeatureProvider:Lcom/android/settings/search2/SearchFeatureProvider;

    invoke-interface {v3, v1, p0}, Lcom/android/settings/search2/SearchFeatureProvider;->updateIndex(Landroid/content/Context;Lcom/android/settings/search/IndexingCallback;)V

    :goto_1
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/android/settings/search2/SearchFragment;->mShowingSavedQuery:Z

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "SearchFragment"

    const-string/jumbo v4, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/search2/SearchResult;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mSearchFeatureProvider:Lcom/android/settings/search2/SearchFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/android/settings/search2/SearchFeatureProvider;->getDatabaseSearchLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/search2/DatabaseResultLoader;

    move-result-object v1

    return-object v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mSearchFeatureProvider:Lcom/android/settings/search2/SearchFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/android/settings/search2/SearchFeatureProvider;->getInstalledAppSearchLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/search2/InstalledAppResultLoader;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v1, 0x7f0d028e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a04c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mResultsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mResultsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/settings/search2/SearchFragment;->mSearchAdapter:Lcom/android/settings/search2/SearchResultsAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mResultsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mResultsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/settings/search2/SearchFragment;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    const v1, 0x7f0a05c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onIndexingFinished()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/settings/search2/SearchFragment;->mShowingSavedQuery:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mSavedQueryController:Lcom/android/settings/search2/SavedQueryController;

    invoke-virtual {v1}, Lcom/android/settings/search2/SavedQueryController;->loadSavedQueries()V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/search2/SearchFragment;->requery()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/search2/SearchFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/search2/SearchResult;",
            ">;>;",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/search2/SearchResult;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mSearchAdapter:Lcom/android/settings/search2/SearchResultsAdapter;

    invoke-virtual {p1}, Landroid/content/Loader;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/settings/search2/SearchResultsAdapter;->addSearchResults(Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mUnfinishedLoadersCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mSearchAdapter:Lcom/android/settings/search2/SearchResultsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/search2/SearchResultsAdapter;->displaySearchResults()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mSearchFeatureProvider:Lcom/android/settings/search2/SearchFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/android/settings/search2/SearchFeatureProvider;->showFeedbackButton(Lcom/android/settings/search2/SearchFragment;Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mResultsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/search2/SearchResult;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/search2/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/search2/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iput v5, p0, Lcom/android/settings/search2/SearchFragment;->mResultClickCount:I

    iput-boolean v5, p0, Lcom/android/settings/search2/SearchFragment;->mNeverEnteredQuery:Z

    iput-object p1, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/search2/SearchFragment;->mSearchFeatureProvider:Lcom/android/settings/search2/SearchFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/search2/SearchFeatureProvider;->isIndexingComplete(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    return v4

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iput-boolean v4, p0, Lcom/android/settings/search2/SearchFragment;->mShowingSavedQuery:Z

    iget-object v2, p0, Lcom/android/settings/search2/SearchFragment;->mSavedQueryController:Lcom/android/settings/search2/SavedQueryController;

    invoke-virtual {v2}, Lcom/android/settings/search2/SavedQueryController;->loadSavedQueries()V

    iget-object v2, p0, Lcom/android/settings/search2/SearchFragment;->mSearchFeatureProvider:Lcom/android/settings/search2/SearchFeatureProvider;

    invoke-interface {v2}, Lcom/android/settings/search2/SearchFeatureProvider;->hideFeedbackButton()V

    :goto_0
    return v4

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/search2/SearchFragment;->restartLoaders()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search2/SearchFragment;->mSavedQueryController:Lcom/android/settings/search2/SavedQueryController;

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/SavedQueryController;->saveQuery(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/search2/SearchFragment;->hideKeyboard()V

    const/4 v0, 0x1

    return v0
.end method

.method public onRemoveSavedQueryClicked(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search2/SearchFragment;->mSavedQueryController:Lcom/android/settings/search2/SavedQueryController;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/SavedQueryController;->removeQuery(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/search2/SearchFragment;->requery()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "state_query"

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "state_never_entered_query"

    iget-boolean v1, p0, Lcom/android/settings/search2/SearchFragment;->mNeverEnteredQuery:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "state_showing_saved_query"

    iget-boolean v1, p0, Lcom/android/settings/search2/SearchFragment;->mShowingSavedQuery:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "state_result_click_count"

    iget v1, p0, Lcom/android/settings/search2/SearchFragment;->mResultClickCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSavedQueryClicked(Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v5, [Landroid/util/Pair;

    const/16 v4, 0x371

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v0, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/search2/SearchFragment;->onQueryTextChange(Ljava/lang/String;)Z

    return-void
.end method

.method public onSearchResultClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search2/SearchFragment;->mSavedQueryController:Lcom/android/settings/search2/SavedQueryController;

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/SavedQueryController;->saveQuery(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/search2/SearchFragment;->mResultClickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/search2/SearchFragment;->mResultClickCount:I

    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    const-string/jumbo v2, "settings_search_result_click_count"

    iget v3, p0, Lcom/android/settings/search2/SearchFragment;->mResultClickCount:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/android/settings/search2/SearchFragment;->mNeverEnteredQuery:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/search2/SearchFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x2fa

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_0
    return-void
.end method
