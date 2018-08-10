.class public Lcom/samsung/android/settings/search/SecSearchPresenter;
.super Ljava/lang/Object;
.source "SecSearchPresenter.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecSearchInferface$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/search/SecSearchPresenter$1;,
        Lcom/samsung/android/settings/search/SecSearchPresenter$2;,
        Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;,
        Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mEnteredSearchTextLog:Ljava/lang/String;

.field private mEnteredSearchTextState:I

.field private mHistoryAdapter:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

.field private mHistoryTask:Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;

.field private mResultsAdapter:Lcom/samsung/android/settings/search/SearchResultsAdapter;

.field private mScrollListner:Landroid/widget/AbsListView$OnScrollListener;

.field private mSearchTask:Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;

.field private mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SearchHistoryAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mHistoryAdapter:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SearchResultsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mResultsAdapter:Lcom/samsung/android/settings/search/SearchResultsAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/search/SecSearchInferface$View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/search/SecSearchPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/search/SecSearchPresenter$1;-><init>(Lcom/samsung/android/settings/search/SecSearchPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mScrollListner:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Lcom/samsung/android/settings/search/SecSearchPresenter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/search/SecSearchPresenter$2;-><init>(Lcom/samsung/android/settings/search/SecSearchPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iput-object p2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/search/SearchResultsAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/search/SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mResultsAdapter:Lcom/samsung/android/settings/search/SearchResultsAdapter;

    new-instance v0, Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/search/SecSearchPresenter$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/search/SecSearchPresenter$3;-><init>(Lcom/samsung/android/settings/search/SecSearchPresenter;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/search/SearchHistoryAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mHistoryAdapter:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    return-void
.end method

.method private updateEnteredSearchTextLog(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    const-string/jumbo v2, ":"

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v4, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextState:I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_5

    iget v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextState:I

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_2

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_3

    const-string/jumbo v2, ":"

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iput v4, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextState:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-eq v2, v3, :cond_7

    :cond_6
    return-void

    :cond_7
    iget v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextState:I

    if-ne v2, v5, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    iput v5, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextState:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    iget v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextState:I

    if-ne v2, v6, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    iput v6, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextState:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    goto/16 :goto_1
.end method


# virtual methods
.method public bindEmService()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Search"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public clearEmService()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Search"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->initView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mHistoryAdapter:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->setHistoryListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mResultsAdapter:Lcom/samsung/android/settings/search/SearchResultsAdapter;

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->setSearchResultsListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mScrollListner:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->setOnHistoryListScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mScrollListner:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->setOnSearchResultsListScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    new-instance v1, Lcom/samsung/android/settings/search/SecSearchPresenter$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/search/SecSearchPresenter$4;-><init>(Lcom/samsung/android/settings/search/SecSearchPresenter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->setOnSearchResultsListItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public insertSearchTextLog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0449

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextLog:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEnteredSearchTextState:I

    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->stopSearch()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->stopUpdateHistory()V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->updateEnteredSearchTextLog(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    invoke-interface {v0, v2}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->hideLoadingView(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    invoke-interface {v0}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->hideSearchResultLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->updateHistory()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    invoke-interface {v0}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->hideHistoryLayout()V

    new-instance v0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;-><init>(Lcom/samsung/android/settings/search/SecSearchPresenter;Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;)V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mSearchTask:Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mSearchTask:Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setSearchResult(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/search/SearchResultItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mResultsAdapter:Lcom/samsung/android/settings/search/SearchResultsAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mResultsAdapter:Lcom/samsung/android/settings/search/SearchResultsAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    invoke-interface {v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->getSearchText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->setQuery(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mResultsAdapter:Lcom/samsung/android/settings/search/SearchResultsAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->setSearchResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method public stopSearch()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mSearchTask:Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mSearchTask:Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mSearchTask:Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;

    :cond_0
    return-void
.end method

.method public stopUpdateHistory()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mHistoryTask:Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mHistoryTask:Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public updateHistory()V
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;-><init>(Lcom/samsung/android/settings/search/SecSearchPresenter;Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;)V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mHistoryTask:Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter;->mHistoryTask:Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
