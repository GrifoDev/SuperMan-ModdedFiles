.class public Lcom/samsung/android/settings/search/SecSearchResultsSummary;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "SecSearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;,
        Lcom/samsung/android/settings/search/SecSearchResultsSummary$2;,
        Lcom/samsung/android/settings/search/SecSearchResultsSummary$3;
    }
.end annotation


# static fields
.field public static sIsRunningSearchFragment:Z


# instance fields
.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDexModeChangeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private mPresenter:Lcom/samsung/android/settings/search/SecSearchPresenter;

.field private mSearchReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->sIsRunningSearchFragment:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;-><init>(Lcom/samsung/android/settings/search/SecSearchResultsSummary;)V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    new-instance v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/search/SecSearchResultsSummary$2;-><init>(Lcom/samsung/android/settings/search/SecSearchResultsSummary;)V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mSearchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/search/SecSearchResultsSummary$3;-><init>(Lcom/samsung/android/settings/search/SecSearchResultsSummary;)V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mDexModeChangeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x22

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "desktopmode"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mDexModeChangeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->checkSupportVolteSettings(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/Utils;->checkVzwVoLTEFeatureEnabled(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/search/model/SecIndexModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->setCategories(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->startSearchIndexing(Landroid/app/Activity;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mSearchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.sec.android.query_by_voice"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/search/SecSearchPresenter;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/search/SecSearchInferface$View;)V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mPresenter:Lcom/samsung/android/settings/search/SecSearchPresenter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f0d02a5

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mPresenter:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->initView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mPresenter:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->updateHistory()V

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDetach()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mSearchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mPresenter:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->insertSearchTextLog()V

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mDexModeChangeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    invoke-interface {v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->hideIme()V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->sIsRunningSearchFragment:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->registerAssistant()V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    invoke-interface {v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->isSearchViewFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mPresenter:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->clearEmService()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mPresenter:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->search(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    invoke-interface {v0}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->hideIme()V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mPresenter:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->search(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->sIsRunningSearchFragment:Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    invoke-interface {v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->requestFocusOnSearchView()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->unregisterAssistant()V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    invoke-interface {v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->isSearchViewFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mPresenter:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->bindEmService()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mPresenter:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->stopUpdateHistory()V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mPresenter:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->stopSearch()V

    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->mView:Lcom/samsung/android/settings/search/SecSearchInferface$View;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->setSearchView(Landroid/widget/SearchView;Ljava/lang/String;)V

    return-void
.end method
