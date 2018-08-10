.class public Lcom/samsung/android/settings/notification/SoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SoundSettings$10;,
        Lcom/samsung/android/settings/notification/SoundSettings$11;,
        Lcom/samsung/android/settings/notification/SoundSettings$12;,
        Lcom/samsung/android/settings/notification/SoundSettings$13;,
        Lcom/samsung/android/settings/notification/SoundSettings$14;,
        Lcom/samsung/android/settings/notification/SoundSettings$15;,
        Lcom/samsung/android/settings/notification/SoundSettings$1;,
        Lcom/samsung/android/settings/notification/SoundSettings$2;,
        Lcom/samsung/android/settings/notification/SoundSettings$3;,
        Lcom/samsung/android/settings/notification/SoundSettings$4;,
        Lcom/samsung/android/settings/notification/SoundSettings$5;,
        Lcom/samsung/android/settings/notification/SoundSettings$6;,
        Lcom/samsung/android/settings/notification/SoundSettings$7;,
        Lcom/samsung/android/settings/notification/SoundSettings$8;,
        Lcom/samsung/android/settings/notification/SoundSettings$9;,
        Lcom/samsung/android/settings/notification/SoundSettings$H;,
        Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;,
        Lcom/samsung/android/settings/notification/SoundSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DEFAULT_VOLUME:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PSEUDO_DUAL_SPEAKER_ENABLED:Z

.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static hasMessagePackage:Ljava/lang/Boolean;

.field private static isWifiOnly:Ljava/lang/Boolean;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mMessagePackageName:Ljava/lang/String;

.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultVolumeControl:Landroid/support/v14/preference/SecSwitchPreference;

.field private mDeviceVibration:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mDialKeypadTone:Landroid/support/v14/preference/SecSwitchPreference;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

.field private mFeelring:Landroid/support/v7/preference/Preference;

.field private final mHandler:Lcom/samsung/android/settings/notification/SoundSettings$H;

.field private mIntervalSoundMode:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mIsEmerMode:Z

.field private mKeyboardSound:Landroid/support/v14/preference/SecSwitchPreference;

.field private mKeyboardVibration:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

.field private mPhoneRingtone2Preference:Landroid/support/v7/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtonePreference_DS:Landroid/support/v7/preference/Preference;

.field private mRingtoyou:Landroid/support/v7/preference/Preference;

.field private mScreenLockSound:Landroid/support/v14/preference/SecSwitchPreference;

.field private mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

.field private final mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

.field private mSoundEffects:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mStereoSound:Landroid/support/v14/preference/SecSwitchPreference;

.field private mTcoloring:Landroid/support/v7/preference/Preference;

.field private mTouchSounds:Landroid/support/v14/preference/SecSwitchPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrateWhenRinging:Landroid/support/v14/preference/SecSwitchPreference;

.field private mVibrationOnTouch:Landroid/support/v14/preference/SecSwitchPreference;

.field private mVoiceCapable:Z

.field private mZenModeDND:Lcom/android/settings/SecSettingsSwitchPreference;

.field private offset:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get1()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtone2Preference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mScreenLockSound:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/media/SemSoundAssistantManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTouchSounds:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDefaultVolumeControl:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDialKeypadTone:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/notification/SoundSettings$H;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mHandler:Lcom/samsung/android/settings/notification/SoundSettings$H;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardSound:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->IsMultiSoundSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshDNDmode()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshSoundMode()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->startRingtoneSetting()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 14

    const/4 v1, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_PSEUDO_DUAL_SPEAKER"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/SoundSettings;->PSEUDO_DUAL_SPEAKER_ENABLED:Z

    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v2, "zen_mode_dnd"

    aput-object v2, v0, v4

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$1;

    const-string/jumbo v2, "volume_key_control"

    const-string/jumbo v3, "adjust_media_volume_only"

    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DEFAULT_VOLUME:Lcom/android/settings/notification/SettingPref;

    new-instance v5, Lcom/samsung/android/settings/notification/SoundSettings$2;

    const-string/jumbo v7, "dial_pad_tones"

    const-string/jumbo v8, "dtmf_tone"

    new-array v10, v4, [I

    move v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/notification/SoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    new-instance v5, Lcom/samsung/android/settings/notification/SoundSettings$3;

    const-string/jumbo v7, "screen_locking_sounds"

    const-string/jumbo v8, "lockscreen_sounds_enabled"

    new-array v10, v4, [I

    move v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/notification/SoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v5, Lcom/samsung/android/settings/notification/SoundSettings$4;

    const-string/jumbo v7, "gps_notification_sounds"

    const-string/jumbo v8, "gps_noti_sound_enabled"

    new-array v10, v4, [I

    move v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/notification/SoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v8, Lcom/samsung/android/settings/notification/SoundSettings$5;

    const-string/jumbo v10, "charging_sounds"

    const-string/jumbo v11, "charging_sounds_enabled"

    new-array v13, v4, [I

    move v12, v9

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/notification/SoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v8, Lcom/samsung/android/settings/notification/SoundSettings$6;

    const-string/jumbo v10, "docking_sounds"

    const-string/jumbo v11, "dock_sounds_enabled"

    new-array v13, v4, [I

    move v12, v9

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/notification/SoundSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v5, Lcom/samsung/android/settings/notification/SoundSettings$7;

    const-string/jumbo v7, "touch_sounds"

    const-string/jumbo v8, "sound_effects_enabled"

    new-array v10, v4, [I

    move v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/notification/SoundSettings$7;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v5, Lcom/samsung/android/settings/notification/SoundSettings$8;

    const-string/jumbo v7, "keyboard_sound"

    const-string/jumbo v8, "sip_key_feedback_sound"

    new-array v10, v4, [I

    move v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/notification/SoundSettings$8;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    new-instance v8, Lcom/samsung/android/settings/notification/SoundSettings$9;

    const-string/jumbo v10, "dock_audio_media"

    const-string/jumbo v11, "dock_audio_media_enabled"

    filled-new-array {v4, v9}, [I

    move-result-object v13

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/notification/SoundSettings$9;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    new-instance v8, Lcom/samsung/android/settings/notification/SoundSettings$10;

    const-string/jumbo v10, "emergency_tone"

    const-string/jumbo v11, "emergency_tone"

    filled-new-array {v9, v1, v4}, [I

    move-result-object v13

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/notification/SoundSettings$10;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    new-instance v5, Lcom/samsung/android/settings/notification/SoundSettings$11;

    const-string/jumbo v7, "folder_sounds"

    const-string/jumbo v8, "folder_sounds_enabled"

    new-array v10, v4, [I

    move v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/notification/SoundSettings$11;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DEFAULT_VOLUME:Lcom/android/settings/notification/SettingPref;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$13;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundSettings$13;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$14;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundSettings$14;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDirect:I

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDirectUri:Landroid/net/Uri;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$H;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings$H;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;Lcom/samsung/android/settings/notification/SoundSettings$H;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mHandler:Lcom/samsung/android/settings/notification/SoundSettings$H;

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundSettings$12;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundSettings$15;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private static IsMultiSoundSupported(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    sput-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.oneconnect"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    return v6

    :cond_0
    return v5

    :catch_0
    move-exception v0

    return v5
.end method

.method private canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    const-string/jumbo v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside canSetRingtone ringtone uri is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "Inside cansetringtone ringtone uri not null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "content://media/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "ringtoneUri.toString().contains(content:media)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "drmClient.canHandle(ringtoneUri, null)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "PR DRM File Ringtone Rights Invalid !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "RingtoneManager.getRingtone(context, ringtoneUri)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "returning false because rtTemp is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "getRingtone() null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v1

    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "canSetRingtone() exception !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_2
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "inside canSetRingtone ringtone uri is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getNotiSummary(Landroid/content/Context;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 9

    const v8, 0x7f121387

    const v7, 0x7f121385

    const v6, 0x7f121383

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, ""

    invoke-static {p0}, Lcom/android/settings/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const v2, 0x7f121386

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settingslib/Utils;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.calendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v2, "com.samsung.android.email"

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v2

    if-eqz v2, :cond_7

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const v3, 0x7f121384

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const v3, 0x7f121382

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    const-string/jumbo v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    return-object v2
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private initRingtones()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    const-string/jumbo v0, "ringtone2"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtone2Preference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    :cond_0
    return-void
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    return v5

    :cond_2
    return v6
.end method

.method private lookupRingtoneNames()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshDNDmode()V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "zen_mode"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    const v4, 0x7f121b3e

    :goto_0
    const/4 v1, 0x0

    const v5, 0x7f121b3e

    if-eq v4, v5, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v5, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    const-string/jumbo v8, "twschedule"

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    :cond_0
    const v4, 0x7f1208aa

    if-eqz v3, :cond_1

    iget-boolean v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v5, :cond_1

    const v4, 0x7f12091b

    const/4 v1, 0x1

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "zen_mode"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v7}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_2

    move v6, v1

    :cond_2
    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    return-void

    :cond_4
    const v4, 0x7f121b3d

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v5, v7

    goto :goto_2
.end method

.method private refreshSoundMode()V
    .locals 8

    const v7, 0x7f1219f4

    const v6, 0x7f1219f0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-ne v5, v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :goto_0
    const-string/jumbo v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSoundMode : ringerMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f1219f2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_3
    if-ne v0, v5, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    if-ne v0, v4, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_1
.end method

.method private registerListeners()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/notification/SoundSettings$22;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SoundSettings$22;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private releaseListeners()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private setLinkedDataView()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    :goto_0
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v6, :cond_2

    new-instance v6, Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v6, 0x7f120189

    iput v6, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.phone"

    const-string/jumbo v7, "com.android.phone.callsettings.AnsweringCall"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "FROM_ACCESSIBILITY"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "flowId"

    const/16 v7, 0x232a

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getMetricsCategory()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v1, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "pick_up_switch"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    xor-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_1

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v6, 0x7f121467

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.android.settings.Settings$UsefulFeatureActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "type"

    const-string/jumbo v7, "pick_up_switch"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "flowId"

    const/16 v7, 0x232b

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getMetricsCategory()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v2, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    add-int/lit8 v0, v0, 0x1

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_1
    if-lez v0, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private startRingtoneSetting()V
    .locals 9

    const/4 v3, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sound title"

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "sound title"

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.settings.RingtoneSettingTabActivity"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const v4, 0x7f120dbc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 13

    const/4 v12, 0x0

    const-string/jumbo v9, "SoundSettings"

    const-string/jumbo v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "file path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - extension("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "), mimeType("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "SoundSettings"

    const-string/jumbo v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_1
    if-nez v4, :cond_2

    const-string/jumbo v9, "3ga"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "mime_type"

    const-string/jumbo v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "_data=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - tempUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "), newUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :catch_0
    move-exception v1

    const-string/jumbo v9, "SoundSettings"

    const-string/jumbo v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v12
.end method

.method private updateRingtoneData(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 10

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v0, "SoundSettings"

    const-string/jumbo v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const v0, 0x10408d0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v1, :cond_2

    const v0, 0x10408cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_0
    return-object v9

    :cond_2
    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_4
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    :try_start_1
    const-string/jumbo v0, "settings"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneTitleForCached(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v7

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v8

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f120d08

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x47

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 7

    const v6, 0x7f121c3e

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "handleRingtonePicked() : Not changed"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "updateRingtoneData(ringtoneType)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/notification/SoundSettings;->updateRingtoneData(I)V

    return-void

    :cond_2
    const-string/jumbo v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/settings/notification/SoundSettings;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "Inside cansetringtone false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.vcast.mediamanager.fileProvider"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :cond_4
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "handleRingtonePicked updating media DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SoundSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_5

    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "handleRingtonePicked - pickedUri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "is_ringtone"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleRingtonePicked - pickedUri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), ringtoneType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/16 v2, 0x80

    if-ne p2, v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "recommendation_time_2"

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "recommendation_time"

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1219f4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1219dd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1219fc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActivityResult: requestCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", resultCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eq p2, v7, :cond_1

    if-eq p2, v8, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    if-ne p2, v7, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    invoke-virtual {p0, v2, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    :pswitch_1
    if-eq p2, v7, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SoundSettings;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "Tcoloring"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "http://www.tcoloring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "Ringtoyou"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "http://ringtoyou.kt.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v4, "FeelRing"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "http://www.musicbellring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "Preference not found: "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    if-eq p2, v7, :cond_6

    return-void

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/samsung/android/settings/notification/SoundSettings;->mMessagePackageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sput-object v10, Lcom/samsung/android/settings/notification/SoundSettings;->isWifiOnly:Ljava/lang/Boolean;

    new-instance v10, Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "audio"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    sput-object v10, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string/jumbo v11, "power"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    sput-object v10, Lcom/samsung/android/settings/notification/SoundSettings;->mPowerManager:Landroid/os/PowerManager;

    const v10, 0x7f1500a9

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v10, "ds_ring_tone"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/samsung/android/settings/notification/SoundSettings;->mMessagePackageName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sput-object v10, Lcom/samsung/android/settings/notification/SoundSettings;->hasMessagePackage:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->initRingtones()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "ringtone"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v10, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    const-string/jumbo v10, "ringtone2"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v10, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/samsung/android/settings/notification/SoundSettings;)V

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.VIEW"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "tcoloring"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTcoloring:Landroid/support/v7/preference/Preference;

    const-string/jumbo v10, "Tcoloring"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_2

    :cond_1
    const-string/jumbo v10, "tcoloring"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v10, "ringtoyou"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtoyou:Landroid/support/v7/preference/Preference;

    const-string/jumbo v10, "Ringtoyou"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_4

    :cond_3
    const-string/jumbo v10, "ringtoyou"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v10, "feelring"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mFeelring:Landroid/support/v7/preference/Preference;

    const-string/jumbo v10, "FeelRing"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_6

    :cond_5
    const-string/jumbo v10, "feelring"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "Ringtone"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v10, "download_ringtone"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v10, "emergency_tone"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settings/SecDropDownPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->setHasOptionsMenu(Z)V

    sget-object v11, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    const/4 v10, 0x0

    array-length v12, v11

    :goto_0
    if-ge v10, v12, :cond_9

    aget-object v8, v11, v10

    invoke-virtual {v8, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_9
    const-string/jumbo v10, "dial_pad_tones"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDialKeypadTone:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v10, "screen_locking_sounds"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mScreenLockSound:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v10, "touch_sounds"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTouchSounds:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v10, "keyboard_sound"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardSound:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v10, "phone_vibration"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v10, "vibrate_when_ringing"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v10, "vibrate_on_touch"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v10, "keyboard_vibration"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v10, "volume_key_control"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDefaultVolumeControl:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDefaultVolumeControl:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v11, Lcom/samsung/android/settings/notification/SoundSettings$16;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/notification/SoundSettings$16;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_a
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v11, Lcom/samsung/android/settings/notification/SoundSettings$17;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/notification/SoundSettings$17;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v11, Lcom/samsung/android/settings/notification/SoundSettings$18;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/notification/SoundSettings$18;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1120096

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SecSwitchPreference;

    const v11, 0x7f121d8b

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v11, Lcom/samsung/android/settings/notification/SoundSettings$19;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/notification/SoundSettings$19;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_d

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isCoinDcPMIC(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string/jumbo v10, "vibration_feedback_intensity"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_c
    const-string/jumbo v10, "vibrate_on_touch"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v10, "keyboard_vibration"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v10, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    const-string/jumbo v10, "vibrate_on_touch"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v10, "keyboard_vibration"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_e
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string/jumbo v10, "phone_vibration"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v10, "vibrate_when_ringing"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_f
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    :cond_10
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v10

    if-eqz v10, :cond_15

    const-string/jumbo v10, "ringtone"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v10, "ringtone2"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v10, "ds_ring_tone"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/support/v7/preference/Preference;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/support/v7/preference/Preference;

    const v11, 0x7f12164d

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/support/v7/preference/Preference;

    new-instance v11, Lcom/samsung/android/settings/notification/SoundSettings$20;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/notification/SoundSettings$20;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_11
    const-string/jumbo v10, "zen_mode_dnd"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/android/settings/SecSettingsSwitchPreference;

    new-instance v11, Lcom/samsung/android/settings/notification/SoundSettings$21;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/notification/SoundSettings$21;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v10, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_12
    const-string/jumbo v10, "interval_sound_mode"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->IsMultiSoundSupported(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string/jumbo v10, "multi_sound"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_13
    const-string/jumbo v10, "stereo_sound"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v10, "notification_sound"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v10, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v10, "sound_effect"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-boolean v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "UPSM"

    const v12, 0x7f1500a9

    invoke-static {v10, v12, v11}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_16

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_3

    :cond_14
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SecSwitchPreference;

    const v11, 0x7f121d8c

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v10, "ringtone2"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v10, "ds_ring_tone"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_16
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_18

    :cond_17
    const-string/jumbo v10, "vibrations"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_18
    new-instance v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public onMusicPickerChosen(I)Landroid/content/Intent;
    .locals 9

    const/4 v8, 0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "audio/*"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x4000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "enable_ringtone_recommender"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "DocumentsUIPolicy"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    const-string/jumbo v6, "com.samsung.android.app.soundpicker"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v5, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.samsung.android.app.soundpicker"

    const-string/jumbo v7, "com.samsung.android.app.soundpicker.SoundPickerActivity"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v6, "SoundSettings"

    const-string/jumbo v7, "SoundPickerActivity is enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ne p1, v8, :cond_2

    invoke-virtual {p0, v3, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v6, "SoundSettings"

    const-string/jumbo v7, "startActivityForResult: requestCode : REQUEST_AUDIO_RINGTONE : 1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v6, "SoundSettings"

    const-string/jumbo v7, "startActivityForResult: requestCode : REQUEST_AUDIO_RINGTONE_2 : 2"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "helphub:section"

    const-string/jumbo v2, "ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->releaseListeners()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SoundsAndVibration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTcoloring:Landroid/support/v7/preference/Preference;

    if-eq p1, v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtoyou:Landroid/support/v7/preference/Preference;

    if-ne p1, v6, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "extra_prefs_show_button_bar"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "extra_prefs_set_back_text"

    const v7, 0x7f1220ea

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/notification/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "wifi_enable_next_on_connect"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v6, 0x3

    invoke-virtual {p0, v2, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    instance-of v6, p1, Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v6, :cond_c

    move-object v3, p1

    check-cast v3, Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v3}, Lcom/android/settings/DefaultRingtonePreference;->getRingtonePickerIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    if-ne p1, v6, :cond_b

    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v3}, Lcom/android/settings/DefaultRingtonePreference;->getRingtonePickerIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return v9

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mFeelring:Landroid/support/v7/preference/Preference;

    if-eq p1, v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardSound:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.android.settings"

    const-string/jumbo v8, "SRKS"

    invoke-static {v6, v7, v8}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTcoloring:Landroid/support/v7/preference/Preference;

    if-ne p1, v6, :cond_4

    const-string/jumbo v6, "http://www.tcoloring.com"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtoyou:Landroid/support/v7/preference/Preference;

    if-ne p1, v6, :cond_5

    const-string/jumbo v6, "http://ringtoyou.kt.com"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mFeelring:Landroid/support/v7/preference/Preference;

    if-ne p1, v6, :cond_6

    const-string/jumbo v6, "http://www.musicbellring.com"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "SoundSettings"

    const-string/jumbo v7, "Preference not found: "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v6, :cond_8

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.android.settings"

    const-string/jumbo v8, "SVKV"

    invoke-static {v6, v7, v8}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b04da

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    if-ne p1, v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v6

    return v6
.end method

.method public onResume()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshSoundMode()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshDNDmode()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->registerListeners()V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mStereoSound:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mStereoSound:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "pseudo_stereo_sound_settings"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v7, 0x7f1219f4

    invoke-virtual {v4, v7}, Landroid/app/Activity;->setTitle(I)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "vibrate_when_ringing"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "haptic_feedback_enabled"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "sip_key_feedback_vibration"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDefaultVolumeControl:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDefaultVolumeControl:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v7}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result v7

    if-ne v7, v5, :cond_a

    :goto_4
    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->updateDeviceVibrationName()V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v5, "no_adjust_volume"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v4, "zen_mode_dnd"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_5

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_5
    const-string/jumbo v4, "volume_setting"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecRestrictedPreference;

    const-string/jumbo v4, "no_adjust_volume"

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecRestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    array-length v5, v4

    :goto_5
    if-ge v6, v5, :cond_b

    aget-object v1, v4, v6

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    move v4, v6

    goto/16 :goto_0

    :cond_7
    move v4, v6

    goto/16 :goto_1

    :cond_8
    move v4, v6

    goto :goto_2

    :cond_9
    move v4, v6

    goto :goto_3

    :cond_a
    move v5, v6

    goto :goto_4

    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->setLinkedDataView()V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v7, "SoundsAndVibration"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method protected setZenMode(ILandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "SoundSettings"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public updateDeviceVibrationName()V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
