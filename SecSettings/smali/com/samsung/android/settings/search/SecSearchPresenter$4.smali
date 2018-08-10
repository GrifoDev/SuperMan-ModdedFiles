.class Lcom/samsung/android/settings/search/SecSearchPresenter$4;
.super Ljava/lang/Object;
.source "SecSearchPresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/search/SecSearchPresenter;->initView(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private launchBySearch(Lcom/samsung/android/settings/search/SearchResultItem;)V
    .locals 10

    iget-object v1, p1, Lcom/samsung/android/settings/search/SearchResultItem;->className:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/settings/search/SearchResultItem;->screenTitle:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/settings/search/SearchResultItem;->action:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/settings/search/SearchResultItem;->key:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/settings/search/SearchResultItem;->targetPkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/settings/search/SearchResultItem;->targetCls:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v0

    iget-object v7, p1, Lcom/samsung/android/settings/search/SearchResultItem;->extras:Landroid/os/Bundle;

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->launchBySearch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v7, "com.android.settings"

    const-string/jumbo v9, "SEAR"

    invoke-static {v0, v7, v9}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->insertSearchTextLog()V

    const-string/jumbo v8, ""

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem;->titleEn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/settings/search/SearchResultItem;->titleEn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v8, p1, Lcom/samsung/android/settings/search/SearchResultItem;->titleEn:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v0

    iget-object v7, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v7}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b0448

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v0, v7, v8}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/search/model/SecIndexModel;

    move-result-object v0

    iget-object v7, p1, Lcom/samsung/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    iget-object v9, p1, Lcom/samsung/android/settings/search/SearchResultItem;->titleEn:Ljava/lang/String;

    invoke-virtual {v0, v7, v9}, Lcom/samsung/android/settings/search/model/SecIndexModel;->addSavedQuery(Ljava/lang/String;Ljava/lang/String;)J

    return-void

    :cond_0
    iget-object v8, p1, Lcom/samsung/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-ltz p3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v4}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get2(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SearchResultsAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->getItemId(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v4}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->clearFocusOnSearchView()V

    iget-object v4, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v4}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get2(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SearchResultsAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcom/samsung/android/settings/search/SearchResultItem;

    if-nez v4, :cond_2

    return-void

    :cond_2
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/settings/search/SearchResultItem;

    iget v4, v2, Lcom/samsung/android/settings/search/SearchResultItem;->viewType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const v4, 0x7f0a0886

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iget-object v1, v2, Lcom/samsung/android/settings/search/SearchResultItem;->payload:Lcom/android/settings/search2/ResultPayload;

    check-cast v1, Lcom/android/settings/search2/InlineSwitchPayload;

    iget-object v4, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v4}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/search2/InlineSwitchPayload;->getSwitchValue(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v4}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/SettingsActivity;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v4}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->needToRevertToInitialFragment()V

    :cond_4
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/search/SecSearchPresenter$4;->launchBySearch(Lcom/samsung/android/settings/search/SearchResultItem;)V

    return-void
.end method
