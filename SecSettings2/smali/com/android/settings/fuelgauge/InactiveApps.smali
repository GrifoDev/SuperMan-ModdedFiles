.class public Lcom/android/settings/fuelgauge/InactiveApps;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "InactiveApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mUsageStats:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private init()V
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-class v10, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStatsManager;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/settings/fuelgauge/InactiveApps;->updateSummary(Landroid/preference/Preference;)V

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSummary(Landroid/preference/Preference;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManager;->isAppInactive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b0119

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    return-void

    :cond_0
    const v1, 0x7f0b011a

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xee

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/InactiveApps;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v1, v0}, Landroid/app/usage/UsageStatsManager;->isAppInactive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v0, v1}, Landroid/app/usage/UsageStatsManager;->setAppInactive(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/InactiveApps;->updateSummary(Landroid/preference/Preference;)V

    return v2

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->init()V

    return-void
.end method
