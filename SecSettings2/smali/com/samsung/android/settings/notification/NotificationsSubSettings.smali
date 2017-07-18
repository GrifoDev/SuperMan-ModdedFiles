.class public Lcom/samsung/android/settings/notification/NotificationsSubSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NotificationsSubSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/NotificationsSubSettings$10;,
        Lcom/samsung/android/settings/notification/NotificationsSubSettings$11;,
        Lcom/samsung/android/settings/notification/NotificationsSubSettings$1;,
        Lcom/samsung/android/settings/notification/NotificationsSubSettings$2;,
        Lcom/samsung/android/settings/notification/NotificationsSubSettings$3;,
        Lcom/samsung/android/settings/notification/NotificationsSubSettings$4;,
        Lcom/samsung/android/settings/notification/NotificationsSubSettings$5;,
        Lcom/samsung/android/settings/notification/NotificationsSubSettings$6;,
        Lcom/samsung/android/settings/notification/NotificationsSubSettings$7;,
        Lcom/samsung/android/settings/notification/NotificationsSubSettings$8;,
        Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;,
        Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;,
        Lcom/samsung/android/settings/notification/NotificationsSubSettings$SettingsObserver;
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

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mAudioManager:Landroid/media/AudioManager;


# instance fields
.field private isKioskContainer:Z

.field private mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mCalendarPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialKeypadTone:Landroid/preference/SwitchPreference;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmail:Landroid/preference/Preference;

.field private mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

.field private final mHandler:Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;

.field private mIsEmerMode:Z

.field private mKeyboardSound:Landroid/preference/SwitchPreference;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mMessagePackageName:Ljava/lang/String;

.field private mMessages:Landroid/preference/Preference;

.field private mNotificationCategory:Landroid/preference/PreferenceCategory;

.field private mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

.field private mPhoneRingtone2Preference:Landroid/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtoneCategory:Landroid/preference/PreferenceCategory;

.field private mRingtonePreference_DS:Landroid/preference/Preference;

.field private mRingtoyou:Landroid/preference/Preference;

.field private mScreenLockSound:Landroid/preference/SwitchPreference;

.field private final mSettingsObserver:Lcom/samsung/android/settings/notification/NotificationsSubSettings$SettingsObserver;

.field private mSplanner:Landroid/preference/Preference;

.field private mTcoloring:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTouchSounds:Landroid/preference/SwitchPreference;

.field private mVoiceCapable:Z

.field private offset:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get1()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mHandler:Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->startRingtoneSetting()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$2;

    const-string/jumbo v2, "dial_pad_tones"

    const-string/jumbo v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string/jumbo v2, "screen_locking_sounds"

    const-string/jumbo v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$3;

    const-string/jumbo v2, "gps_notification_sounds"

    const-string/jumbo v3, "gps_noti_sound_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/android/settings/notification/SettingPref;

    const-string/jumbo v5, "charging_sounds"

    const-string/jumbo v6, "charging_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/samsung/android/settings/notification/NotificationsSubSettings$4;

    const-string/jumbo v5, "docking_sounds"

    const-string/jumbo v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$5;

    const-string/jumbo v2, "touch_sounds"

    const-string/jumbo v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string/jumbo v2, "keyboard_sound"

    const-string/jumbo v3, "sip_key_feedback_sound"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/samsung/android/settings/notification/NotificationsSubSettings$6;

    const-string/jumbo v5, "dock_audio_media"

    const-string/jumbo v6, "dock_audio_media_enabled"

    filled-new-array {v9, v4}, [I

    move-result-object v8

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/samsung/android/settings/notification/NotificationsSubSettings$7;

    const-string/jumbo v5, "emergency_tone"

    const-string/jumbo v6, "emergency_tone"

    filled-new-array {v4, v1, v9}, [I

    move-result-object v8

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$7;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$8;

    const-string/jumbo v2, "folder_sounds"

    const-string/jumbo v3, "folder_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$8;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    sget-object v2, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$10;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$10;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$1;-><init>(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/NotificationsSubSettings$SettingsObserver;

    new-instance v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;-><init>(Lcom/samsung/android/settings/notification/NotificationsSubSettings;Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mHandler:Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mIsEmerMode:Z

    iput v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mDirect:I

    iput-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mDirectUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->isKioskContainer:Z

    new-instance v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;-><init>(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$11;-><init>(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

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

    const-string/jumbo v4, "NotificationsSubSettings"

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

    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v5, "Inside cansetringtone ringtone uri not null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "content://media/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v5, "ringtoneUri.toString().contains(content:media)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v5, "drmClient.canHandle(ringtoneUri, null)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v5, "PR DRM File Ringtone Rights Invalid !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v5, "RingtoneManager.getRingtone(context, ringtoneUri)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v5, "returning false because rtTemp is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v5, "getRingtone() null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v1

    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v5, "canSetRingtone() exception !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_2
    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v5, "inside canSetRingtone ringtone uri is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultRingtoneName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Calendar_ConfigDefRingtoneName"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "On Time"

    return-object v1

    :cond_0
    return-object v0
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

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    const-string/jumbo v0, "ringtone2"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    goto :goto_0
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

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startRingtoneSetting()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.android.settings"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "sound title"

    iget-object v6, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string/jumbo v5, "gsm.sim.state"

    const-string/jumbo v6, "UNKNOWN"

    invoke-static {v5, v8, v6}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "gsm.sim.state"

    const-string/jumbo v6, "UNKNOWN"

    invoke-static {v5, v7, v6}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gsm.sim.currentcardstatus"

    const-string/jumbo v6, "9"

    invoke-static {v5, v8, v6}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "gsm.sim.currentcardstatus"

    const-string/jumbo v6, "9"

    invoke-static {v5, v7, v6}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const-string/jumbo v5, "sound title"

    iget-object v6, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.settings.RingtoneSettingTabActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string/jumbo v5, "3"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string/jumbo v5, "READY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string/jumbo v5, "sim Id"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v6, v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "phone2_on"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_4

    const-string/jumbo v5, "sim Id"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "sim Id"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 13

    const/4 v12, 0x0

    const-string/jumbo v9, "NotificationsSubSettings"

    const-string/jumbo v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "NotificationsSubSettings"

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

    const-string/jumbo v9, "NotificationsSubSettings"

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

    const-string/jumbo v9, "NotificationsSubSettings"

    const-string/jumbo v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_1
    if-nez v4, :cond_2

    const-string/jumbo v9, "3ga"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "NotificationsSubSettings"

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

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v9, "NotificationsSubSettings"

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

    const-string/jumbo v9, "NotificationsSubSettings"

    const-string/jumbo v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v12
.end method

.method private updateRingtoneData(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->lookupRingtoneNames()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->lookupRingtoneNames()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 10

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v0, "NotificationsSubSettings"

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

    const v0, 0x7f0b18a4

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 7

    const v6, 0x7f0b09ea

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "NotificationsSubSettings"

    const-string/jumbo v3, "handleRingtonePicked() : Not changed"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string/jumbo v2, "NotificationsSubSettings"

    const-string/jumbo v3, "updateRingtoneData(ringtoneType)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->updateRingtoneData(I)V

    return-void

    :cond_2
    const-string/jumbo v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "NotificationsSubSettings"

    const-string/jumbo v3, "Inside cansetringtone false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    const-string/jumbo v2, "NotificationsSubSettings"

    const-string/jumbo v3, "handleRingtonePicked updating media DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_4

    const-string/jumbo v2, "NotificationsSubSettings"

    const-string/jumbo v3, "handleRingtonePicked - pickedUri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "is_ringtone"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v2, "NotificationsSubSettings"

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

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->offset:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/16 v2, 0x80

    if-ne p2, v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "recommendation_time_2"

    iget-object v4, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "recommendation_time"

    iget-object v4, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "NotificationsSubSettings"

    const-string/jumbo v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v7, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v4, "NotificationsSubSettings"

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

    iput-object v4, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->offset:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

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

    iput-object v4, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->offset:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->isConnected(Landroid/content/Context;)Z

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

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->startActivity(Landroid/content/Intent;)V

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

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "NotificationsSubSettings"

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
    .locals 12

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mVoiceCapable:Z

    const-string/jumbo v9, "audio"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    sput-object v9, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v9, "phone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v9, 0x7f0800b0

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v9, "ds_ring_tone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->initRingtones()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "ringtone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    const-string/jumbo v9, "ringtone2"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v9, "tcoloring"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mTcoloring:Landroid/preference/Preference;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "Tcoloring"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "tcoloring"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v9, "ringtoyou"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtoyou:Landroid/preference/Preference;

    const-string/jumbo v9, "Ringtoyou"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "ringtoyou"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "Ringtone"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "download_ringtone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessagePackageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessagePackageName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_4
    const-string/jumbo v9, "mms_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "mms_sound_ds"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settingslib/Utils;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mCalendarPackageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mCalendarPackageName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string/jumbo v9, "splanner_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    :cond_5
    :goto_1
    const/4 v1, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.samsung.android.email.provider"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string/jumbo v9, "email_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v9, "emergency_tone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecDropDownPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->setHasOptionsMenu(Z)V

    const-string/jumbo v9, "notification_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    const-string/jumbo v9, "notification_sound_category"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mNotificationCategory:Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v9, :cond_7

    const-string/jumbo v9, "notification_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mNotificationCategory:Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_8

    const-string/jumbo v9, "notification_sound_category"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    :cond_8
    :goto_3
    sget-object v10, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    const/4 v9, 0x0

    array-length v11, v10

    :goto_4
    if-ge v9, v11, :cond_13

    aget-object v7, v10, v9

    invoke-virtual {v7, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Landroid/preference/Preference;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_c

    const-string/jumbo v9, "mms_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "mms_sound_ds"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    :cond_a
    :goto_5
    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessagePackageName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->getLabelPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    const v9, 0x7f0b0457

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_b
    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const v11, 0x7f0b0984

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v9, "mms_sound_ds"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "mms_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessagePackageName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    :cond_d
    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mCalendarPackageName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->getLabelPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    const v9, 0x7f0b0459

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_e
    const-string/jumbo v9, "splanner_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mSplanner:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mSplanner:Landroid/preference/Preference;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const v11, 0x7f0b0984

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mSplanner:Landroid/preference/Preference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mCalendarPackageName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mSplanner:Landroid/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_f
    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.samsung.android.email.provider"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->getLabelPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    const v9, 0x7f0b0458

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_10
    const-string/jumbo v9, "email_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmail:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmail:Landroid/preference/Preference;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const v11, 0x7f0b0984

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->getNumberOfEmailAccount(Landroid/content/Context;)I

    move-result v6

    if-nez v6, :cond_11

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmail:Landroid/preference/Preference;

    const v10, 0x7f0b0985

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(I)V

    const-string/jumbo v9, "email_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmail:Landroid/preference/Preference;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_12
    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_3

    :cond_13
    const-string/jumbo v9, "dial_pad_tones"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;

    const-string/jumbo v9, "screen_locking_sounds"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;

    const-string/jumbo v9, "touch_sounds"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mTouchSounds:Landroid/preference/SwitchPreference;

    const-string/jumbo v9, "keyboard_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_14

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mIsEmerMode:Z

    :cond_14
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v9

    if-eqz v9, :cond_16

    const-string/jumbo v9, "ringtone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "ringtone2"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    :goto_6
    const-string/jumbo v9, "ds_ring_tone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    const v10, 0x7f0b0972

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    new-instance v10, Lcom/samsung/android/settings/notification/NotificationsSubSettings$12;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$12;-><init>(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)V

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_15
    iget-boolean v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mIsEmerMode:Z

    if-eqz v9, :cond_18

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "UPSM"

    const v11, 0x7f0800af

    invoke-static {v9, v11, v10}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_7

    :cond_16
    const-string/jumbo v9, "ringtone2"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "ds_ring_tone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_6

    :cond_17
    const-string/jumbo v9, "notification_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v9, :cond_18

    const-string/jumbo v9, "notification_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    :cond_18
    const-string/jumbo v9, "ringtones_category"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtoneCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_19

    iget-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtoneCategory:Landroid/preference/PreferenceCategory;

    const v10, 0x7f0b0997

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    :cond_19
    const-string/jumbo v9, "ringtones_category"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "notification_pulse"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "ringtone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "ringtone2"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "tcoloring"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "ringtoyou"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "ds_ring_tone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "dial_pad_tones"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "screen_locking_sounds"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "charging_sounds"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "docking_sounds"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "gps_notification_sounds"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "touch_sounds"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "folder_sounds"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "keyboard_sound"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "dock_audio_media"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "emergency_tone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "download_ringtone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "system_sounds"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    new-instance v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mIsEmerMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    return-void
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

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->startActivity(Landroid/content/Intent;)V

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

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/NotificationsSubSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$SettingsObserver;->register(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "NotificationSounds"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mTcoloring:Landroid/preference/Preference;

    if-eq p2, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v2, :cond_5

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "extra_prefs_set_back_text"

    const v3, 0x7f0b1757

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mTcoloring:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    const-string/jumbo v2, "http://www.tcoloring.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v2, :cond_4

    const-string/jumbo v2, "http://ringtoyou.olleh.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "NotificationsSubSettings"

    const-string/jumbo v3, "Preference not found: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    if-ne p2, v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "SRMN"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mSplanner:Landroid/preference/Preference;

    if-ne p2, v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "SRSN"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmail:Landroid/preference/Preference;

    if-ne p2, v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "SREN"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "SRKS"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 32

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->lookupRingtoneNames()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/NotificationsSubSettings$SettingsObserver;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$SettingsObserver;->register(Z)V

    sget-object v4, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mCalendarPackageName:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mCalendarPackageName:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v6, "S Planner app disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mSplanner:Landroid/preference/Preference;

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessagePackageName:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v9, "NotificationSounds"

    invoke-virtual {v4, v6, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string/jumbo v15, "com.sec.android.calendar.preference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "content://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/Preference"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getDefaultRingtoneName()Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    :try_start_0
    const-string/jumbo v5, "preferences_alerts_ringtone"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calendar preference URI string : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calendar URI string : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v18, :cond_5

    const-string/jumbo v18, ""

    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v6, "Calendar URI string is null. Set empty "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v4, "content:"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v27

    if-eqz v27, :cond_7

    if-nez v28, :cond_c

    :cond_7
    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v6, "Calendar summary changed to Silent"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const v6, 0x10403df

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    :cond_8
    :goto_3
    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calendar summary : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "-1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "default"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    invoke-static {}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getDefaultRingtoneName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calendar summary show getDefaultRingtoneName() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mSplanner:Landroid/preference/Preference;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :catch_0
    move-exception v21

    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catch_1
    move-exception v29

    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    if-eqz v16, :cond_b

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v4

    :cond_c
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "content://settings/system/notification_sound"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b1317

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-nez v28, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const v6, 0x10403df

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v6, "Calendar tone : ringtoneUri == null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calendar tone title : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calendar tone title : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "(\\(.*\\))"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calendar tone title notificationName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v18, v17

    goto/16 :goto_3

    :cond_f
    if-lez v22, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calendar tone index > 0 notificationName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calendar tone index <= 0 notificationName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessagePackageName:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_14

    :cond_13
    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v6, "Message app disabled or MultiSIM enabled"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v4, "content://com.android.mms.csc.PreferenceProvider/key"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v7, "string"

    const/16 v26, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v6, 0x5

    if-ne v6, v4, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "phone2_on"

    const/4 v8, 0x1

    invoke-static {v4, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1b

    const-string/jumbo v25, "pref_key_ringtone_sim2"

    :goto_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v25, v8, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_15

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string/jumbo v4, "pref_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v26

    :cond_15
    if-eqz v16, :cond_16

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_16
    :goto_5
    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Message URI string : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string/jumbo v4, "content://"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_17
    :goto_6
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    if-nez v26, :cond_18

    const-string/jumbo v26, ""

    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v6, "Message URI string is null. Set empty "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v27

    if-eqz v27, :cond_19

    if-nez v28, :cond_23

    :cond_19
    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v6, "Message summary changed to Silent"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const v6, 0x10403df

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    :cond_1a
    :goto_7
    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "summary : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v6, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_1c

    const-string/jumbo v25, "pref_key_ringtone_two_phone_B"

    goto/16 :goto_4

    :cond_1c
    const-string/jumbo v25, "pref_key_ringtone"

    goto/16 :goto_4

    :catch_2
    move-exception v21

    if-eqz v16, :cond_16

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :catch_3
    move-exception v29

    if-eqz v16, :cond_16

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :catchall_1
    move-exception v4

    if-eqz v16, :cond_1d

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1d
    throw v4

    :cond_1e
    const/16 v16, 0x0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const-string/jumbo v4, "title"

    const/4 v6, 0x0

    aput-object v4, v10, v6

    const-string/jumbo v11, "_data=?"

    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v26, v12, v4

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_1f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v30

    :cond_1f
    :goto_8
    if-eqz v16, :cond_17

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :goto_9
    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_20
    :try_start_3
    const-string/jumbo v26, "content://settings/system/notification_sound"
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_8

    :catch_4
    move-exception v20

    :try_start_4
    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IllegalArgumentException when query ringtone title"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v16, :cond_17

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :catch_5
    move-exception v19

    :try_start_5
    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error when query ringtone title"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v16, :cond_17

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :catchall_2
    move-exception v4

    if-eqz v16, :cond_21

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_22

    :cond_21
    :goto_a
    throw v4

    :cond_22
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    const/16 v16, 0x0

    goto :goto_a

    :cond_23
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    const-string/jumbo v4, "content://settings/system/notification_sound"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b1317

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-nez v28, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const v6, 0x10403df

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v4, "NotificationsSubSettings"

    const-string/jumbo v6, "Message tone : ringtoneUri == null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Message tone title : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_7

    :cond_24
    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Message tone title : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "(\\(.*\\))"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Message tone title notificationName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v30, v17

    goto/16 :goto_7

    :cond_26
    if-lez v22, :cond_27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Message tone index > 0 notificationName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Message tone index <= 0 notificationName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_7
.end method
