.class Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;
.super Landroid/os/AsyncTask;
.source "SecSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/SecSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/samsung/android/settings/search/SearchResultItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/search/SecSearchPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/search/SecSearchPresenter;Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;-><init>(Lcom/samsung/android/settings/search/SecSearchPresenter;)V

    return-void
.end method

.method private handleSearchResultWithBixby()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v1, v1, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getPendingState()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Search"

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get2(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SearchResultsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v1, v1, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SearchSetting"

    const-string/jumbo v3, "match"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v1, v1, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v1, v1, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v1, v1, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v1, v1, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v1, v1, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SearchSetting"

    const-string/jumbo v3, "match"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v1, v1, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v1, v1, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/search/model/SecSettingSearch;->getSearchResultList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/search/SearchResultItem;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->hideLoadingView(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xe2

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get2(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SearchResultsAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;

    move-result-object v2

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->getSearchText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_1
    invoke-interface {v2, v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->showSearchResultLayout(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->setSearchResult(Ljava/util/ArrayList;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->handleSearchResultWithBixby()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchResultTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->showLoadingViewIfPossible()V

    return-void
.end method
