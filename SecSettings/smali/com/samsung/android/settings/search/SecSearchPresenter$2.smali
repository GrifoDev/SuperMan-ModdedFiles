.class Lcom/samsung/android/settings/search/SecSearchPresenter$2;
.super Ljava/lang/Object;
.source "SecSearchPresenter.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/SecSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/search/SecSearchPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$2;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$2;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v2, v2, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SearchSettings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SearchResult"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$2;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v2, v2, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$2;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v2, v2, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$2;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v2}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;

    move-result-object v2

    invoke-interface {v2, v0, v4}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->setSearchText(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$2;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v2, v2, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$2;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v2, v2, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SearchSetting"

    const-string/jumbo v4, "exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$2;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v2, v2, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Search"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$2;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v2, v2, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$2;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v2, v2, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SearchSetting"

    const-string/jumbo v4, "exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$2;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v2, v2, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Search"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$2;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    iget-object v2, v2, Lcom/samsung/android/settings/search/SecSearchPresenter;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method
