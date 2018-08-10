.class public Lcom/android/settings/accounts/UserAndAccountDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "UserAndAccountDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/UserAndAccountDashboardFragment$1;,
        Lcom/android/settings/accounts/UserAndAccountDashboardFragment$2;,
        Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;,
        Lcom/android/settings/accounts/UserAndAccountDashboardFragment$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# direct methods
.method static synthetic -get0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;Ljava/lang/Class;)Lcom/android/settings/core/PreferenceController;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->getPreferenceController(Ljava/lang/Class;)Lcom/android/settings/core/PreferenceController;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;-><init>(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method


# virtual methods
.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string/jumbo v2, "com.android.settings.ia.account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "UserAndAccountDashboard"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;

    invoke-direct {v5, p1}, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/accounts/AddUserWhenLockedPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/accounts/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    new-instance v3, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;

    invoke-direct {v3, p1, p0}, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    new-instance v5, Lcom/android/settings/accounts/AutoSyncPersonalDataPreferenceController;

    invoke-direct {v5, p1, p0}, Lcom/android/settings/accounts/AutoSyncPersonalDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/settings/accounts/AutoSyncWorkDataPreferenceController;

    invoke-direct {v5, p1, p0}, Lcom/android/settings/accounts/AutoSyncWorkDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "authorities"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-direct {v0, p1, p0, v2}, Lcom/android/settings/accounts/AccountPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15012b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Account"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Account"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
