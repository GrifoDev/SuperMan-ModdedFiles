.class public Lcom/android/settings/notification/ChannelNotificationSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "ChannelNotificationSettings.java"


# instance fields
.field private mAdvancedAppsCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mChannelGroup:Landroid/app/NotificationChannelGroup;

.field private mFooter:Lcom/android/settings/widget/FooterPreference;

.field private mHeaderPref:Lcom/android/settings/applications/AppHeaderController;

.field private mImportance:Landroid/support/v7/preference/SecPreference;

.field private mLights:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

.field private mVibrate:Lcom/android/settingslib/RestrictedSwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ChannelNotificationSettings;)Landroid/app/NotificationChannelGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ChannelNotificationSettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/notification/ChannelNotificationSettings;Landroid/app/NotificationChannelGroup;)Landroid/app/NotificationChannelGroup;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ChannelNotificationSettings;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ChannelNotificationSettings;->getImportanceSummary(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ChannelNotificationSettings;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ChannelNotificationSettings;->setChannelGroupLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    return-void
.end method

.method private addFooterPref()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;-><init>(Landroid/content/Context;)V

    const/16 v1, -0x1f3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setOrder(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setSelectable(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private addHeaderPref()V
    .locals 6

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->collectConfigActivities(Landroid/util/ArrayMap;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Lcom/android/settings/applications/ApplicationFeatureProvider;->newAppHeaderController(Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mHeaderPref:Lcom/android/settings/applications/AppHeaderController;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mHeaderPref:Lcom/android/settings/applications/AppHeaderController;

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setUid(I)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/applications/AppHeaderController;->setButtonActions(II)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/settings/applications/AppHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private getImportanceSummary(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const-string/jumbo v2, ""

    return-object v2

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121352

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const v4, 0x7f12134a

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121350

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12134f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12134e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12134d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121349

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->hasValidSound()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121348

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12134c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->hasValidSound()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12134b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_4
    .end sparse-switch
.end method

.method private isVisibleBadge()Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecNotiUtils;->isEnabledBadgeAppIcon(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    return v3
.end method

.method private populateUpgradedChannelPrefs()V
    .locals 1

    const v0, 0x7f150127

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupBadge()V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupPriorityPref(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupVisOverridePref(I)V

    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupLights()V

    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupVibrate()V

    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupRingtone()V

    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupImportance()V

    const-string/jumbo v0, "advanced_apps"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAdvancedAppsCategory:Landroid/support/v7/preference/PreferenceCategory;

    return-void
.end method

.method private setChannelGroupLabel(Ljava/lang/CharSequence;)V
    .locals 5

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f121343    # 1.941673E38f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mHeaderPref:Lcom/android/settings/applications/AppHeaderController;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mHeaderPref:Lcom/android/settings/applications/AppHeaderController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/settings/applications/AppHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    return-void
.end method

.method private setVisibleBadge()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->isVisibleBadge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBadge:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBadge:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    goto :goto_0
.end method

.method private setupBlock()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0d02f5

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a08eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBarTopDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "current_sec_active_themepackage"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBarTopDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v2, 0x7f0a0888

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    iput-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->setSideMarginAsListItem()V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v4, Lcom/android/settings/notification/ChannelNotificationSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ChannelNotificationSettings$6;-><init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    new-instance v2, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40000

    invoke-direct {v2, v4, v1, v5}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    const/16 v4, -0x1f4

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    const-string/jumbo v4, "block"

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/LayoutPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/ChannelNotificationSettings;->isChannelBlockable(ZLandroid/app/NotificationChannel;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBarTopDivider:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v2, 0x7f12059b

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupBlockDesc(I)V

    return-void

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method private setupImportance()V
    .locals 9

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "importance"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/SecPreference;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "uid"

    iget v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mUid:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "hideInfoButton"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "package"

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "android.provider.extra.CHANNEL_ID"

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/SecPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/notification/ChannelImportanceSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getMetricsCategory()I

    move-result v7

    const v4, 0x7f121351

    move-object v5, v3

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZI)Landroid/content/Intent;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v8}, Landroid/support/v7/preference/SecPreference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/SecPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->getImportanceSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method private setupLights()V
    .locals 2

    const-string/jumbo v0, "lights"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mLights:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mLights:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mLights:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mLights:Lcom/android/settingslib/RestrictedSwitchPreference;

    new-instance v1, Lcom/android/settings/notification/ChannelNotificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ChannelNotificationSettings$3;-><init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupRingtone()V
    .locals 2

    const-string/jumbo v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationSoundPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/SecNotiUtils;->isSIM2NotiChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSoundPreference;->setRingtoneType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSoundPreference;->setRingtone(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSoundPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSoundPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    new-instance v1, Lcom/android/settings/notification/ChannelNotificationSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ChannelNotificationSettings$5;-><init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSoundPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupVibrate()V
    .locals 2

    const-string/jumbo v0, "vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/android/settingslib/RestrictedSwitchPreference;

    new-instance v1, Lcom/android/settings/notification/ChannelNotificationSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ChannelNotificationSettings$4;-><init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method canPulseLight()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_light_pulse"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x109

    return v0
.end method

.method hasValidSound()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/notification/NotificationSoundPreference;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/SecPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->getImportanceSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {v1}, Lcom/android/settings/notification/NotificationSoundPreference;->getRingtonePickerIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSoundPreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSoundPreference;->getRingtonePickerIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/notification/NotificationSettingsBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    iget v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mUid:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v0, "ChannelSettings"

    const-string/jumbo v1, "Missing package or uid or packageinfo or channel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->finish()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ChannelSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResume : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_2
    const v2, 0x7f15001a

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupBlock()V

    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->addHeaderPref()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->addAppLinkPref()V

    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->addFooterPref()V

    const-string/jumbo v2, "miscellaneous"

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->populateDefaultChannelPrefs()V

    iput-boolean v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mShowLegacyChannelConfig:Z

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->updateDependents(Z)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->populateUpgradedChannelPrefs()V

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/settings/notification/ChannelNotificationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ChannelNotificationSettings$1;-><init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ChannelNotificationSettings$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method protected setupBadge()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBadge:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBadge:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBadge:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBadge:Lcom/android/settingslib/RestrictedSwitchPreference;

    new-instance v1, Lcom/android/settings/notification/ChannelNotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ChannelNotificationSettings$2;-><init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method updateDependents(Z)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mShowLegacyChannelConfig:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportanceToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisibleBadge()V

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mPriority:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mDndVisualEffectsSuppressed:Z

    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBlockedDesc:Lcom/samsung/android/settings/UnclickablePreference;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppLink:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppLink:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppLinkCategory:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppLinkCategory:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mFooter:Lcom/android/settings/widget/FooterPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mFooter:Lcom/android/settings/widget/FooterPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mLights:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->canPulseLight()Z

    move-result v0

    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    :goto_3
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAdvancedAppsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->isVisibleBadge()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v0

    :goto_4
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method
