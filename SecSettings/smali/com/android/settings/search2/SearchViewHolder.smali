.class public abstract Lcom/android/settings/search2/SearchViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchViewHolder.java"


# instance fields
.field public final breadcrumbView:Landroid/widget/TextView;

.field public final iconView:Landroid/widget/ImageView;

.field protected final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private final mPlaceholderSummary:Ljava/lang/String;

.field public final summaryView:Landroid/widget/TextView;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search2/SearchViewHolder;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/search2/SearchViewHolder;->titleView:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/search2/SearchViewHolder;->summaryView:Landroid/widget/TextView;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/search2/SearchViewHolder;->iconView:Landroid/widget/ImageView;

    const v0, 0x7f0a0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/search2/SearchViewHolder;->breadcrumbView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121acd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search2/SearchViewHolder;->mPlaceholderSummary:Ljava/lang/String;

    return-void
.end method

.method private bindBreadcrumbView(Lcom/android/settings/search2/SearchResult;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p1, Lcom/android/settings/search2/SearchResult;->breadcrumbs:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/settings/search2/SearchResult;->breadcrumbs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/settings/search2/SearchViewHolder;->breadcrumbView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/search2/SearchViewHolder;->breadcrumbView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p1, Lcom/android/settings/search2/SearchResult;->breadcrumbs:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/settings/search2/SearchResult;->breadcrumbs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    iget-object v5, p1, Lcom/android/settings/search2/SearchResult;->breadcrumbs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const v5, 0x7f1217dc

    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/search2/SearchViewHolder;->breadcrumbView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/search2/SearchViewHolder;->breadcrumbView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/android/settings/search2/SearchFragment;Lcom/android/settings/search2/SearchResult;)V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/search2/SearchViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/search2/SearchResult;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Lcom/android/settings/search2/SearchResult;->summary:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p2, Lcom/android/settings/search2/SearchResult;->summary:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/search2/SearchViewHolder;->mPlaceholderSummary:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/search2/SearchViewHolder;->summaryView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    instance-of v2, p2, Lcom/android/settings/search2/AppSearchResult;

    if-eqz v2, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/android/settings/search2/AppSearchResult;

    invoke-virtual {p1}, Lcom/android/settings/search2/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search2/SearchViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings/search2/AppSearchResult;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-direct {p0, p2}, Lcom/android/settings/search2/SearchViewHolder;->bindBreadcrumbView(Lcom/android/settings/search2/SearchResult;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/search2/SearchViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/search2/SearchResult;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/search2/SearchViewHolder;->summaryView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/search2/SearchViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/android/settings/search2/SearchResult;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
