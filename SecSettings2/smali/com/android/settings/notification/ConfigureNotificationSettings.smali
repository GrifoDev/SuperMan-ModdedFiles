.class public Lcom/android/settings/notification/ConfigureNotificationSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ConfigureNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

.field private mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

.field private mLockscreenSelectedValue:I

.field private mLockscreenSelectedValueProfile:I

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mProfileChallengeUserId:I

.field private mSecure:Z

.field private mSecureProfile:Z

.field private final mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ConfigureNotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ConfigureNotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/notification/ConfigureNotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/notification/ConfigureNotificationSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/notification/ConfigureNotificationSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotificationsForProfile()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updatePulse()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    return-void
.end method

.method private getLockscreenAllowPrivateNotifications(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initLockscreenNotifications()V
    .locals 11

    const v10, 0x7f0b1963

    const v9, 0x7f0b1962

    const v8, 0x7f0b1961

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_notifications"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/NotificationLockscreenPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    if-nez v6, :cond_0

    const-string/jumbo v6, "ConfigNotiSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xc

    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    iget-boolean v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0, v9}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :cond_1
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v9, 0x40

    invoke-static {v7, v9, v8}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setRemoteInputRestricted(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotifications()V

    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    new-instance v7, Lcom/android/settings/notification/ConfigureNotificationSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$2;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initLockscreenNotificationsForProfile()V
    .locals 12

    const v11, 0x7f0b1968

    const v9, 0x7f0b1967

    const v8, 0x7f0b1966

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_notifications_profile"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/NotificationLockscreenPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    if-nez v6, :cond_0

    const-string/jumbo v6, "ConfigNotiSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications_profile"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    iget v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setUserId(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xc

    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    iget-boolean v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0, v9}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :cond_1
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    const/16 v9, 0x40

    invoke-static {v7, v9, v8}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setRemoteInputRestricted(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v6, v10}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setRemoteInputCheckBoxEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotificationsForProfile()V

    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    new-instance v7, Lcom/android/settings/notification/ConfigureNotificationSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$3;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v6, v10}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initPulse()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "notification_pulse"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ConfigNotiSettings"

    const-string/jumbo v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updatePulse()V

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/ConfigureNotificationSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$1;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 5

    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v0}, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->addRestrictedItem(Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;)V

    :cond_0
    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v2}, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->addRestrictedItem(Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;)V

    :cond_1
    return-void
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    :goto_0
    if-nez v1, :cond_2

    const v2, 0x7f0b1963

    :goto_1
    iput v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const v2, 0x7f0b1961

    goto :goto_1

    :cond_3
    const v2, 0x7f0b1962

    goto :goto_1
.end method

.method private updateLockscreenNotificationsForProfile()V
    .locals 4

    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    :goto_0
    if-nez v1, :cond_3

    const v2, 0x7f0b1968

    :goto_1
    iput v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f0b1966

    goto :goto_1

    :cond_4
    const v2, 0x7f0b1967

    goto :goto_1
.end method

.method private updatePulse()V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_light_pulse"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConfigNotiSettings"

    const-string/jumbo v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x151

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x0

    const/16 v5, -0x2710

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    const v2, 0x7f080042

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->initPulse()V

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->initLockscreenNotifications()V

    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    if-eq v2, v5, :cond_1

    const v2, 0x7f080043

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->initLockscreenNotificationsForProfile()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->register(Z)V

    return-void
.end method
