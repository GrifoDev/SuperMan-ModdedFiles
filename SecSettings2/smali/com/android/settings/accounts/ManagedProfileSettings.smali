.class public Lcom/android/settings/accounts/ManagedProfileSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ManagedProfileSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mContactPrefrence:Lcom/samsung/android/settingslib/RestrictedSwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

.field private mManagedUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;

.field private mWorkModePreference:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/accounts/ManagedProfileSettings;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/accounts/ManagedProfileSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/accounts/ManagedProfileSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getManagedUserFromArgument()Landroid/os/UserHandle;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    return-object v4
.end method

.method private loadDataAndPopulateUi()V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v6, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v6}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/samsung/android/settingslib/RestrictedSwitchPreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "managed_profile_contact_remote_search"

    iget-object v6, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v2, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/samsung/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v2, v4}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRemoteContactSearchDisallowed(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/samsung/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x191

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManagedProfileSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "work_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManagedProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "contacts_search"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManagedProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/samsung/android/settingslib/RestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/samsung/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getManagedUserFromArgument()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    new-instance v0, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/ManagedProfileSettings;Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/os/UserManager;->setQuietModeEnabled(IZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/samsung/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "managed_profile_contact_remote_search"

    iget-object v3, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v4

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->loadDataAndPopulateUi()V

    return-void
.end method
