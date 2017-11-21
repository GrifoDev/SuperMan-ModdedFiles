.class public Lcom/android/settings/applications/AppLaunchSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final sBrowserIntent:Landroid/content/Intent;


# instance fields
.field private entries:[Ljava/lang/CharSequence;

.field private mAppDomainUrls:Landroid/preference/Preference;

.field private mAppLinkState:Lcom/android/settings/SecDropDownPreference;

.field private mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

.field private mHasDomainUrls:Z

.field private mIsBrowser:Z

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/AppLaunchSettings;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->updateAppLinkState(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private buildStateDropDown()V
    .locals 9

    const/4 v1, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/SecDropDownPreference;->setShouldDisableView(Z)V

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1, v5}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/SecDropDownPreference;

    new-array v3, v8, [Ljava/lang/CharSequence;

    const v4, 0x7f0b1a30

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b1a31

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0b1a32

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/SecDropDownPreference;

    new-array v3, v8, [Ljava/lang/CharSequence;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/SecDropDownPreference;

    iget-boolean v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    iget-boolean v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/SecDropDownPreference;

    if-nez v0, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/SecDropDownPreference;

    new-instance v2, Lcom/android/settings/applications/AppLaunchSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/AppLaunchSettings$1;-><init>(Lcom/android/settings/applications/AppLaunchSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v1, p1}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    return-object v1
.end method

.method private isBrowserApp(Ljava/lang/String;)Z
    .locals 8

    sget-object v4, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    sget-object v5, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/high16 v7, 0x20000

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private updateAppLinkState(I)Z
    .locals 7

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    if-eqz v4, :cond_0

    return v6

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_1

    return v6

    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, p1, v3}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v2

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "AppLaunchSettings"

    const-string/jumbo v5, "Couldn\'t update intent verification status!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getSummary(I)Ljava/lang/CharSequence;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez p1, :cond_0

    const v2, 0x7f0b1a2d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    if-ne p1, v2, :cond_1

    const v1, 0x7f0b1a2e

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->entries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v4

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const v1, 0x7f0b1a2f

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f080087

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppLaunchSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v3, "app_launch_supported_domain_urls"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Landroid/preference/Preference;

    const-string/jumbo v3, "app_launch_clear_defaults"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ClearDefaultsPreference;

    iput-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    const-string/jumbo v3, "app_link_state"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SecDropDownPreference;

    iput-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/applications/AppLaunchSettings;->isBrowserApp(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    iget-boolean v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v1}, Lcom/android/settings/applications/AppLaunchSettings;->getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->entries:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->entries:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->entries:[Ljava/lang/CharSequence;

    array-length v0, v3

    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/AppLaunchSettings;->buildStateDropDown()V

    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Landroid/preference/Preference;

    if-ne v0, p2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "entries"

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/applications/AppDomainsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b1a04

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/AppInfoWithHeader;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected refreshUi()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    const/4 v0, 0x1

    return v0
.end method
