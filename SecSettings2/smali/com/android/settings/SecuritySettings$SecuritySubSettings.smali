.class public Lcom/android/settings/SecuritySettings$SecuritySubSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecuritySubSettings"
.end annotation


# static fields
.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

.field private mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

.field private mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lock_after_timeout"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "visiblepattern"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "power_button_instantly_locks"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()V
    .locals 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v10

    invoke-static {v6, v9, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v6, "visiblepattern"

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "power_button_instantly_locks"

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "trust_agent"

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v7

    const v10, 0x7f0b14d8

    invoke-virtual {p0, v10, v9}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    const-string/jumbo v6, "owner_info_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/RestrictedPreference;

    iput-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    sget-object v6, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_6

    sget-object v6, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v6, v12}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v9, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v6}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    new-instance v7, Lcom/android/settings/SecuritySettings$SecuritySubSettings$1;

    invoke-direct {v7, p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings$1;-><init>(Lcom/android/settings/SecuritySettings$SecuritySubSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_5
    move v6, v8

    goto :goto_2

    :cond_6
    return-void
.end method

.method private static getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I
    .locals 1

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    const v0, 0x7f080109

    return v0

    :sswitch_1
    const v0, 0x7f08010d

    return v0

    :sswitch_2
    const v0, 0x7f080106

    return v0

    :sswitch_3
    invoke-virtual {p2}, Lcom/android/settings/ManagedLockPasswordProvider;->getResIdForLockUnlockSubScreen()I

    move-result v0

    return v0

    :cond_1
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080112

    return v0

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_3
    .end sparse-switch
.end method

.method private setupLockAfterPreference()V
    .locals 14

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v1, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v10, "screen_off_timeout"

    invoke-static {v1, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v6, v1

    const-wide/16 v10, 0x0

    sub-long v12, v2, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "power_button_instantly_locks"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_1
    const-string/jumbo v3, "lock_after_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_screen_lock_after_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->setupLockAfterPreference()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SecuritySettings"

    const-string/jumbo v4, "could not persist lockAfter timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "visiblepattern"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->updateOwnerInfo()V

    return-void
.end method

.method public updateOwnerInfo()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0b112e

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
