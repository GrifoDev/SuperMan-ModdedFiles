.class public Lcom/android/settings/accounts/ManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ManageAccountsSettings$1;,
        Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;
    }
.end annotation


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAuthorities:[Ljava/lang/String;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mFirstAccount:Landroid/accounts/Account;

.field private mInstallReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/accounts/ManageAccountsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->showAccountsIfNeeded()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    new-instance v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addAuthenticatorSettings()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceGroup;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/accounts/SnsAccountManager;->getPairedAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceGroup;)V

    :cond_1
    return-void
.end method

.method private checkSCloudSyncSettingAvailable()Z
    .locals 10

    const-string/jumbo v0, "com.samsung.android.scloud"

    const-string/jumbo v1, "sync_account_setting_version"

    const v2, 0x98bd90

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.scloud"

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "sync_account_setting_version"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "sync_account_setting_version"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const v8, 0x98bd90

    if-lt v7, v8, :cond_0

    const-string/jumbo v7, "CloudSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sync account setting version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "sync_account_setting_version"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkSCloudSyncSettingSupported(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkSCloudSettingEnable account_type ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.osp.app.signin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->checkSCloudSyncSettingAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v9, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iget-object v8, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p1, p2, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_0

    return v7

    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :try_start_0
    iget-boolean v8, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v8, :cond_2

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v8, :cond_1

    return v6

    :cond_1
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v9, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    return v6

    :cond_2
    iget-object v8, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v8, v9, :cond_3

    :goto_0
    return v6

    :cond_3
    move v6, v7

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "AccountSettings"

    const-string/jumbo v8, "Intent considered unsafe due to exception."

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method

.method private isSyncEnabled(ILandroid/accounts/Account;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    iget-object v3, v2, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v3, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private requestOrCancelSyncForAccounts(Z)V
    .locals 12

    iget-object v10, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v9}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v8

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "force"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    instance-of v10, v6, Lcom/android/settings/AccountPreference;

    if-eqz v10, :cond_5

    check-cast v6, Lcom/android/settings/AccountPreference;

    invoke-virtual {v6}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    const/4 v4, 0x0

    :goto_1
    array-length v10, v8

    if-ge v4, v10, :cond_2

    aget-object v7, v8, v4

    aget-object v10, v8, v4

    iget-object v10, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v10, v9}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz p1, :cond_1

    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v10, v9, v2}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v10, v9}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v10

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/settingslib/accounts/SnsAccountManager;->getPairedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v4, 0x0

    :goto_3
    array-length v10, v8

    if-ge v4, v10, :cond_5

    aget-object v7, v8, v4

    aget-object v10, v8, v4

    iget-object v10, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v11, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz p1, :cond_4

    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v10, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x102000a

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->requestAccessibilityFocus()Z

    return-void
.end method

.method private showAccountsIfNeeded()V
    .locals 14

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v11, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    iput-object v12, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    const v1, 0x7f08009b

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    const/4 v7, 0x0

    array-length v8, v6

    :goto_0
    if-ge v7, v8, :cond_5

    aget-object v2, v6, v7

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v10, 0x1

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    array-length v12, v11

    move v1, v5

    :goto_1
    if-ge v1, v12, :cond_2

    aget-object v9, v11, v1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v10, 0x1

    :cond_2
    if-eqz v10, :cond_3

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v0, Lcom/android/settings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-nez v1, :cond_3

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->addAuthenticatorSettings()V

    :goto_2
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->finish()V

    goto :goto_2
.end method

.method private showSyncState()V
    .locals 38

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    if-eqz v34, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/Activity;->isFinishing()Z

    move-result v34

    if-eqz v34, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v33

    invoke-static/range {v33 .. v33}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v13

    const/4 v7, 0x0

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-static/range {v33 .. v33}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v26

    new-instance v32, Ljava/util/HashSet;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashSet;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v21, v0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-object v24, v26, v17

    invoke-virtual/range {v24 .. v24}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v34

    if-eqz v34, :cond_2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v12

    :goto_1
    if-ge v15, v12, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/settings/AccountPreference;

    move/from16 v34, v0

    if-nez v34, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v5, v23

    check-cast v5, Lcom/android/settings/AccountPreference;

    invoke-virtual {v5}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    const/16 v27, 0x0

    const-wide/16 v18, 0x0

    const/16 v29, 0x0

    invoke-virtual {v5}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v8

    const/16 v30, 0x0

    if-eqz v8, :cond_c

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move/from16 v0, v33

    invoke-static {v4, v9, v0}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v25

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1, v4, v9}, Lcom/android/settings/accounts/ManageAccountsSettings;->isSyncEnabled(ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result v28

    invoke-static {v4, v9}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v9}, Lcom/android/settings/accounts/ManageAccountsSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v25, :cond_9

    if-eqz v28, :cond_9

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-eqz v34, :cond_9

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_8

    const/16 v34, 0x1

    :goto_4
    move/from16 v20, v34

    :goto_5
    if-eqz v20, :cond_6

    if-eqz v6, :cond_a

    :cond_6
    :goto_6
    or-int v30, v30, v6

    if-eqz v25, :cond_7

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v34, v0

    cmp-long v34, v18, v34

    if-gez v34, :cond_7

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v18, v0

    :cond_7
    if-eqz v28, :cond_b

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_b

    const/16 v34, 0x1

    :goto_7
    add-int v27, v27, v34

    goto :goto_3

    :cond_8
    const/16 v34, 0x0

    goto :goto_4

    :cond_9
    const/16 v20, 0x0

    goto :goto_5

    :cond_a
    if-nez v11, :cond_6

    const/16 v29, 0x1

    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    const/16 v34, 0x0

    goto :goto_7

    :cond_c
    const-string/jumbo v34, "AccountSettings"

    const/16 v35, 0x2

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_d

    const-string/jumbo v34, "AccountSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "no syncadapters found for "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v34

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/settingslib/accounts/SnsAccountManager;->getPairedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v22

    if-eqz v22, :cond_17

    const/16 v16, 0x0

    :goto_8
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_17

    aget-object v24, v26, v16

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_10

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v25

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_12

    invoke-static/range {v33 .. v33}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v34

    if-eqz v34, :cond_12

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v34

    if-lez v34, :cond_11

    const/16 v28, 0x1

    :goto_9
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v34

    invoke-direct {v0, v13, v1, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v25, :cond_14

    if-eqz v28, :cond_14

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-eqz v34, :cond_14

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_13

    const/16 v34, 0x1

    :goto_a
    move/from16 v20, v34

    :goto_b
    if-eqz v20, :cond_e

    if-eqz v6, :cond_15

    :cond_e
    :goto_c
    or-int v30, v30, v6

    if-eqz v25, :cond_f

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v34, v0

    cmp-long v34, v18, v34

    if-gez v34, :cond_f

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v18, v0

    :cond_f
    if-eqz v28, :cond_16

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_16

    const/16 v34, 0x1

    :goto_d
    add-int v27, v27, v34

    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_8

    :cond_11
    const/16 v28, 0x0

    goto :goto_9

    :cond_12
    const/16 v28, 0x0

    goto :goto_9

    :cond_13
    const/16 v34, 0x0

    goto :goto_a

    :cond_14
    const/16 v20, 0x0

    goto :goto_b

    :cond_15
    if-nez v11, :cond_e

    const/16 v29, 0x1

    const/4 v7, 0x1

    goto :goto_c

    :cond_16
    const/16 v34, 0x0

    goto :goto_d

    :cond_17
    if-eqz v29, :cond_18

    const/16 v34, 0x2

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_2

    :cond_18
    if-nez v27, :cond_19

    const/16 v34, 0x1

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_2

    :cond_19
    if-lez v27, :cond_1b

    if-eqz v30, :cond_1a

    const/16 v34, 0x3

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_2

    :cond_1a
    const/16 v34, 0x0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    const-wide/16 v34, 0x0

    cmp-long v34, v18, v34

    if-lez v34, :cond_4

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/util/Date;->setTime(J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/accounts/ManageAccountsSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v31, v35, v36

    const v36, 0x7f0b177f

    move-object/from16 v0, v34

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1b
    const/16 v34, 0x1

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v35, v0

    if-eqz v7, :cond_1d

    const/16 v34, 0x0

    :goto_e
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_1d
    const/16 v34, 0x8

    goto :goto_e
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .locals 9

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->checkSCloudSyncSettingSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v7, "com.samsung.android.scloud.SCLOUD_MAIN"

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "relative_link"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0x8000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/android/settings/accounts/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "android.intent.extra.USER"

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const v3, 0x7f0b1770

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceGroup;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v5, v3, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v5}, Lcom/android/settings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceGroup;)V

    :cond_0
    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;

    const-class v6, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b1142

    invoke-direct {v5, p0, v6, v7}, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/high16 v6, 0x10000

    invoke-virtual {v2, v1, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "account"

    iget-object v6, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v5, Lcom/android/settings/accounts/ManageAccountsSettings$2;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings$2;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->showAccountsIfNeeded()V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f11011c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "account_label"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "account_label"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/android/settings/AccountPreference;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/android/settings/AccountPreference;

    invoke-virtual {v0}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "account_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "account_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    :cond_0
    const v2, 0x7f08009b

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.coreapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.coreapps"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v4, 0x0

    const v2, 0x7f0b0332

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0b0333

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f040176

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {p2, v1, v0, v3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onDestroy()V

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.coreapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException while unregister"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    return v1

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    instance-of v0, p2, Lcom/android/settings/AccountPreference;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/settings/AccountPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    if-eqz v13, :cond_b

    if-eqz v12, :cond_b

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    invoke-static {v14}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v11

    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v15

    if-ge v1, v15, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    instance-of v15, v9, Lcom/android/settings/AccountPreference;

    if-nez v15, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    check-cast v9, Lcom/android/settings/AccountPreference;

    invoke-virtual {v9}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    const/4 v6, 0x0

    :goto_1
    array-length v15, v11

    if-ge v6, v15, :cond_0

    aget-object v10, v11, v6

    iget-object v15, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v10}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v15

    if-eqz v15, :cond_5

    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v15, v14}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v15

    if-lez v15, :cond_5

    const/4 v4, 0x1

    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v15, v14}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v3, 0x1

    :cond_2
    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v15}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v15, v14}, Landroid/content/ContentResolver;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_4

    :cond_3
    const/4 v5, 0x1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v17, "isGoogleAccountsAutoSyncAllowed"

    invoke-static/range {v15 .. v17}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v15, -0x1

    if-eq v2, v15, :cond_5

    const/4 v15, 0x1

    if-eq v2, v15, :cond_5

    if-eqz v10, :cond_5

    iget-object v15, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    if-eqz v15, :cond_5

    const-string/jumbo v15, "com.google"

    iget-object v0, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v4, 0x0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v15

    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settingslib/accounts/SnsAccountManager;->getPairedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v8

    if-eqz v8, :cond_8

    if-eqz v10, :cond_8

    iget-object v15, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    if-eqz v15, :cond_8

    iget-object v15, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v0, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v10}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v15

    if-eqz v15, :cond_8

    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v15, v14}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v15

    if-lez v15, :cond_8

    const/4 v4, 0x1

    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v15, v14}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v3, 0x1

    :cond_6
    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v15}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v15, v14}, Landroid/content/ContentResolver;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_7
    const/4 v5, 0x1

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_9
    if-eqz v4, :cond_a

    invoke-static {v14}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v15

    if-eqz v15, :cond_c

    if-nez v3, :cond_c

    :cond_a
    const/4 v15, 0x1

    invoke-interface {v13, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v15, 0x0

    invoke-interface {v12, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v13}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-interface {v13}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0x66

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_b
    :goto_2
    return-void

    :cond_c
    if-eqz v5, :cond_d

    const/4 v15, 0x0

    :goto_3
    invoke-interface {v13, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v15, 0x1

    invoke-interface {v13, v15}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v13}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-interface {v13}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0xff

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    :cond_d
    const/4 v15, 0x1

    goto :goto_3
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->showAccountsIfNeeded()V

    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->showSyncState()V

    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->showSyncState()V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
