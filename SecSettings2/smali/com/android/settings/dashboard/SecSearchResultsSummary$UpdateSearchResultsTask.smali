.class Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;
.super Landroid/os/AsyncTask;
.source "SecSearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSearchResultsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private realCount:I

.field final synthetic this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->realCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x4

    new-array v0, v1, [Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/search/SecIndex;->searchTile(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/search/SecIndex;->searchSubMenu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/search/SecIndex;->searchTileByKeyword(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/search/SecIndex;->searchSubMenuByKeyword(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    aget-object v1, v0, v3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    aget-object v2, v0, v4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->realCount:I

    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap8(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget v4, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->realCount:I

    invoke-static {v2, v4}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap2(Lcom/android/settings/dashboard/SecSearchResultsSummary;I)V

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v2, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap3(Lcom/android/settings/dashboard/SecSearchResultsSummary;Landroid/database/Cursor;)V

    iget-object v4, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap4(Lcom/android/settings/dashboard/SecSearchResultsSummary;Z)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v2, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap1(Lcom/android/settings/dashboard/SecSearchResultsSummary;Z)V

    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getPendingState()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "Search"

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get3(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "SearchSetting"

    const-string/jumbo v5, "match"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :goto_3
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "SearchSetting"

    const-string/jumbo v5, "match"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap7(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V

    return-void
.end method
