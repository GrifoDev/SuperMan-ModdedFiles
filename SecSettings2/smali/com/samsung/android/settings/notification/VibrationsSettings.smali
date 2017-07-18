.class public Lcom/samsung/android/settings/notification/VibrationsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VibrationsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/VibrationsSettings$1;,
        Lcom/samsung/android/settings/notification/VibrationsSettings$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field private mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceVibration:Landroid/support/v7/preference/PreferenceScreen;

.field private mKeyboardVibration:Landroid/support/v14/preference/SwitchPreference;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrateWhenRinging:Landroid/support/v14/preference/SwitchPreference;

.field private mVibrationOnTouch:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/VibrationsSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "VibrationsSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/VibrationsSettings;->DEBUG:Z

    new-instance v0, Lcom/samsung/android/settings/notification/VibrationsSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/VibrationsSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/VibrationsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/notification/VibrationsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VibrationsSettings$1;-><init>(Lcom/samsung/android/settings/notification/VibrationsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x47

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f08013a

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    sput-object v4, Lcom/samsung/android/settings/notification/VibrationsSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    sput-object v4, Lcom/samsung/android/settings/notification/VibrationsSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/VibrationsSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v4, "phone_vibration"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v4, "vibrate_when_ringing"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mVibrateWhenRinging:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v4, "vibrate_on_touch"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v4, "keyboard_vibration"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mVibrateWhenRinging:Landroid/support/v14/preference/SwitchPreference;

    new-instance v5, Lcom/samsung/android/settings/notification/VibrationsSettings$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/VibrationsSettings$3;-><init>(Lcom/samsung/android/settings/notification/VibrationsSettings;)V

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SwitchPreference;

    new-instance v5, Lcom/samsung/android/settings/notification/VibrationsSettings$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/VibrationsSettings$4;-><init>(Lcom/samsung/android/settings/notification/VibrationsSettings;)V

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/support/v14/preference/SwitchPreference;

    new-instance v5, Lcom/samsung/android/settings/notification/VibrationsSettings$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/VibrationsSettings$5;-><init>(Lcom/samsung/android/settings/notification/VibrationsSettings;)V

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string/jumbo v4, "vibrate_on_touch"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "keyboard_vibration"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "UPSM"

    invoke-static {v4, v6, v5}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "vibration_feedback_intensity"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "vibration_intensity_category"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "vibrate_on_touch"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "keyboard_vibration"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "phone_vibration"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "vibration_pattern_category"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "vibrate_when_ringing"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "SVKV"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 8

    const v7, 0x7f0b09a2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/notification/VibrationsSettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/VibrationsSettings$6;-><init>(Lcom/samsung/android/settings/notification/VibrationsSettings;)V

    iput-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mVibrateWhenRinging:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mVibrateWhenRinging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "vibrate_when_ringing"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "haptic_feedback_enabled"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "sip_key_feedback_vibration"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->updateDeviceVibrationName()V

    sget-object v2, Lcom/samsung/android/settings/notification/VibrationsSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_4

    if-nez v0, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SwitchPreference;

    const v5, 0x7f0b098b

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_5

    if-nez v0, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/support/v14/preference/SwitchPreference;

    const v4, 0x7f0b099f

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    move v2, v4

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_1

    :cond_8
    move v2, v4

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_4
.end method

.method public updateDeviceVibrationName()V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method
