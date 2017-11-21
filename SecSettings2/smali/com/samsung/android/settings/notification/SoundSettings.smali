.class public Lcom/samsung/android/settings/notification/SoundSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
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

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceVibration:Landroid/preference/PreferenceScreen;

.field private mDialKeypadTone:Landroid/preference/SwitchPreference;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

.field private mFeelring:Landroid/preference/Preference;

.field private final mHandler:Lcom/samsung/android/settings/notification/SoundSettings$H;

.field private mIntervalSoundMode:Landroid/preference/PreferenceScreen;

.field private mIsEmerMode:Z

.field private mKeyboardSound:Landroid/preference/SwitchPreference;

.field private mKeyboardVibration:Landroid/preference/SwitchPreference;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

.field private mPhoneRingtone2Preference:Landroid/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtonePreference_DS:Landroid/preference/Preference;

.field private mRingtoyou:Landroid/preference/Preference;

.field private mScreenLockSound:Landroid/preference/SwitchPreference;

.field private final mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

.field private mSoundEffects:Landroid/preference/PreferenceScreen;

.field private mSoundMode:Lcom/android/settings/SecDropDownPreference;

.field private mSubNtofications:Landroid/preference/PreferenceScreen;

.field private mTcoloring:Landroid/preference/Preference;

.field private mTouchSounds:Landroid/preference/SwitchPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrateWhenRinging:Landroid/preference/SwitchPreference;

.field private mVibrationOnTouch:Landroid/preference/SwitchPreference;

.field private mVoiceCapable:Z

.field private mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

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

.method static synthetic -get10(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTouchSounds:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/notification/SoundSettings$H;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mHandler:Lcom/samsung/android/settings/notification/SoundSettings$H;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic -set0(Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
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

    invoke-static {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshDNDmode()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshSoundMode()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->startRingtoneSetting()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v2, "zen_mode"

    aput-object v2, v0, v9

    const-string/jumbo v2, "zen_mode_dnd"

    aput-object v2, v0, v4

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$1;

    const-string/jumbo v2, "dial_pad_tones"

    const-string/jumbo v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$2;

    const-string/jumbo v2, "screen_locking_sounds"

    const-string/jumbo v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$3;

    const-string/jumbo v2, "gps_notification_sounds"

    const-string/jumbo v3, "gps_noti_sound_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/samsung/android/settings/notification/SoundSettings$4;

    const-string/jumbo v5, "charging_sounds"

    const-string/jumbo v6, "charging_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/notification/SoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/samsung/android/settings/notification/SoundSettings$5;

    const-string/jumbo v5, "docking_sounds"

    const-string/jumbo v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/notification/SoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$6;

    const-string/jumbo v2, "touch_sounds"

    const-string/jumbo v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$7;

    const-string/jumbo v2, "keyboard_sound"

    const-string/jumbo v3, "sip_key_feedback_sound"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$7;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/samsung/android/settings/notification/SoundSettings$8;

    const-string/jumbo v5, "dock_audio_media"

    const-string/jumbo v6, "dock_audio_media_enabled"

    filled-new-array {v9, v4}, [I

    move-result-object v8

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/notification/SoundSettings$8;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/samsung/android/settings/notification/SoundSettings$9;

    const-string/jumbo v5, "emergency_tone"

    const-string/jumbo v6, "emergency_tone"

    filled-new-array {v4, v1, v9}, [I

    move-result-object v8

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/notification/SoundSettings$9;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$10;

    const-string/jumbo v2, "folder_sounds"

    const-string/jumbo v3, "folder_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$10;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

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

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$12;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundSettings$12;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$13;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundSettings$13;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDirect:I

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDirectUri:Landroid/net/Uri;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$H;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings$H;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;Lcom/samsung/android/settings/notification/SoundSettings$H;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mHandler:Lcom/samsung/android/settings/notification/SoundSettings$H;

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundSettings$11;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundSettings$14;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
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

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private initRingtones()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    const-string/jumbo v0, "ringtone2"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    goto :goto_0
.end method

.method private initSoundMode()V
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v5, "sound_mode"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SecDropDownPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    if-eqz v5, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v5, v7}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0b1310

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0b09eb

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v5, v4, v7

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const v5, 0x7f0b09ec

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v5, v1}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    new-instance v6, Lcom/samsung/android/settings/notification/SoundSettings$20;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/notification/SoundSettings$20;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
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
    .locals 9

    const v4, 0x7f0b19dc

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "zen_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v3, v4

    :goto_0
    if-eq v3, v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    const-string/jumbo v7, "twschedule"

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_1

    const v3, 0x7f0b09d6

    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v4, :cond_2

    const v3, 0x7f0b09cb

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "zen_mode"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "zen_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    :goto_4
    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    :cond_3
    return-void

    :cond_4
    const v3, 0x7f0b19dd

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v4, v6

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_3

    :cond_8
    move v5, v6

    goto :goto_4
.end method

.method private refreshSoundMode()V
    .locals 9

    const v8, 0x7f0b1310

    const v7, 0x7f0b09ec

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    if-ne v6, v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_0
    const-string/jumbo v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshSoundMode : ringerMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    rsub-int/lit8 v0, v1, 0x2

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    if-ne v1, v5, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0b09eb

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_4
    if-ne v1, v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    if-ne v1, v5, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    if-ne v1, v5, :cond_a

    :cond_9
    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private registerListeners()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/notification/SoundSettings$21;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SoundSettings$21;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

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

.method private startRingtoneSetting()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.settings"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "sound title"

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string/jumbo v6, "gsm.sim.state"

    const-string/jumbo v7, "UNKNOWN"

    invoke-static {v6, v9, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "gsm.sim.state"

    const-string/jumbo v7, "UNKNOWN"

    invoke-static {v6, v8, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "gsm.sim.currentcardstatus"

    const-string/jumbo v7, "9"

    invoke-static {v6, v9, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "gsm.sim.currentcardstatus"

    const-string/jumbo v7, "9"

    invoke-static {v6, v8, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const-string/jumbo v6, "sound title"

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.settings.RingtoneSettingTabActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string/jumbo v6, "3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "3"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const-string/jumbo v6, "READY"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string/jumbo v6, "sim Id"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    const/4 v7, 0x5

    if-ne v7, v6, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "phone2_on"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_4

    const-string/jumbo v6, "sim Id"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "sim Id"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
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

    const v0, 0x10403e1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v1, :cond_2

    const v0, 0x10403df

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

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b18a8

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x150

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 7

    const v6, 0x7f0b09f5

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
    .locals 14

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v11, Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v12, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v8}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v12, 0x7f0b0202

    iput v12, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "com.android.settings.Settings$AccessibilitySettingsHearingActivity"

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v3, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    iget-object v12, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "pick_up_switch"

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v9}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v12, 0x7f0b090c

    iput v12, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "com.android.settings.Settings$UsefulFeatureActivity"

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "type"

    const-string/jumbo v13, "pick_up_switch"

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v4, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v9}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    :cond_0
    const/4 v6, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string/jumbo v13, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, ","

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_1

    aget-object v12, v1, v2

    const-string/jumbo v13, "merged_mute_or_pause_switch"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v6, 0x0

    :cond_1
    iget-object v12, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "merged_mute_or_pause_switch"

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v6, :cond_2

    new-instance v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v10}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v12, 0x7f0b090d

    iput v12, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "com.android.settings.Settings$UsefulFeatureActivity"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "type"

    const-string/jumbo v13, "merged_mute_or_pause_switch"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v5, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v10}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getListView()Landroid/widget/ListView;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v7, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

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

    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    :pswitch_1
    if-eq p2, v7, :cond_2

    return-void

    :cond_2
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

    const-string/jumbo v4, "http://ringtoyou.olleh.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const v12, 0x7f0800af

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "power"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->mPowerManager:Landroid/os/PowerManager;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b1310

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/notification/SoundSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v8, "ds_ring_tone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->initRingtones()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "ringtone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v8, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v8, v11}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    const-string/jumbo v8, "ringtone2"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v8, v11}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v8, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/samsung/android/settings/notification/SoundSettings;)V

    const-string/jumbo v8, "tcoloring"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTcoloring:Landroid/preference/Preference;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "Tcoloring"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "tcoloring"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v8, "ringtoyou"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtoyou:Landroid/preference/Preference;

    const-string/jumbo v8, "Ringtoyou"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "ringtoyou"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v8, "feelring"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mFeelring:Landroid/preference/Preference;

    const-string/jumbo v8, "FeelRing"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "feelring"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "Ringtone"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "download_ringtone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v8, "emergency_tone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SecDropDownPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v8, v11}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->setHasOptionsMenu(Z)V

    sget-object v9, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_9

    aget-object v6, v9, v8

    invoke-virtual {v6, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Landroid/preference/Preference;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0478

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0992

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v8, "dial_pad_tones"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;

    const-string/jumbo v8, "screen_locking_sounds"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;

    const-string/jumbo v8, "touch_sounds"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTouchSounds:Landroid/preference/SwitchPreference;

    const-string/jumbo v8, "keyboard_sound"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    const-string/jumbo v8, "phone_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v8, "vibrate_when_ringing"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    const-string/jumbo v8, "vibrate_on_touch"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    const-string/jumbo v8, "keyboard_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$15;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$15;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$16;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$16;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$17;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$17;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_14

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v8, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v8, v11, :cond_a

    const-string/jumbo v8, "vibrate_on_touch"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v8, "keyboard_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_a
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string/jumbo v8, "phone_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v8, "vibrate_when_ringing"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v8, "ringtone_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_b
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    iput-boolean v11, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v8

    if-eqz v8, :cond_16

    const-string/jumbo v8, "ringtone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v8, "ringtone2"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :goto_3
    const-string/jumbo v8, "ds_ring_tone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    const v9, 0x7f0b097d

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$18;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$18;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_d
    const-string/jumbo v8, "zen_mode_dnd"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$19;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$19;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v8

    if-eqz v8, :cond_17

    :cond_e
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v8

    if-eqz v8, :cond_19

    const-string/jumbo v8, "sound_mode"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v8, "interval_sound_mode"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_5
    sget-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z

    move-result v8

    if-nez v8, :cond_10

    const-string/jumbo v8, "multi_sound"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_10
    const-string/jumbo v8, "notifications_sub_settings"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v8

    if-nez v8, :cond_11

    invoke-static {}, Lcom/android/settingslib/Utils;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.calendar"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    :cond_11
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0b09a4

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0b09a7

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_12
    :goto_6
    const-string/jumbo v8, "sound_effect"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_13

    :cond_13
    iget-boolean v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "UPSM"

    invoke-static {v8, v12, v9}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_1c

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_7

    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isCoinDcPMIC(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_15

    const-string/jumbo v8, "vibration_feedback_intensity"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_15
    const-string/jumbo v8, "vibrate_on_touch"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v8, "keyboard_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v8, "ringtone2"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v8, "ds_ring_tone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_17
    const-string/jumbo v8, "dnd_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v8

    if-eqz v8, :cond_18

    const-string/jumbo v8, "zen_mode_dnd"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOrder(I)V

    goto/16 :goto_4

    :cond_18
    const-string/jumbo v8, "zen_mode_dnd"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_19
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->initSoundMode()V

    const-string/jumbo v8, "interval_sound_mode"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0b09a5

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_6

    :cond_1b
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0b09a6

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_6

    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1e

    :cond_1d
    :goto_8
    new-instance v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_1e
    const-string/jumbo v8, "vibrations"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public onMusicPickerChosen(I)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "enable_ringtone_recommender"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "DocumentsUIPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v1, "SoundSettings"

    const-string/jumbo v2, "startActivityForResult: requestCode : REQUEST_AUDIO_RINGTONE : 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v1, "SoundSettings"

    const-string/jumbo v2, "startActivityForResult: requestCode : REQUEST_AUDIO_RINGTONE_2 : 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->releaseListeners()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SoundsAndVibration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTcoloring:Landroid/preference/Preference;

    if-eq p2, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SoundSettings;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "extra_prefs_show_button_bar"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "extra_prefs_set_back_text"

    const v5, 0x7f0b175b

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "wifi_enable_next_on_connect"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mFeelring:Landroid/preference/Preference;

    if-eq p2, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "SRKS"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTcoloring:Landroid/preference/Preference;

    if-ne p2, v4, :cond_4

    const-string/jumbo v4, "http://www.tcoloring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v4, :cond_5

    const-string/jumbo v4, "http://ringtoyou.olleh.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mFeelring:Landroid/preference/Preference;

    if-ne p2, v4, :cond_6

    const-string/jumbo v4, "http://www.musicbellring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "Preference not found: "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_8

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "SVKV"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100120

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshSoundMode()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshDNDmode()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->registerListeners()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "vibrate_when_ringing"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "haptic_feedback_enabled"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "sip_key_feedback_vibration"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->updateDeviceVibrationName()V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v7, "no_adjust_volume"

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    sget-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    array-length v9, v8

    move v7, v6

    :goto_3
    if-ge v7, v9, :cond_8

    aget-object v1, v8, v7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_7

    move v4, v6

    :goto_4
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_3

    :cond_4
    move v4, v6

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_1

    :cond_6
    move v4, v6

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_4

    :cond_8
    sget-object v4, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    array-length v5, v4

    :goto_5
    if-ge v6, v5, :cond_9

    aget-object v3, v4, v6

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
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
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

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

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method
