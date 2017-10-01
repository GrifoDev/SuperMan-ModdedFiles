.class public Lcom/android/settings/notification/ZenModeSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeSettings.java"


# instance fields
.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mPrioritySettings:Landroid/preference/Preference;

.field private mVisualSettings:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f0b154c

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method private isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEffectSuppressed(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateControls()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updatePrioritySettingsSummary()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateVisualSettingsSummary()V

    return-void
.end method

.method private updatePrioritySettingsSummary()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b19be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    const v2, 0x7f0b19bf

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    const v2, 0x7f0b19c0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez v1, :cond_2

    const v1, 0x7f0b19b8

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v1, :cond_3

    const v1, 0x7f0b19c1

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPrioritySettings:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const v1, 0x7f0b19b9

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v1, 0x7f0b19c2

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/16 v2, 0x10

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b19c3

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateVisualSettingsSummary()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const v1, 0x7f0b19d4

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/android/settings/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b19d7

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mVisualSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0b19d5

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b19d6

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b1898

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f080163

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "priority_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPrioritySettings:Landroid/preference/Preference;

    const-string/jumbo v1, "visual_interruptions_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mVisualSettings:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    return-void
.end method
