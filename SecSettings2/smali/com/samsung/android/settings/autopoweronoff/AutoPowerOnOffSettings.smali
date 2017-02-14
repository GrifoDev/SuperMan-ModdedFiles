.class public Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AutoPowerOnOffSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;,
        Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

.field private mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

.field private mAutoPowerOffTime:Landroid/preference/Preference;

.field private mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

.field private mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

.field private mAutoPowerOnTime:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mCurrentDialogId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private registerAutoPowerOffAlarm(Landroid/content/Context;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.action.SET_AUTO_POWER_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "power_off_reg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "by_user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private registerAutoPowerOnAlarm(Landroid/content/Context;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.action.SET_AUTO_POWER_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "power_on_reg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "by_user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 6

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput p2, v1, Landroid/text/format/Time;->hour:I

    iput p3, v1, Landroid/text/format/Time;->minute:I

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    const/16 v0, 0x201

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0x281

    :cond_0
    invoke-static {p1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private unregisterAutoPowerOffAlarm(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.action.SET_AUTO_POWER_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "power_off_reg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private unregisterAutoPowerOnAlarm(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.action.SET_AUTO_POWER_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "power_on_reg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateStatus()V
    .locals 12

    const/16 v11, 0x7c

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_on_settings"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_6

    const/4 v1, 0x1

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_off_settings"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_7

    const/4 v0, 0x1

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_on_time"

    const/16 v10, 0x2bc

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_on_repeat_days"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    new-instance v3, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_off_time"

    const/16 v10, 0x8fc

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_off_repeat_days"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    new-instance v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v2, v4}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/preference/Preference;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    div-int/lit8 v10, v7, 0x64

    rem-int/lit8 v11, v7, 0x64

    invoke-direct {p0, v9, v10, v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/preference/Preference;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    div-int/lit8 v10, v5, 0x64

    rem-int/lit8 v11, v5, 0x64

    invoke-direct {p0, v9, v10, v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v8, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v8, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    :cond_5
    return-void

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "auto_power_on_switch"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "auto_power_on_time"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/preference/Preference;

    const-string/jumbo v0, "auto_power_on_days"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    const-string/jumbo v0, "auto_power_off_switch"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "auto_power_off_time"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/preference/Preference;

    const-string/jumbo v0, "auto_power_off_days"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const/16 v8, 0x20

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_power_on_time"

    const/16 v3, 0x2bc

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    div-int/lit8 v3, v7, 0x64

    rem-int/lit8 v4, v7, 0x64

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_power_off_time"

    const/16 v3, 0x8fc

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    div-int/lit8 v3, v6, 0x64

    rem-int/lit8 v4, v6, 0x64

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v4, "AutoPowerOnOffSettings"

    const-string/jumbo v5, "onPreferenceChange : mAutoPowerOnSettings"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "auto_power_on_settings"

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    :goto_0
    return v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOnAlarm(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v4, "AutoPowerOnOffSettings"

    const-string/jumbo v5, "onPreferenceChange : mAutoPowerOffSettings"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "auto_power_off_settings"

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    :goto_1
    return v3

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOffAlarm(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const-string/jumbo v2, "AutoPowerOnOffSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceChange : mAutoPowerOnDays, value.getCoded() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "auto_power_on_repeat_days"

    invoke-virtual {v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    return v3

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const-string/jumbo v2, "AutoPowerOnOffSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceChange : mAutoPowerOffDays, value.getCoded() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "auto_power_off_repeat_days"

    invoke-virtual {v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    return v3

    :cond_7
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AutoPowerOnOffSettings"

    const-string/jumbo v1, "Show dialog : KEY_AUTO_POWER_ON_TIME"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->removeDialog(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->showDialog(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutoPowerOnOffSettings"

    const-string/jumbo v1, "Show dialog : KEY_AUTO_POWER_OFF_TIME"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->removeDialog(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->updateStatus()V

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p2, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "auto_power_on_time"

    mul-int/lit8 v2, p2, 0x64

    add-int/2addr v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p2, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "auto_power_off_time"

    mul-int/lit8 v2, p2, 0x64

    add-int/2addr v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    goto :goto_0
.end method
