.class public Landroid/support/v17/leanback/app/SearchSupportFragment;
.super Landroid/support/v4/app/Fragment;
.source "SearchSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/SearchSupportFragment$1;,
        Landroid/support/v17/leanback/app/SearchSupportFragment$2;,
        Landroid/support/v17/leanback/app/SearchSupportFragment$3;,
        Landroid/support/v17/leanback/app/SearchSupportFragment$4;,
        Landroid/support/v17/leanback/app/SearchSupportFragment$5;,
        Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;,
        Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;
    }
.end annotation


# static fields
.field private static final ARG_PREFIX:Ljava/lang/String;

.field private static final ARG_QUERY:Ljava/lang/String;

.field private static final ARG_TITLE:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;


# instance fields
.field final mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

.field mAutoStartRecognition:Z

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

.field final mHandler:Landroid/os/Handler;

.field private mIsPaused:Z

.field private mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

.field mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field mPendingQuery:Ljava/lang/String;

.field private mPendingStartRecognitionWhenPaused:Z

.field private mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

.field mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

.field mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field final mResultsChangedCallback:Ljava/lang/Runnable;

.field mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

.field mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

.field private final mSetSearchResultProvider:Ljava/lang/Runnable;

.field private mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field final mStartRecognitionRunnable:Ljava/lang/Runnable;

.field mStatus:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->TAG:Ljava/lang/String;

    const-class v0, Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_PREFIX:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_QUERY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultsChangedCallback:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    return-void
.end method

.method private applyExternalQuery()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchQuery(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;->mSubmit:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->submitQuery(Ljava/lang/String;)V

    :cond_2
    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    return-void
.end method

.method private focusOnResults()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    :cond_2
    return-void
.end method

.method private onSetSearchResultProvider()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private readArguments(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setSearchQuery(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setTitle(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private releaseRecognizer()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    iput-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    :cond_0
    return-void
.end method

.method private setSearchQuery(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchQuery(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method executePendingQuery()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->retrieveResults(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    sget v2, Landroid/support/v17/leanback/R$layout;->lb_search_fragment:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_frame:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/SearchBar;

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    new-instance v3, Landroid/support/v17/leanback/app/SearchSupportFragment$6;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$6;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchBarListener(Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognitionCallback(Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchBar;->setPermissionListener(Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->applyExternalQuery()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->readArguments(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setTitle(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-direct {v2}, Landroid/support/v17/leanback/app/RowsSupportFragment;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    new-instance v3, Landroid/support/v17/leanback/app/SearchSupportFragment$7;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setExpand(Z)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->onSetSearchResultProvider()V

    :cond_2
    return-object v0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/app/RowsSupportFragment;

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->releaseAdapter()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->releaseRecognizer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mIsPaused:Z

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    aget-object v0, p2, v2

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->startRecognition()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mIsPaused:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingStartRecognitionWhenPaused:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingStartRecognitionWhenPaused:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_search_browse_rows_align_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusable(Z)V

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method queryComplete()V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->focusOnResults()V

    return-void
.end method

.method releaseAdapter()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    :cond_0
    return-void
.end method

.method retrieveResults(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    :cond_0
    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startRecognition()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mIsPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingStartRecognitionWhenPaused:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    goto :goto_0
.end method

.method submitQuery(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->queryComplete()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;->onQueryTextSubmit(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method updateFocus()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->focusOnResults()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->requestFocus()Z

    goto :goto_0
.end method

.method updateSearchBarNextFocusId()V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SearchBar;->setNextFocusDownId(I)V

    return-void

    :cond_3
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getId()I

    move-result v0

    goto :goto_0
.end method

.method updateSearchBarVisibility()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getSelectedPosition()I

    move-result v0

    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-lez v0, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v3, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x8

    goto :goto_1
.end method
