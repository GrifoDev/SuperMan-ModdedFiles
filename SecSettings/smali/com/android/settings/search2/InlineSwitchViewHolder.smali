.class public Lcom/android/settings/search2/InlineSwitchViewHolder;
.super Lcom/android/settings/search2/SearchViewHolder;
.source "InlineSwitchViewHolder.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field public final switchView:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/search2/SearchViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/settings/search2/InlineSwitchViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0886

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/search2/InlineSwitchViewHolder;->switchView:Landroid/widget/Switch;

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_settings_search2_InlineSwitchViewHolder_1642(Lcom/android/settings/search2/InlineSwitchPayload;Lcom/android/settings/search2/SearchFragment;Landroid/widget/CompoundButton;Z)V
    .locals 7

    const/16 v3, 0x36f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settings/search2/InlineSwitchPayload;->settingsUri:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    const/16 v3, 0x370

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz p4, :cond_0

    const-string/jumbo v3, "checked"

    :goto_0
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/16 v3, 0x34a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/search2/InlineSwitchViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/search2/InlineSwitchViewHolder;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/search2/InlineSwitchViewHolder;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/util/Pair;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    const/16 v6, 0x36e

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p2}, Lcom/android/settings/search2/SearchFragment;->onSearchResultClicked()V

    iget-object v3, p0, Lcom/android/settings/search2/InlineSwitchViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3, p4}, Lcom/android/settings/search2/InlineSwitchPayload;->setSwitchValue(Landroid/content/Context;Z)V

    return-void

    :cond_0
    const-string/jumbo v3, "not-checked"

    goto :goto_0
.end method

.method public onBind(Lcom/android/settings/search2/SearchFragment;Lcom/android/settings/search2/SearchResult;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/search2/SearchViewHolder;->onBind(Lcom/android/settings/search2/SearchFragment;Lcom/android/settings/search2/SearchResult;)V

    iget-object v1, p0, Lcom/android/settings/search2/InlineSwitchViewHolder;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/android/settings/search2/SearchResult;->payload:Lcom/android/settings/search2/ResultPayload;

    check-cast v0, Lcom/android/settings/search2/InlineSwitchPayload;

    iget-object v1, p0, Lcom/android/settings/search2/InlineSwitchViewHolder;->switchView:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/search2/InlineSwitchViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/settings/search2/InlineSwitchPayload;->getSwitchValue(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/search2/InlineSwitchViewHolder;->switchView:Landroid/widget/Switch;

    new-instance v2, Lcom/android/settings/search2/-$Lambda$4dSYu1oUzywOEH2IlPt1zFrPXyg;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/search2/-$Lambda$4dSYu1oUzywOEH2IlPt1zFrPXyg;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
