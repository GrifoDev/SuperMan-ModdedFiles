.class public Lcom/android/launcher2/HomeScreenSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "HomeScreenSettingsFragment.java"


# static fields
.field public static final KEY_BADGE_MANAGER:Ljava/lang/String; = "badge_manager"

.field public static final KEY_HOMESCREEN_GRID:Ljava/lang/String; = "home_screen_grid"

.field public static final KEY_HOMESCREEN_MODE:Ljava/lang/String; = "home_screen_mode"

.field private static final SCREEN_GRID_SUMMARY:Ljava/lang/String; = "screen_grid_summary"

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mBadgeManage:Landroid/preference/Preference;

.field private mHomeScreenGrid:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HomeScreenSettingsFragment"

    sput-object v0, Lcom/android/launcher2/HomeScreenSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private setBadgeManager()V
    .locals 2

    const-string v0, "badge_manager"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeScreenSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenSettingsFragment;->mBadgeManage:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenSettingsFragment;->mBadgeManage:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenSettingsFragment;->mBadgeManage:Landroid/preference/Preference;

    new-instance v1, Lcom/android/launcher2/HomeScreenSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeScreenSettingsFragment$3;-><init>(Lcom/android/launcher2/HomeScreenSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private setHomeScreenGrid(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    new-array v3, v4, [I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    const/4 v4, 0x0

    aget v0, v3, v4

    aget v1, v3, v6

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const-string v4, "screen_grid_summary"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v4, "home_screen_grid"

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeScreenSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    new-instance v5, Lcom/android/launcher2/HomeScreenSettingsFragment$1;

    invoke-direct {v5, p0}, Lcom/android/launcher2/HomeScreenSettingsFragment$1;-><init>(Lcom/android/launcher2/HomeScreenSettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setHomeScreenMode()V
    .locals 2

    const-string v1, "home_screen_mode"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :goto_0
    new-instance v1, Lcom/android/launcher2/HomeScreenSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeScreenSettingsFragment$2;-><init>(Lcom/android/launcher2/HomeScreenSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v1, Lcom/android/launcher2/HomeScreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenSettingsFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeScreenSettingsFragment;->setHomeScreenGrid(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenSettingsFragment;->setHomeScreenMode()V

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenSettingsFragment;->setBadgeManager()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isSupportBadgeManage()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsFragment;->mBadgeManage:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    sget-object v0, Lcom/android/launcher2/HomeScreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    sget-object v0, Lcom/android/launcher2/HomeScreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    sget-object v0, Lcom/android/launcher2/HomeScreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    const-string v1, "screen_grid_summary"

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
