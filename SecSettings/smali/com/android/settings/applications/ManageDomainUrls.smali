.class public Lcom/android/settings/applications/ManageDomainUrls;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManageDomainUrls.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageDomainUrls$1;,
        Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;
    }
.end annotation


# static fields
.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mBooster:Lcom/samsung/android/settings/utils/Booster;

.field private mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mInstantAppAccountPreference:Landroid/support/v7/preference/Preference;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mWebAction:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/ManageDomainUrls;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic -get1()Lcom/samsung/android/settings/applications/EmHandler;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/applications/ManageDomainUrls;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler;
    .locals 0

    sput-object p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/applications/ManageDomainUrls$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageDomainUrls$1;-><init>(Lcom/android/settings/applications/ManageDomainUrls;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private rebuild()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls;->onRebuildComplete(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private rebuildAppList(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageDomainUrls;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-eq v5, v6, :cond_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/ManageDomainUrls;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6, v1}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;-><init>(Lcom/android/settings/applications/ManageDomainUrls;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v4, v3}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setOrder(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->reuse()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageDomainUrls;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    return-void
.end method


# virtual methods
.method public exeCustomAction()V
    .locals 0

    return-void
.end method

.method public exeOptAction()V
    .locals 0

    return-void
.end method

.method public exePrefAction()V
    .locals 8

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mWebAction is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "SetAsDefault"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mWebAction is ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->updateActionObj(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/support/v7/preference/PreferenceScreen;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v0, "OpenLinksInAppsOn"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "SetAsDefault"

    const-string/jumbo v3, "OpenLinksInApps"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_2
    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "SetAsDefault"

    const-string/jumbo v3, "OpenLinksInApps"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "OpenLinksInAppsOff"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "SetAsDefault"

    const-string/jumbo v3, "OpenLinksInApps"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "SetAsDefault"

    const-string/jumbo v3, "OpenLinksInApps"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "SetAsDefault"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    return-void
.end method

.method public exeViewAction()V
    .locals 0

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x8f

    return v0
.end method

.method synthetic lambda$-com_android_settings_applications_ManageDomainUrls_7482(Landroid/content/Intent;Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageDomainUrls;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageDomainUrls;->setAnimationAllowed(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageDomainUrls;->setHasOptionsMenu(Z)V

    new-instance v0, Lcom/samsung/android/settings/utils/Booster;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/utils/Booster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/utils/Booster;->start(I)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->release()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageDomainUrls;->rebuild()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->pause()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SetAsDefault"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "instant_apps_enabled"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b046f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eqz v0, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return v3
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    invoke-static {p1}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->-get0(Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v7

    const-class v0, Lcom/android/settings/applications/AppLaunchSettings;

    iget-object v1, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getMetricsCategory()I

    move-result v6

    const v1, 0x7f12078c

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;II)V

    return v5

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "enable_ephemeral_feature"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v6, p1}, Lcom/android/settings/applications/ManageDomainUrls;->rebuildAppList(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/ManageDomainUrls;->setGoToTopEnabled(Z)V

    :cond_3
    invoke-virtual {p0, v8, v8}, Lcom/android/settings/applications/ManageDomainUrls;->setLoading(ZZ)V

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_2

    new-instance v5, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v6, 0x7f121e3c

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v6, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    const v9, 0x7f121e3b

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    iget-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    const v9, 0x7f121e3a

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v9, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v10, "instant_apps_enabled"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    :cond_6
    if-eqz v2, :cond_7

    move-object v3, v2

    new-instance v6, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mInstantAppAccountPreference:Landroid/support/v7/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mInstantAppAccountPreference:Landroid/support/v7/preference/Preference;

    const v9, 0x7f120ded

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    iget-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mInstantAppAccountPreference:Landroid/support/v7/preference/Preference;

    new-instance v9, Lcom/android/settings/applications/-$Lambda$n-7gd7QmmOETk3LCVsVO9yDxQpo;

    invoke-direct {v9, p0, v3}, Lcom/android/settings/applications/-$Lambda$n-7gd7QmmOETk3LCVsVO9yDxQpo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mInstantAppAccountPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    new-instance v6, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    const v9, 0x7f1208c7

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    iget-object v6, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    :cond_8
    move v6, v8

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->resume()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SetAsDefault"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageDomainUrls;->setLoading(ZZ)V

    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "OpenLinksInAppsOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "OpenLinksInAppsOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x1

    const/16 v3, 0x2710

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public stopAction()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    sput-object v2, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    :cond_0
    return-void
.end method
