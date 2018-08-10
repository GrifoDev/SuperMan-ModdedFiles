.class public Lcom/samsung/android/settings/ApplicationsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApplicationsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ApplicationsSettings$1;,
        Lcom/samsung/android/settings/ApplicationsSettings$AlphaComparator;,
        Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mAppPermission:Landroid/support/v7/preference/PreferenceScreen;

.field private static mIsLoggingEnabled:Z


# instance fields
.field private mAppLauncher:Landroid/support/v7/preference/PreferenceScreen;

.field private mAppManager:Landroid/support/v7/preference/PreferenceScreen;

.field private mAppsCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/ApplicationsSettings;->mIsLoggingEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/ApplicationsSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ApplicationsSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/ApplicationsSettings;->mIsLoggingEnabled:Z

    new-instance v0, Lcom/samsung/android/settings/ApplicationsSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/ApplicationsSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/ApplicationsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method buildApplicationSettingsList()V
    .locals 15

    invoke-virtual {p0}, Lcom/samsung/android/settings/ApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.android.intent.action.SEC_APPLICATION_SETTINGS"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "com.sec.android.intent.category.SEC_APPLICATION_SETTINGS"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, p0, Lcom/samsung/android/settings/ApplicationsSettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v7, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    new-instance v12, Lcom/samsung/android/settings/ApplicationsSettings$AlphaComparator;

    invoke-direct {v12, p0}, Lcom/samsung/android/settings/ApplicationsSettings$AlphaComparator;-><init>(Lcom/samsung/android/settings/ApplicationsSettings;)V

    invoke-static {v8, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_3

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v12, "ApplicationsSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "resolvePackageName : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_1

    const-string/jumbo v12, "com.sec.android.gallery3d"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const-string/jumbo v12, "ApplicationsSettings"

    const-string/jumbo v13, "skip gallery menu"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v12, p0, Lcom/samsung/android/settings/ApplicationsSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v12, p0, Lcom/samsung/android/settings/ApplicationsSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v12, v13}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v9

    :cond_2
    new-instance v11, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;

    invoke-direct {v11, p0, v2, v5, v9}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;-><init>(Lcom/samsung/android/settings/ApplicationsSettings;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "from_settings"

    const/4 v13, 0x1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v11, v0}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->setIntent(Landroid/content/Intent;)V

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ApplicationsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v12, "ApplicationsSettings"

    const-string/jumbo v13, "Problem dealing with activity "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15001f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ApplicationsSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "application_manager_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ApplicationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/ApplicationsSettings;->mAppManager:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "application_permission"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ApplicationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    sput-object v0, Lcom/samsung/android/settings/ApplicationsSettings;->mAppPermission:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "launch_application_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ApplicationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/ApplicationsSettings;->mAppLauncher:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ApplicationsSettings;->updatePref()V

    const-string/jumbo v0, "apps_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ApplicationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/ApplicationsSettings;->mAppsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/ApplicationsSettings;->mAppPermission:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/ApplicationsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/ApplicationsSettings;->mAppPermission:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/ApplicationsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ApplicationsSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EXTERNAL_APP_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/ApplicationsSettings;->buildApplicationSettingsList()V

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/ApplicationsSettings;->mIsLoggingEnabled:Z

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/ApplicationsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ApplicationsSettings;->mAppsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method public updatePref()V
    .locals 3

    const v2, 0x7f0d0151

    iget-object v0, p0, Lcom/samsung/android/settings/ApplicationsSettings;->mAppManager:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ApplicationsSettings;->mAppManager:Landroid/support/v7/preference/PreferenceScreen;

    const v1, 0x7f08068c

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setIcon(I)V

    sget-object v0, Lcom/samsung/android/settings/ApplicationsSettings;->mAppPermission:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setLayoutResource(I)V

    sget-object v0, Lcom/samsung/android/settings/ApplicationsSettings;->mAppPermission:Landroid/support/v7/preference/PreferenceScreen;

    const v1, 0x7f08068d

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setIcon(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ApplicationsSettings;->mAppLauncher:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ApplicationsSettings;->mAppLauncher:Landroid/support/v7/preference/PreferenceScreen;

    const v1, 0x7f08068e

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setIcon(I)V

    return-void
.end method
