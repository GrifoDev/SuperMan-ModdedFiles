.class public Lcom/android/settings/EncryptionAndCredential;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EncryptionAndCredential.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EncryptionAndCredential$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mIsAdmin:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/EncryptionAndCredential;->MY_USER_ID:I

    new-instance v0, Lcom/android/settings/EncryptionAndCredential$SecuritySearchIndexProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/EncryptionAndCredential$SecuritySearchIndexProvider;-><init>(Lcom/android/settings/EncryptionAndCredential$SecuritySearchIndexProvider;)V

    sput-object v0, Lcom/android/settings/EncryptionAndCredential;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/EncryptionAndCredential;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v6, 0x7f150066

    invoke-virtual {p0, v6}, Lcom/android/settings/EncryptionAndCredential;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/EncryptionAndCredential;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/EncryptionAndCredential;->mUm:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/EncryptionAndCredential;->mIsAdmin:Z

    iget-boolean v6, p0, Lcom/android/settings/EncryptionAndCredential;->mIsAdmin:Z

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x7f1500e9

    invoke-virtual {p0, v6}, Lcom/android/settings/EncryptionAndCredential;->addPreferencesFromResource(I)V

    :cond_1
    :goto_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/EncryptionAndCredential;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p0}, Lcom/android/settings/EncryptionAndCredential;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "no_config_credentials"

    sget v8, Lcom/android/settings/EncryptionAndCredential;->MY_USER_ID:I

    invoke-static {v6, v7, v8}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "user_credentials"

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v6, "no_config_credentials"

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    const-string/jumbo v6, "credential_storage_type"

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v6, "no_config_credentials"

    invoke-virtual {v0, v6}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    const-string/jumbo v6, "credentials_install"

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v6, "no_config_credentials"

    invoke-virtual {v2, v6}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    const-string/jumbo v6, "credentials_reset"

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/RestrictedPreference;

    iput-object v6, p0, Lcom/android/settings/EncryptionAndCredential;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    iget-object v6, p0, Lcom/android/settings/EncryptionAndCredential;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v7, "no_config_credentials"

    invoke-virtual {v6, v7}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/EncryptionAndCredential;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v6

    if-eqz v6, :cond_3

    const v4, 0x7f12065a

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    :goto_2
    return-object v3

    :cond_2
    const v6, 0x7f150100

    invoke-virtual {p0, v6}, Lcom/android/settings/EncryptionAndCredential;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_3
    const v4, 0x7f12065b

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "credentials_management"

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v6, "credentials_reset"

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v6, "credentials_install"

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v6, "credential_storage_type"

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v6, "user_credentials"

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f120d07

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x34e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/EncryptionAndCredential;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/EncryptionAndCredential;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/EncryptionAndCredential;->mUm:Landroid/os/UserManager;

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/EncryptionAndCredential;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/EncryptionAndCredential;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/EncryptionAndCredential;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/EncryptionAndCredential;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/EncryptionAndCredential;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
