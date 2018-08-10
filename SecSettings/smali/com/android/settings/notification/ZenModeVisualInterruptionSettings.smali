.class public Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeVisualInterruptionSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$1;
    }
.end annotation


# instance fields
.field private mDisableListeners:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mScreenOff:Landroid/support/v14/preference/SecSwitchPreference;

.field private mScreenOn:Landroid/support/v14/preference/SecSwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOff:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOn:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;ZI)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->getNewSuppressedEffects(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->savePolicy(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    new-instance v0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$1;-><init>(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private getNewSuppressedEffects(ZI)I
    .locals 2

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eqz p1, :cond_0

    or-int/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    not-int v1, p2

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method private isEffectSuppressed(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private savePolicy(I)V
    .locals 4

    new-instance v0, Landroid/app/NotificationManager$Policy;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method private updateControls()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mDisableListeners:Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOff:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->isEffectSuppressed(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOn:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->isEffectSuppressed(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mDisableListeners:Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x106

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f150153

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const-string/jumbo v1, "screenOff"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOff:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "screenOff"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->removePreference(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOff:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$2;-><init>(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "screenOn"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOn:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOn:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$3;-><init>(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "HideVisualNotifications"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->updateControls()V

    return-void
.end method
