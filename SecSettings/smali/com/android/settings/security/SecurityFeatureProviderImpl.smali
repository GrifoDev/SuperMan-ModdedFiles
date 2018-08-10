.class public Lcom/android/settings/security/SecurityFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SecurityFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/security/SecurityFeatureProvider;


# static fields
.field static final DEFAULT_ICON:Landroid/graphics/drawable/Drawable; = null
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_SUMMARY:Ljava/lang/String; = " "
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static sIconCache:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static sSummaryCache:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sIconCache:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sSummaryCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initPreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 13
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v9

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_5

    invoke-virtual {p2, v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v8

    iget-object v10, v8, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v8, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-nez v10, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    iget-object v10, v8, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v10, v8, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v11, "com.android.settings.icon_uri"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->DEFAULT_ICON:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    sget-object v10, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sIconCache:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sIconCache:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v10, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    iget-object v10, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_3
    :goto_3
    invoke-virtual {v5, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    const v11, 0x7f120b09

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v8, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v11, "com.android.settings.summary_uri"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, " "

    if-eqz v7, :cond_4

    sget-object v10, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sSummaryCache:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sSummaryCache:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_4
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    return-void

    :catch_0
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public getTrustAgentManager()Lcom/android/settings/trustagent/TrustAgentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/trustagent/TrustAgentManagerImpl;

    invoke-direct {v0}, Lcom/android/settings/trustagent/TrustAgentManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

    return-object v0
.end method

.method public updatePreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/android/settings/security/SecurityFeatureProviderImpl;->initPreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/settings/security/SecurityFeatureProviderImpl$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/settings/security/SecurityFeatureProviderImpl$1;-><init>(Lcom/android/settings/security/SecurityFeatureProviderImpl;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method updatePreferencesToRunOnWorkerThread(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 15
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v11

    :goto_0
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v11, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v10

    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-nez v12, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v13, "com.android.settings.icon_uri"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v13, "com.android.settings.summary_uri"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v6, 0x0

    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v12, :cond_3

    iget-object v4, v10, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    :cond_3
    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v6, v3, v7}, Lcom/android/settingslib/drawer/TileUtils;->getIconFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v12, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sIconCache:Ljava/util/Map;

    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v13, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;

    move-object/from16 v0, p1

    invoke-direct {v13, p0, v5, v0, v2}, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;-><init>(Lcom/android/settings/security/SecurityFeatureProviderImpl;Landroid/support/v7/preference/Preference;Landroid/content/Context;Landroid/util/Pair;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "com.android.settings.summary"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v7, v12}, Lcom/android/settingslib/drawer/TileUtils;->getTextFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v12, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sSummaryCache:Ljava/util/Map;

    invoke-interface {v12, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v13, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;

    move-object/from16 v0, p1

    invoke-direct {v13, p0, v5, v0, v8}, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;-><init>(Lcom/android/settings/security/SecurityFeatureProviderImpl;Landroid/support/v7/preference/Preference;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    return-void
.end method
