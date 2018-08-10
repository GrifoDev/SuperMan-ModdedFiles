.class public Lcom/android/settings/search2/IntentSearchViewHolder;
.super Lcom/android/settings/search2/SearchViewHolder;
.source "IntentSearchViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search2/SearchViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_settings_search2_IntentSearchViewHolder_1368(Lcom/android/settings/search2/SearchFragment;Lcom/android/settings/search2/SearchResult;Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/settings/search2/SearchFragment;->onSearchResultClicked()V

    iget-object v4, p2, Lcom/android/settings/search2/SearchResult;->payload:Lcom/android/settings/search2/ResultPayload;

    check-cast v4, Lcom/android/settings/search2/IntentPayload;

    iget-object v1, v4, Lcom/android/settings/search2/IntentPayload;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v4, 0x34a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/search2/IntentSearchViewHolder;->getAdapterPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string/jumbo v4, ":settings:show_fragment"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/settings/search2/IntentSearchViewHolder;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/util/Pair;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/16 v7, 0x2fb

    invoke-virtual {v4, v5, v7, v3, v6}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    invoke-virtual {p1, v1}, Lcom/android/settings/search2/SearchFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBind(Lcom/android/settings/search2/SearchFragment;Lcom/android/settings/search2/SearchResult;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/search2/SearchViewHolder;->onBind(Lcom/android/settings/search2/SearchFragment;Lcom/android/settings/search2/SearchResult;)V

    iget-object v0, p0, Lcom/android/settings/search2/IntentSearchViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/search2/-$Lambda$N4jzUF57BncNb8XTYrMZd_K4_Pw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/search2/-$Lambda$N4jzUF57BncNb8XTYrMZd_K4_Pw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
