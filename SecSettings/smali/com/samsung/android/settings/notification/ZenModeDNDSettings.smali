.class public Lcom/samsung/android/settings/notification/ZenModeDNDSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;,
        Lcom/samsung/android/settings/notification/ZenModeDNDSettings$2;,
        Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;,
        Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;,
        Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;
    }
.end annotation


# static fields
.field public static final ALL_DAYS:[I

.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAllowException:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private final mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDayDialog:Landroid/app/Dialog;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDaysDialog:Landroid/app/AlertDialog;

.field private mDisableListeners:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnableNow:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mId:Ljava/lang/String;

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mRule:Landroid/app/AutomaticZenRule;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mScheduling:Lcom/android/settings/SecSettingsSwitchPreference;

.field private final mSettingsObserver:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mVisualSettings:Landroid/support/v7/preference/SecPreferenceScreen;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mVisualSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/AutomaticZenRule;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->maybeRefreshRules(ZZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateRule(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ZenModeSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->ALL_DAYS:[I

    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDaysDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v2, 0x7f15014d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "downtime"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v2, "scheduling_switch"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Lcom/android/settings/SecSettingsSwitchPreference;

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v2, "enable_now"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v2, "allow_exceptions"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v2, "visual_interruptions_settings"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mVisualSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mVisualSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    return-object v1
.end method

.method private isEffectSuppressed(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private refreshRuleOrFinish()Z
    .locals 8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRules:Ljava/util/Set;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRules:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/util/Map$Entry;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    array-length v6, v1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v1, v4

    const-string/jumbo v7, "twschedule"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AutomaticZenRule;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mId:Ljava/lang/String;

    :cond_0
    sget-boolean v3, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRule="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->toastAndFinish()V

    const/4 v3, 0x1

    return v3

    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_3
    return v5
.end method

.method private setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toastAndFinish()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f122236

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateControls()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControlsInternal()V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "zen_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateAllowSummary()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateScheduleSummary()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "zen_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private updateRule(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method

.method private updateVisualSettingsSummary()V
    .locals 6

    const v5, 0x7f122247

    const v4, 0x7f12220a

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f122229

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mVisualSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f122244

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->maybeRefreshRules(ZZ)V

    sget-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loaded mRules="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRules:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->refreshRuleOrFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->unregister()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DoNotDisturb"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->maybeRefreshRules(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateScheduleSummary()V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->register()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.DND_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "DoNotDisturb"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateZenMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f1208a7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f1208a8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onZenModeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    :cond_0
    return-void
.end method

.method protected setZenMode(ILandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "ZenModeSettings"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public updateAllowSummary()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f12130f

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f12222a

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f1210b4

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method protected updateControlsInternal()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    const-string/jumbo v1, "mSchedule is null in updateDays()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateVisualSettingsSummary()V

    return-void
.end method

.method public updateScheduleSummary()V
    .locals 19

    const-string/jumbo v16, "ZenModeSettings"

    const-string/jumbo v17, "mScheduling update Summary : "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v4, :cond_5

    array-length v0, v4

    move/from16 v16, v0

    if-lez v16, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDaysOfWeekForLocale(Ljava/util/Calendar;)[I

    move-result-object v5

    const/4 v7, 0x0

    :goto_0
    array-length v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_3

    aget v3, v5, v7

    const/4 v8, 0x0

    :goto_1
    array-length v0, v4

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_1

    aget v16, v4, v8

    move/from16 v0, v16

    if-ne v3, v0, :cond_2

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f121aca

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v16, v0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    move/from16 v17, v0

    add-int v14, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    move/from16 v17, v0

    add-int v6, v16, v17

    if-lt v14, v6, :cond_6

    const/4 v12, 0x1

    :goto_2
    if-eqz v12, :cond_7

    const v11, 0x7f122217

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    move/from16 v16, v0

    const/16 v17, 0xb

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    move/from16 v16, v0

    const/16 v17, 0xc

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v16

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    move/from16 v16, v0

    const/16 v17, 0xb

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    move/from16 v16, v0

    const/16 v17, 0xc

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v16

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v9, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_4
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v16, v0

    const v17, 0x7f1216ce

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public updateZenMode(Z)V
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v0, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->setZenMode(ILandroid/net/Uri;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "DNDS"

    const/16 v4, 0x3e8

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->setZenMode(ILandroid/net/Uri;)V

    goto :goto_1
.end method
