.class public Lcom/android/settings/LedIndicatorSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedIndicatorSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

# static fields
.field private static final isKnoxUser:Z


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mLedIndicatorObserver:Landroid/database/ContentObserver;

.field private misCharing:Landroid/support/v7/preference/CheckBoxPreference;

.field private misIncomingNotification:Landroid/support/v7/preference/CheckBoxPreference;

.field private misLowBattery:Landroid/support/v7/preference/CheckBoxPreference;

.field private misMissedEvent:Landroid/support/v7/preference/CheckBoxPreference;

.field private misVoiceRecording:Landroid/support/v7/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/LedIndicatorSettings;->isKnoxUser:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/LedIndicatorSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/LedIndicatorSettings$1;-><init>(Lcom/android/settings/LedIndicatorSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LedIndicatorSettings;->mLedIndicatorObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private updateLedIndicatorSwitch()V
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_master_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "led_indicator_master_onoff"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150154

    invoke-virtual {p0, v0}, Lcom/android/settings/LedIndicatorSettings;->addPreferencesFromResource(I)V

    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/LedIndicatorSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v0, p0, Lcom/android/settings/LedIndicatorSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v2, 0x10

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const v3, 0x15

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const-string v0, "led_indicator_charging_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/support/v7/preference/CheckBoxPreference;

    const-string v0, "led_indicator_low_battery_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/support/v7/preference/CheckBoxPreference;

    const-string v0, "led_indicator_missed_event_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/support/v7/preference/CheckBoxPreference;

    const-string v0, "led_indicator_voice_recording_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/support/v7/preference/CheckBoxPreference;

    const-string v0, "led_indicator_incoming_notification_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.sec.android.app.voicenote"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.sec.android.app.voicerecorder"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/settings/LedIndicatorSettings;->isKnoxUser:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "led_indicator_voice_recording_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedIndicatorSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->mLedIndicatorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string v0, "LedIndicatorSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/settings/LedIndicatorSettings;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/android/settings/LedIndicatorSettings;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    sget v4, Lcom/android/settings/LedIndicatorSettings;->mSettingValue:I

    if-ne v4, v2, :cond_2

    move v1, v2

    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_reminder_led_indicator"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f122276

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v5, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "notification_reminder_led_indicator"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "notification_reminder_led_indicator"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "notification_reminder_led_indicator"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    :goto_3
    invoke-virtual {v5, v4}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "notification_reminder_led_indicator"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_4
    invoke-virtual {v5, v4}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_reminder_led_indicator"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v4, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_5
    return v2

    :cond_2
    move v1, v3

    goto/16 :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v3

    goto :goto_3

    :cond_6
    move v4, v3

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "led_indicator_charing"

    iget-object v6, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    move v3, v2

    :cond_8
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_9
    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "led_indicator_low_battery"

    iget-object v6, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    move v3, v2

    :cond_a
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_b
    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "led_indicator_missed_event"

    iget-object v6, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_c

    move v3, v2

    :cond_c
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_d
    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "led_indicator_voice_recording"

    iget-object v6, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_e

    move v3, v2

    :cond_e
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_f
    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "led_indicator_incoming_notification"

    iget-object v6, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_10

    move v3, v2

    :cond_10
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    :cond_11
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    goto/16 :goto_5
.end method

.method public onResume()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "LedIndicatorSettings"

    const-string v3, "onResume() "

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_charing"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_low_battery"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_missed_event"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_voice_recording"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_incoming_notification"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_master_onoff"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/LedIndicatorSettings;->updateLedIndicatorSwitch()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    const-string v0, "LedIndicatorSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
