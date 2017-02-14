.class public Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;
.super Lcom/android/settings/InstrumentedFragment;
.source "DashboardEditFavoriteSummary.java"

# interfaces
.implements Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;
    }
.end annotation


# static fields
.field private static mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

.field private static mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

.field private static mDashboardEditFavoriteAdapter:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    return-void
.end method

.method public static UpdateSelectionMenu()V
    .locals 1

    sget-object v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->updateSelectionMenu()V

    :cond_0
    return-void
.end method

.method private rebuildUI()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "DashboardEditFavoriteSummary"

    const-string/jumbo v2, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteAdapter:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->setCategories(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public onCategoriesChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->rebuildUI()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const v2, 0x7f040098

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    new-instance v2, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteAdapter:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;

    const v2, 0x7f11021f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    sput-object v2, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    sget-object v2, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    sget-object v2, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    sget-object v3, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteAdapter:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v2, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;-><init>(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;)V

    sput-object v2, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mActionMode:Landroid/view/ActionMode;

    sget-object v2, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->updateSelectionMenu()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->rebuildUI()V

    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v2, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->addCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->remCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-void
.end method
