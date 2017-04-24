.class public Lcom/samsung/android/settings/notification/ZenModeDNDSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
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
.field private mAllowException:Landroid/preference/PreferenceScreen;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private final mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDayDialog:Landroid/app/Dialog;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDays:Landroid/preference/Preference;

.field private mDaysDialog:Landroid/app/AlertDialog;

.field private mDisableListeners:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnableNow:Landroid/preference/SwitchPreference;

.field private mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mId:Ljava/lang/String;

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mRule:Landroid/app/AutomaticZenRule;

.field private mRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mScheduling:Landroid/preference/SwitchPreference;

.field private final mSettingsObserver:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

.field private mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mVisualSettings:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/AutomaticZenRule;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->maybeRefreshRules(ZZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->showDaysDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateDays()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/net/Uri;)V
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

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

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

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v3, 0x7f08015e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "downtime"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string/jumbo v3, "days"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const-string/jumbo v4, "start_time"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const v4, 0x7f0b19b8

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setCallback(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const-string/jumbo v4, "end_time"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const v4, 0x7f0b19b9

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$6;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setCallback(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v3, "scheduling_switch"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$7;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v3, "enable_now"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$8;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v3, "allow_exceptions"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "visual_interruptions_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mVisualSettings:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mVisualSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "dnd_description"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f0b09b2

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    return-object v2
.end method

.method private getZenModeRules()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private isEffectSuppressed(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private maybeRefreshRules(ZZ)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getZenModeRules()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRules:Ljava/util/Set;

    sget-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Refreshed mRules="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRules:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->refreshRuleOrFinish()Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    :cond_1
    return-void
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

.method private setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->maybeRefreshRules(ZZ)V

    return v0
.end method

.method private showDaysDialog()V
    .locals 11

    const v9, 0x7f0b09ca

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDaysDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDaysDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$9;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v9, v9, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v7, p0, v8, v9}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$9;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/content/Context;[I)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$10;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$10;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0b182b

    invoke-virtual {v6, v7, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDaysDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDaysDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v6, 0x7f0400d0

    invoke-virtual {v1, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f1102bd

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v6, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$11;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v6, p0, v7, v8}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$11;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/content/Context;[I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    if-eqz v6, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getThemeResId()I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const v7, 0x7f0f0283

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    new-instance v6, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$12;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$12;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    const v6, 0x7f1102b7

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "current_sec_active_themepackage"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const v6, 0x7f0200d8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_3
    const v6, 0x7f1102b8

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar;

    new-instance v6, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$13;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$13;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v9}, Landroid/widget/Toolbar;->setTitle(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private toastAndFinish()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0b199a

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
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateEnable()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateAllowSummary()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "zen_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private updateDays()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

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

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b19a2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

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

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    return-void

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    const v7, 0x7f0b199e

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    return-void
.end method

.method private updateEndSummary()V
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int v2, v4, v5

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int v0, v4, v5

    if-lt v2, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    const v3, 0x7f0b19ba

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setSummaryFormat(I)V

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

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method

.method private updateVisualSettingsSummary()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const v1, 0x7f0b19c3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b19c6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mVisualSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0b19c4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b19c5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

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

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->maybeRefreshRules(ZZ)V

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
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

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

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0, v1, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->maybeRefreshRules(ZZ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControls()V

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

    const v1, 0x7f0b09b8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0b09b9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
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

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b09b4

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1947

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b020b

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method protected updateControlsInternal()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    const-string/jumbo v1, "mSchedule is null in updateDays()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateDays()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTime(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTime(II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateEndSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateVisualSettingsSummary()V

    return-void
.end method

.method public updateEnable()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setEnabled(Z)V

    return-void
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
