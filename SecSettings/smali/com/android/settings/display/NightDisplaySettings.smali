.class public Lcom/android/settings/display/NightDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NightDisplaySettings.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

.field private mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mEndTimePreference:Landroid/support/v7/preference/Preference;

.field private mStartTimePreference:Landroid/support/v7/preference/Preference;

.field private mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

.field private mTimeFormatter:Ljava/text/DateFormat;


# direct methods
.method static synthetic -get0(Lcom/android/settings/display/NightDisplaySettings;)Lcom/android/internal/app/NightDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private convertTemperature(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getMaximumColorTemperature()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method private getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget v1, p1, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p1, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x24c

    return v0

    :pswitch_1
    const/16 v0, 0x24d

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1e8

    return v0
.end method

.method public onActivated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SeekBarPreference;->setEnabled(Z)V

    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mStartTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mEndTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onColorTemperatureChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/display/NightDisplaySettings;->convertTemperature(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/NightDisplayController;

    invoke-direct {v1, v0}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mTimeFormatter:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mTimeFormatter:Ljava/text/DateFormat;

    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    iget-object v2, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/NightDisplayController;->getMinimumColorTemperature()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/display/NightDisplaySettings;->convertTemperature(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SeekBarPreference;->setMax(I)V

    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/SeekBarPreference;->setContinuousUpdates(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v6

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/android/settings/display/NightDisplaySettings$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/display/NightDisplaySettings$1;-><init>(Lcom/android/settings/display/NightDisplaySettings;I)V

    iget v3, v6, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    iget v4, v6, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const v0, 0x7f1500a6

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mFooterPreferenceMixin:Lcom/android/settings/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settings/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settings/widget/FooterPreference;

    move-result-object v0

    const v1, 0x7f1212fa

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/FooterPreference;->setTitle(I)V

    const-string/jumbo v0, "night_display_auto_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    const-string/jumbo v0, "night_display_start_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mStartTimePreference:Landroid/support/v7/preference/Preference;

    const-string/jumbo v0, "night_display_end_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mEndTimePreference:Landroid/support/v7/preference/Preference;

    const-string/jumbo v0, "night_display_activated"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

    const-string/jumbo v0, "night_display_temperature"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    new-array v1, v6, [Ljava/lang/CharSequence;

    const v2, 0x7f1212ea

    invoke-virtual {p0, v2}, Lcom/android/settings/display/NightDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f1212e9

    invoke-virtual {p0, v2}, Lcom/android/settings/display/NightDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f1212ec

    invoke-virtual {p0, v2}, Lcom/android/settings/display/NightDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    new-array v1, v6, [Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mEndTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/android/settings/display/NightDisplaySettings;->getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mStartTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/android/settings/display/NightDisplaySettings;->getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setAutoMode(I)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/display/NightDisplaySettings;->convertTemperature(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setColorTemperature(I)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mStartTimePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->showDialog(I)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mEndTimePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/display/NightDisplaySettings;->showDialog(I)V

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->onActivated(Z)V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->onAutoModeChanged(I)V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getColorTemperature()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->onColorTemperatureChanged(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    return-void
.end method
