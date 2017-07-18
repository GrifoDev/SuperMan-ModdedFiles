.class public Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$11;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$1;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$2;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$3;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$EmptyView;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

.field private mAllSoundOffDialog:Landroid/app/AlertDialog;

.field private mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

.field private mAudioCategory:Landroid/preference/PreferenceScreen;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mFlashNotification:Landroid/database/ContentObserver;

.field private mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

.field private mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

.field private mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

.field private final mTurnOffAllSound:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$1;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotification:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$2;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mTurnOffAllSound:Landroid/database/ContentObserver;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCurConfig:Landroid/content/res/Configuration;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "persist.omc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AccessibilitySettings_Hearing"

    const-string/jumbo v2, "country code is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getSalesCode()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "persist.omc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AccessibilitySettings_Hearing"

    const-string/jumbo v2, "sales code is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private initializeAllPreferences()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "audio_preference_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "sound_detector_plus_preference"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "flash_notification_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "all_sound_off_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "call_hearing_aid"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "samsung_captioning_preference_screen"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v0, "google_captioning_preference_screen"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v0, "sound_balance"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    const v3, 0x7f0b01e6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const-string/jumbo v0, "mono_audio_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.android.app.advsounddetector"

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_Setting_SupportHAC"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.android.video"

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "mono_audio_db"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "all_sound_off"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "flash_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hearing_aid"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    move v1, v2

    goto :goto_5
.end method

.method private updateDefaultPreferences()V
    .locals 8

    const v7, 0x7f0b19d9

    const v6, 0x7f0b19d8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "mono_audio_db"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "all_sound_off"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "flash_notification"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "hearing_aid"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "accessibility_captioning_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    :cond_0
    :goto_4
    const/4 v0, 0x1

    const-string/jumbo v1, "USA"

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "CAN"

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "XAR"

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "XAC"

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "accessibility_sec_captioning_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_5
    if-ne v0, v2, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    :cond_2
    :goto_6
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setEnabled(Z)V

    :goto_7
    return-void

    :cond_4
    move v1, v3

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto/16 :goto_1

    :cond_6
    move v1, v3

    goto/16 :goto_2

    :cond_7
    move v1, v3

    goto/16 :goto_3

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "accessibility_sec_captioning_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setEnabled(Z)V

    goto :goto_7
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100251

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->initializeAllPreferences()V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    return-object v10

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x1030132

    invoke-direct {v1, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v10, "layout_inflater"

    invoke-virtual {v1, v10}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v10, 0x7f0401e0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v10, 0x7f11054b

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sparse-switch p1, :sswitch_data_0

    const/4 v10, 0x0

    return-object v10

    :sswitch_0
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$5;

    invoke-direct {v11, p0, v2, v8}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$5;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    const v12, 0x7f0b1518

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$6;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$6;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V

    const/high16 v12, 0x1040000

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$7;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$7;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v6

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b024c

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    const/4 v13, 0x2

    aput-object v9, v12, v13

    const v13, 0x7f0b024e

    invoke-virtual {v11, v13, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$8;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$8;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V

    const v12, 0x7f0b0fac

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$9;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$9;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V

    const/high16 v12, 0x1040000

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$10;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$10;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffDialog:Landroid/app/AlertDialog;

    return-object v10

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0xd724a -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mTurnOffAllSound:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->releaseMediaPlayer()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Hearing"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 16

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v11, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "mono_audio_db"

    if-eqz v10, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v12, "mono"

    if-eqz v10, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v7, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v7, v12}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f100273

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    if-eqz v10, :cond_2

    const/16 v11, 0x3e8

    :goto_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v13, v11}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const-string/jumbo v11, "AccessibilitySettings_Hearing"

    const-string/jumbo v12, "Mono Audio broadcast"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    return v11

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v11, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->showDialog(I)V

    const/4 v11, 0x0

    return v11

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "all_sound_off"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v11, "mute"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v4, v12}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f100253

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    if-eqz v10, :cond_8

    const/16 v11, 0x3e8

    :goto_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v13, v11}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const-string/jumbo v11, "AccessibilitySettings_Hearing"

    const-string/jumbo v12, "All sound off broadcast"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    return v11

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "sound_detector"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "doorbell_detector"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0b0252

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    const/4 v11, 0x0

    return v11

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "all_sound_off"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v11, "mute"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    const/4 v9, 0x0

    const-string/jumbo v2, "merged_mute_or_pause_switch"

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, ","

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    array-length v12, v9

    :goto_5
    if-ge v11, v12, :cond_a

    aget-object v8, v9, v11

    const-string/jumbo v13, "merged_mute_or_pause_switch"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const/4 v1, 0x0

    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v11

    const-string/jumbo v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v11

    const-string/jumbo v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    :cond_b
    if-eqz v1, :cond_10

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "master_motion"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "motion_overturn"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_13

    :cond_c
    :goto_6
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :cond_d
    if-eqz v10, :cond_14

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f0b03f3

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const v14, 0x7f0b01e8

    invoke-virtual {v12, v14, v13}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "motion_merged_mute_pause"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "motion_overturn"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "flash_notification"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "master_motion"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "FLNO"

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100252

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    const/16 v13, 0x3e8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_7
    const/4 v11, 0x1

    return v11

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "flash_notification"

    if-eqz v10, :cond_11

    const/4 v11, 0x1

    :goto_8
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f100252

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    if-eqz v10, :cond_12

    const/16 v11, 0x3e8

    :goto_9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v13, v11}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v11, 0x1

    return v11

    :cond_11
    const/4 v11, 0x0

    goto :goto_8

    :cond_12
    const/4 v11, 0x0

    goto :goto_9

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "motion_merged_mute_pause"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_d

    goto/16 :goto_6

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "flash_notification"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100252

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_7

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "flash_notification"

    if-eqz v10, :cond_16

    const/4 v11, 0x1

    :goto_a
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f100252

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    if-eqz v10, :cond_17

    const/16 v11, 0x3e8

    :goto_b
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v13, v11}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_16
    const/4 v11, 0x0

    goto :goto_a

    :cond_17
    const/4 v11, 0x0

    goto :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    if-eqz v10, :cond_19

    const/4 v5, 0x1

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "hearing_aid"

    invoke-static {v11, v12, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "HACSetting="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v5, :cond_1a

    const-string/jumbo v11, "ON"

    :goto_d
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f100254

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    if-eqz v10, :cond_1b

    const/16 v11, 0x3e8

    :goto_e
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v13, v11}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v11, 0x1

    return v11

    :cond_19
    const/4 v5, 0x0

    goto :goto_c

    :cond_1a
    const-string/jumbo v11, "OFF"

    goto :goto_d

    :cond_1b
    const/4 v11, 0x0

    goto :goto_e

    :cond_1c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    if-eqz v10, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "accessibility_captioning_enabled"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v11

    if-nez v11, :cond_1d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v12, 0x7f0b19d8

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    :cond_1d
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f100258

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    if-eqz v10, :cond_1f

    const/16 v11, 0x3e8

    :goto_10
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v13, v11}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v11, 0x1

    return v11

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "accessibility_captioning_enabled"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v11

    if-nez v11, :cond_1d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v12, 0x7f0b19d9

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_f

    :cond_1f
    const/4 v11, 0x0

    goto :goto_10

    :cond_20
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    if-eqz v10, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "accessibility_sec_captioning_enabled"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v11

    if-nez v11, :cond_21

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v12, 0x7f0b19d8

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    :cond_21
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f100256

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    if-eqz v10, :cond_23

    const/16 v11, 0x3e8

    :goto_12
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v13, v11}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v11, 0x1

    return v11

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "accessibility_sec_captioning_enabled"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v11

    if-nez v11, :cond_21

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v12, 0x7f0b19d9

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_11

    :cond_23
    const/4 v11, 0x0

    goto :goto_12

    :cond_24
    const/4 v11, 0x0

    return v11
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v2, p2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.video.ACTION_START_CC_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.video"

    const-string/jumbo v4, "com.samsung.android.video.player.activity.SubtitleSetting"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100255

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceScreen;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.accessibility.SOUND_DETECTOR_PLUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1389

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->prepareMediaPlayer()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->updateDefaultPreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "flash_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "all_sound_off"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mTurnOffAllSound:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Hearing"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->releaseMediaPlayer()V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    return-void
.end method
