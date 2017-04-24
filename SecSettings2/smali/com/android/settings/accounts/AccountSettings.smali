.class public Lcom/android/settings/accounts/AccountSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AccountSettings.java"

# interfaces
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountSettings$1;,
        Lcom/android/settings/accounts/AccountSettings$AccountPreference;,
        Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;,
        Lcom/android/settings/accounts/AccountSettings$HelpClickListener;,
        Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;,
        Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;,
        Lcom/android/settings/accounts/AccountSettings$ProfileData;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

.field private mProfileNotAvailablePreference:Landroid/preference/Preference;

.field private mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/accounts/AccountSettings$ProfileData;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/accounts/AccountSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->cleanUpPreferences()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->listenToAccountUpdates()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/accounts/AccountSettings$1;

    invoke-direct {v0}, Lcom/android/settings/accounts/AccountSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/accounts/AccountSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AccountSettings;Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    return-void
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/android/settingslib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget v2, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No sync authorities for account type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v5
.end method

.method private cleanUpPreferences()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private getAccountTypePreferences(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/accounts/AuthenticatorHelper;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/AccountSettings$AccountPreference;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/util/ArrayList;

    array-length v2, v13

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_0
    array-length v2, v13

    if-ge v15, v2, :cond_9

    const/16 v16, 0x1

    aget-object v11, v13, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/settings/accounts/AccountSettings;->accountTypeHasAnyRequestedAuthorities(Lcom/android/settingslib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getPackageForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelIdForType(Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v11, v0}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v14

    array-length v2, v14

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v17, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/settingslib/accounts/SnsAccountManager;->getSSOAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v20

    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/settingslib/accounts/SnsAccountManager;->getSnsAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v2, v0

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/16 v17, 0x0

    :cond_3
    const-string/jumbo v2, "com.samsung.android.coreapps"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v16, 0x0

    const-string/jumbo v2, "AccountSettings"

    const-string/jumbo v3, "Hide Easysignup account"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v16, :cond_5

    if-eqz v17, :cond_8

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "account"

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v2, Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const-class v3, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_2

    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_8
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "account_type"

    invoke-virtual {v9, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "account_label"

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v2, Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const-class v3, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance v2, Lcom/android/settings/accounts/AccountSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/accounts/AccountSettings$3;-><init>(Lcom/android/settings/accounts/AccountSettings;)V

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v12
.end method

.method private getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v4, 0x7f0b19d0

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private listenToAccountUpdates()V
    .locals 4

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private newAddAccountPreference(Landroid/content/Context;)Lcom/android/settings/DimmableIconPreference;
    .locals 2

    new-instance v0, Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/DimmableIconPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b1764

    invoke-virtual {v0, v1}, Lcom/android/settings/DimmableIconPreference;->setTitle(I)V

    const v1, 0x7f0204ea

    invoke-virtual {v0, v1}, Lcom/android/settings/DimmableIconPreference;->setIcon(I)V

    const v1, 0x7f0402f0

    invoke-virtual {v0, v1}, Lcom/android/settings/DimmableIconPreference;->setLayoutResource(I)V

    invoke-virtual {v0, p0}, Lcom/android/settings/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/settings/DimmableIconPreference;->setOrder(I)V

    return-object v0
.end method

.method private newManagedProfileSettings()Landroid/preference/Preference;
    .locals 4

    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b1b45

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02047f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d016c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0402f0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    return-object v1
.end method

.method private newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b1768

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    const v1, 0x7f0204ef

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    const v1, 0x7f0402f0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 4

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/accounts/AccountSettings;->getAccountTypePreferences(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_1
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v4, 0x7f0200fa

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIcon(I)V

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v4, 0x7f0b1765

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/settings/accounts/AccountSettings$ProfileData;-><init>(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    iput-object p1, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    if-eqz p2, :cond_3

    new-instance v3, Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/AccessiblePreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f040371

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setLayoutResource(I)V

    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0b009e

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    invoke-direct {p0, v0, p1}, Lcom/android/settings/accounts/AccountSettings;->getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    check-cast v3, Lcom/android/settings/AccessiblePreferenceCategory;

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const v5, 0x7f0b1328

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->newManagedProfileSettings()Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/preference/Preference;

    :goto_0
    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p3, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v3, v0, v4, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    const-string/jumbo v3, "no_modify_accounts"

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->newAddAccountPreference(Landroid/content/Context;)Lcom/android/settings/DimmableIconPreference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    const-string/jumbo v4, "no_modify_accounts"

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/DimmableIconPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v3

    const-class v4, Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    return-void

    :cond_2
    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0b009d

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    check-cast v3, Lcom/android/settings/AccessiblePreferenceCategory;

    const v4, 0x7f0b1329

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object p3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing Settings screen for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getListView()Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v1, 0x7f0a0468

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0a045e

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    const v3, 0x7f0a001a

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v4, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v0

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f140001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_3

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v0, v10, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    if-ne p1, v0, :cond_0

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.extra.USER"

    iget-object v1, v10, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "authorities"

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/android/settings/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    return v12

    :cond_0
    iget-object v0, v10, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    iget-object v0, v10, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v11, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accounts/AccountSettings$2;

    invoke-direct {v1, p0, v11}, Lcom/android/settings/accounts/AccountSettings$2;-><init>(Lcom/android/settings/accounts/AccountSettings;I)V

    invoke-static {v0, v11, v1}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return v12

    :cond_1
    iget-object v0, v10, Lcom/android/settings/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.intent.extra.USER"

    iget-object v1, v10, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b1b45

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v12

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return v6
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10

    const v5, 0x7f110873

    const v9, 0x7f110872

    const v8, 0x7f110023

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f110874

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_4

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v5, Lcom/android/settings/accounts/AccountSettings$HelpClickListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings/accounts/AccountSettings$HelpClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Lcom/android/settings/accounts/AccountSettings$HelpClickListener;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :goto_2
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0b17cb

    :goto_3
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    new-instance v4, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;Ljava/lang/Boolean;)V

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const v4, 0x7f0b17c9

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-le v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v4, v4, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v5, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v4, 0x7f110874

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v5, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v4, "AccountSettings"

    const-string/jumbo v5, "Method onPrepareOptionsMenu called before mProfiles was initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    invoke-interface {p1, v8}, Landroid/view/Menu;->removeItem(I)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->cleanUpPreferences()V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->updateUi()V

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->listenToAccountUpdates()V

    return-void
.end method

.method updateUi()V
    .locals 9

    const v7, 0x7f08000c

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/AccountSettings;->addPreferencesFromResource(I)V

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v7}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v7}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    const-string/jumbo v7, "account"

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v2}, Lcom/android/settings/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    :cond_1
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_9

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v7, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceGroup;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "AccountSettings"

    const-string/jumbo v8, "We should not be showing settings for a managed profile"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->finish()V

    return-void

    :cond_4
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x64

    if-ge v7, v8, :cond_6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_5

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_8

    const/4 v0, 0x1

    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v5, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v7, v0, v2}, Lcom/android/settings/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    return-void
.end method
