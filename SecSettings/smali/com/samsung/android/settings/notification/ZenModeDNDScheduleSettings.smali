.class public Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeDNDScheduleSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$1;,
        Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$2;,
        Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;,
        Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$SettingsObserver;,
        Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;
    }
.end annotation


# static fields
.field public static final ALL_DAYS:[I

.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private final mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDaysSummary:Ljava/lang/String;

.field private mDisableListeners:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mId:Ljava/lang/String;

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

.field private mRule:Landroid/app/AutomaticZenRule;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private final mSettingsObserver:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$SettingsObserver;

.field private mStart:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mDaysSummary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/app/AutomaticZenRule;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;Z)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->createPreferenceHierarchy(Z)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->maybeRefreshRules(ZZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->updateControls()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->updateRule(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ZenModeSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->DEBUG:Z

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->ALL_DAYS:[I

    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

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

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$SettingsObserver;

    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$1;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private createPreferenceHierarchy(Z)Landroid/support/v7/preference/PreferenceScreen;
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v3, 0x7f15014c

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "downtime"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    if-nez v3, :cond_1

    new-instance v3, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$5;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->setRepeatListener(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$RepeatListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->setHeaderView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    const-string/jumbo v4, "start_time"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    const v4, 0x7f12224c

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$6;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setCallback(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$Callback;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    const-string/jumbo v4, "end_time"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    const v4, 0x7f122216

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$7;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setCallback(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$Callback;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->initRepeatButton([I)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->updateControls()V

    return-object v2
.end method

.method private refreshRuleOrFinish()Z
    .locals 8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRules:Ljava/util/Set;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRules:Ljava/util/Set;

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

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mId:Ljava/lang/String;

    :cond_0
    sget-boolean v3, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRule="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->toastAndFinish()V

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
    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

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

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f122236

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateControls()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mDisableListeners:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->updateControlsInternal()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mDisableListeners:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->updateEnable()V

    return-void
.end method

.method private updateDays()V
    .locals 8

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v2, v6, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v2, :cond_4

    array-length v6, v2

    if-lez v6, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    sget-object v6, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_3

    sget-object v6, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    aget v1, v6, v3

    const/4 v4, 0x0

    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_1

    aget v6, v2, v4

    if-ne v1, v6, :cond_2

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f121aca

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mDaysSummary:Ljava/lang/String;

    return-void

    :cond_4
    const v6, 0x7f122240

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mDaysSummary:Ljava/lang/String;

    return-void
.end method

.method private updateEndSummary()V
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int v2, v4, v5

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int v0, v4, v5

    if-lt v2, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    const v3, 0x7f122217

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setSummaryFormat(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateRule(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method


# virtual methods
.method public blockScrollForRepeatDragVI(ILandroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v2, v3

    const/4 v3, 0x2

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->getRepeatButtonLocationOnScreen([I)V

    aget v3, v0, v5

    if-lt p1, v3, :cond_0

    aget v3, v0, v5

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->getRepeatButtonHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->isDragging()Z

    move-result v3

    if-eqz v3, :cond_0

    aget v3, v0, v6

    if-lt v2, v3, :cond_1

    aget v3, v0, v6

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->getRepeatButtonWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_1

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    aget v4, v0, v6

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->onTouchRepeatButton(Landroid/view/MotionEvent;)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return v5

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->isDragging()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    invoke-virtual {v3, p2}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->onTouchRepeatButton(Landroid/view/MotionEvent;)V

    return v5

    :cond_1
    return v6
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->maybeRefreshRules(ZZ)V

    sget-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loaded mRules="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRules:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->refreshRuleOrFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->createPreferenceHierarchy(Z)Landroid/support/v7/preference/PreferenceScreen;

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$4;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$SettingsObserver;->unregister()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DoNotDisturb"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->maybeRefreshRules(ZZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$SettingsObserver;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$SettingsObserver;->register()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.DND_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "DoNotDisturb"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    const/4 v2, 0x0

    move v0, p2

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    const/16 v4, 0xb0

    invoke-static {v3, v4, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    sget-boolean v3, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPrefChange Scheduling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v3, p2}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-nez v3, :cond_1

    const/4 v1, 0x1

    const-string/jumbo v3, "ZenModeSettings"

    const-string/jumbo v4, "mSchedule.days == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    sget-object v4, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->ALL_DAYS:[I

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->updateRule(Landroid/net/Uri;)V

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->createPreferenceHierarchy(Z)Landroid/support/v7/preference/PreferenceScreen;

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eqz p2, :cond_2

    const/16 v2, 0x3e8

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->createPreferenceHierarchy(Z)Landroid/support/v7/preference/PreferenceScreen;

    goto :goto_0
.end method

.method protected onZenModeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->updateControls()V

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->updateControls()V

    :cond_0
    return-void
.end method

.method protected setZenMode(ILandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "ZenModeSettings"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method protected updateControlsInternal()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->updateDays()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setTime(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setTime(II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->updateEndSummary()V

    return-void
.end method

.method public updateEnable()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButtonAndDescription;->setEnabledButton(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setEnabled(Z)V

    return-void
.end method
