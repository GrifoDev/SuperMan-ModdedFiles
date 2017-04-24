.class public Lcom/android/settings/notification/ZenModeScheduleRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;
    }
.end annotation


# instance fields
.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDays:Landroid/preference/Preference;

.field private mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

.field private mExitAtAlarm:Landroid/preference/SwitchPreference;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->showDaysDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateDays()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private showDaysDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b199d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;Landroid/content/Context;[I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b182b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateDays()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

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

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b19a2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

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

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    const v7, 0x7f0b199e

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    return-void
.end method

.method private updateEndSummary()V
    .locals 6

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int v2, v4, v5

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int v0, v4, v5

    if-lt v2, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    const v3, 0x7f0b19ba

    :goto_1
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setSummaryFormat(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected getEnabledToastText()I
    .locals 1

    const v0, 0x7f0b198e

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x90

    return v0
.end method

.method protected getZenModeDependency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateInternal()V
    .locals 4

    const v2, 0x7f080162

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "days"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    new-instance v3, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string/jumbo v3, "start_time"

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f0b19b8

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string/jumbo v3, "end_time"

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f0b19b9

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    const-string/jumbo v2, "exit_at_alarm"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method protected setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateControlsInternal()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateDays()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateEndSummary()V

    return-void
.end method
