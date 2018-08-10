.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "DashboardSummary.java"

# interfaces
.implements Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;
    }
.end annotation


# static fields
.field public static final SEC_INITIAL_ITEMS:[Ljava/lang/String;


# instance fields
.field private isOnCategoriesChangedCalled:Z

.field private mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

.field private mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialTileId:Ljava/lang/String;

.field private mIsEnableCategories:Z

.field private mIsRunningSuggestionLoader:Z

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mSelectedTileId:Ljava/lang/String;

.field private mSuggesiton:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

.field private mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

.field private mSuggestionsChecks:Lcom/android/settings/dashboard/suggestions/SuggestionsChecks;

.field private mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/conditional/FocusRecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardFeatureProvider;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/dashboard/DashboardSummary;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsEnableCategories:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/dashboard/DashboardSummary;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsRunningSuggestionLoader:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/dashboard/DashboardSummary;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggesiton:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.settings.ConnectionsSettings"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.SoundSettings"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.BlockNotificationList"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.display.SecDisplaySettings"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.Usefulfeature"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.applications.ManageApplications"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.LockscreenMenuSettings"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.CloudAccountSettings"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettings"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.GeneralDeviceSettings"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.DeviceInfoSettings"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/dashboard/DashboardSummary;->SEC_INITIAL_ITEMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mInitialTileId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSelectedTileId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsEnableCategories:Z

    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsRunningSuggestionLoader:Z

    return-void
.end method

.method private getTileId(I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->getItemCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    return-object v4

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->getItemViewType(I)I

    move-result v1

    const v2, 0x7f0d00af

    if-eq v1, v2, :cond_2

    return-object v4

    :cond_2
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v2, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/dashboard/DashboardAdapter;->getItem(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.android.settings.tileid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.android.settings.tileid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    return-object v4
.end method

.method private initDashBoardCategory()V
    .locals 3

    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardSummary$2;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dashboard/DashboardSummary$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public getSelectedTileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->getSelectedTilePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->getTileId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestion()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;"
        }
    .end annotation

    const-string/jumbo v7, "getSuggestion()"

    invoke-static {v7}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggesiton:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggesiton:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggesiton:Ljava/util/ArrayList;

    return-object v7

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    invoke-interface {v7, v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->isSmartSuggestionEnabled(Landroid/content/Context;)Z

    move-result v2

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    invoke-virtual {v7, v2}, Lcom/android/settingslib/SuggestionParser;->semGetSuggestions(Z)Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "suggestions.size() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    const-string/jumbo v8, "DashboardSummary"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "suggestions.get(i).size() : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsChecks:Lcom/android/settings/dashboard/suggestions/SuggestionsChecks;

    invoke-virtual {v7, v5}, Lcom/android/settings/dashboard/suggestions/SuggestionsChecks;->isSuggestionComplete(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    add-int/lit8 v4, v3, -0x1

    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v3, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-object v6
.end method

.method public initSuggetion()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/dashboard/DashboardSummary$3;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/DashboardSummary$3;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCategoriesChanged()V
    .locals 1

    const-string/jumbo v0, "onCategoriesChanged"

    invoke-static {v0}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->isOnCategoriesChangedCalled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->isOnCategoriesChangedCalled:Z

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string/jumbo v1, "DashboardSummary onCreate"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "getSuggestionFeatureProvider"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v1, "init SuggestionParser"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    new-instance v1, Lcom/android/settingslib/SuggestionParser;

    const-string/jumbo v4, "suggestions"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const v5, 0x7f150117

    invoke-direct {v1, v0, v4, v5}, Lcom/android/settingslib/SuggestionParser;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v1, "init SuggestionsChecks"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/dashboard/suggestions/SuggestionsChecks;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/dashboard/suggestions/SuggestionsChecks;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsChecks:Lcom/android/settings/dashboard/suggestions/SuggestionsChecks;

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v1, "init category asyncTask"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->initDashBoardCategory()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v1, "init suggestion thread"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->initSuggetion()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v1, "DashboardSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v4, "topLevelTileId"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mInitialTileId:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string/jumbo v1, "DashboardSummary onCreateView"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    const v1, 0x7f0d00a8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->remCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    const-string/jumbo v2, "DashboardSummary onResume"

    invoke-static {v2}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v2, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->addCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsEnableCategories:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    :cond_1
    const-string/jumbo v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResume took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "selected_tile_id"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->getSelectedTilePosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->getTileId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "scroll_position"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v1, "DashboardSummary onViewCreated"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v1, 0x7f0a01fa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    new-instance v4, Lcom/android/settings/dashboard/DashboardSummary$1;

    invoke-direct {v4, p0}, Lcom/android/settings/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    if-eqz p2, :cond_0

    const-string/jumbo v1, "scroll_position"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "selected_tile_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSelectedTileId:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, v5}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setHasFixedSize(Z)V

    const-string/jumbo v1, "DashboardSummary"

    const-string/jumbo v4, "adapter created"

    invoke-static {v1, v4}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, p2, v6}, Lcom/android/settings/dashboard/DashboardAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/DashboardAdapter;->setSuggestionParser(Lcom/android/settingslib/SuggestionParser;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    new-instance v4, Lcom/android/settings/dashboard/DashboardItemAnimator;

    invoke-direct {v4}, Lcom/android/settings/dashboard/DashboardItemAnimator;-><init>()V

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    const-string/jumbo v1, "DashboardSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onViewCreated took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsEnableCategories:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "onViewCreated setCategory"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v4}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Ljava/util/List;)V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    :cond_1
    const-string/jumbo v1, "rebuildUI"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void
.end method

.method rebuildUI()V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v1, "rebuildUI Inner"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    const-string/jumbo v1, "DashboardSummary"

    const-string/jumbo v2, "rebuildUI()"

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsEnableCategories:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsRunningSuggestionLoader:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "DashboardSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rebuildUI mIsEnableCategories : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsEnableCategories:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mIsRunningSuggestionLoader : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsRunningSuggestionLoader:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->getSelectedTilePosition()I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->getSelectedTilePosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->getTileId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSelectedTileId:Ljava/lang/String;

    :cond_2
    const-string/jumbo v1, "rebuildUI SuggestionLoader"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsRunningSuggestionLoader:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggesiton:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggesiton:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggesiton:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->updateCategoryAndSuggestion(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->refreshSummaryLoader()V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggesiton:Ljava/util/ArrayList;

    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSelectedTileId:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSelectedTileId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->setSelectedTile(Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void

    :cond_5
    new-instance v1, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mInitialTileId:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mInitialTileId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->setSelectedTile(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public refreshSummaryLoader()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "init SummaryLoader"

    invoke-static {v0}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    :cond_1
    new-instance v0, Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummaryConsumer(Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void
.end method

.method public setSelectedTile(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->getItemViewType(I)I

    move-result v1

    const v2, 0x7f0d00af

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->getTileId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSelectedTileId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->setSelectedTilePosition(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method updateCategoryAndSuggestion(Ljava/util/ArrayList;)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v2, "updateCategoryAndSuggestion"

    invoke-static {v2}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategoriesAndSuggestions(Ljava/util/List;Ljava/util/ArrayList;)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Ljava/util/List;)V

    goto :goto_0
.end method
