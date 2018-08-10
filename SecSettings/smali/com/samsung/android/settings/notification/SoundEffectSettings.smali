.class public Lcom/samsung/android/settings/notification/SoundEffectSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundEffectSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SoundEffectSettings$1;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$2;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$3;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$4;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$5;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$6;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEYS:[Ljava/lang/String;

.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_K2HD:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SOUND_ALIVE:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TUBE_AMP:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TUBE_AMP_PRO:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_UHQ_UPSCALER:Lcom/android/settings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUPPORT_FW_FEATURE_LOGGING:Z

.field private static final SUPPORT_K2HD:Z

.field private static final SUPPORT_UPSCALER:Z

.field private static final sFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;


# instance fields
.field private currentUser:Landroid/content/pm/UserInfo;

.field private intentFilter:Landroid/content/IntentFilter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentAudioPath:I

.field private mEnabledSoundAlive:Z

.field private mEnabledTubeAmp:Z

.field private mEnabledUhqUpscaler:Z

.field private mMusicReceiver:Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

.field private mMySound:Landroid/support/v7/preference/PreferenceScreen;

.field private final mSettingsObserver:Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;

.field private mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_K2HD:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_UPSCALER:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/SoundEffectSettings;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/SoundEffectSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/SoundEffectSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/SoundEffectSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/SoundEffectSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->setDimSwitchPreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "uhq_upscaler"

    aput-object v2, v0, v6

    const-string/jumbo v2, "sound_alive"

    aput-object v2, v0, v4

    const-string/jumbo v2, "k2hd"

    aput-object v2, v0, v1

    const-string/jumbo v2, "tube_amp"

    aput-object v2, v0, v7

    const-string/jumbo v2, "tube_amp_pro"

    aput-object v2, v0, v8

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->KEYS:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$1;

    const-string/jumbo v2, "uhq_upscaler"

    const-string/jumbo v3, "k2hd_effect"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundEffectSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_UHQ_UPSCALER:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$2;

    const-string/jumbo v2, "sound_alive"

    const-string/jumbo v3, "sound_alive_effect"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundEffectSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_SOUND_ALIVE:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$3;

    const-string/jumbo v2, "k2hd"

    const-string/jumbo v3, "k2hd_effect"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundEffectSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_K2HD:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$4;

    const-string/jumbo v2, "tube_amp"

    const-string/jumbo v3, "tube_amp_effect"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundEffectSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_TUBE_AMP:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$5;

    const-string/jumbo v2, "tube_amp_pro"

    const-string/jumbo v3, "tube_amp_effect"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundEffectSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_TUBE_AMP_PRO:Lcom/android/settings/notification/SettingPref;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    sget-object v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_UHQ_UPSCALER:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v6

    sget-object v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_SOUND_ALIVE:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_K2HD:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_TUBE_AMP:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_TUBE_AMP_PRO:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v8

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->sFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    sget-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->sFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->sFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_VIRTUAL_UHQ_UPSCALER"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_UPSCALER:Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->sFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_K2HD_SOLUTION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_K2HD:Z

    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundEffectSettings$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/support/v7/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/SoundEffectSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledSoundAlive:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledUhqUpscaler:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledTubeAmp:Z

    iput v1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-boolean v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.settings.notification"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setDimSwitchPreference()V
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v6, 0x5

    if-ge v1, v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    if-eqz v6, :cond_1

    const-string/jumbo v4, ""

    packed-switch v1, :pswitch_data_0

    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x1

    invoke-static {v6, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v9, v6, v1

    if-eqz v5, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v9, 0x64

    if-lt v6, v9, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v9, 0xc8

    if-gt v6, v9, :cond_3

    :cond_0
    iget v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/TwoStatePreference;->setEnabled(Z)V

    :goto_3
    const-string/jumbo v6, "sound_alive_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/support/v7/preference/TwoStatePreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledSoundAlive:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    const-string/jumbo v4, "sound_alive_effect"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v4, "k2hd_effect"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v4, "tube_amp_effect"

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->currentUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/TwoStatePreference;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    :cond_4
    :try_start_2
    iget v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_7

    const-string/jumbo v6, "k2hd_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "bluetooth_a2dp_uhqa_support"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "bluetooth_a2dp_uhqa_mode"

    const/4 v10, 0x1

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v7, :cond_5

    if-ne v3, v7, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_7
    iget v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    if-nez v6, :cond_9

    const-string/jumbo v6, "sound_alive_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "2"

    const-string/jumbo v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_a
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledSoundAlive:Z

    goto/16 :goto_4

    :cond_b
    const-string/jumbo v6, "k2hd_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/support/v7/preference/TwoStatePreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledUhqUpscaler:Z

    goto/16 :goto_4

    :cond_c
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledUhqUpscaler:Z

    goto/16 :goto_4

    :cond_d
    const-string/jumbo v6, "tube_amp_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/support/v7/preference/TwoStatePreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/support/v7/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledTubeAmp:Z

    goto/16 :goto_4

    :cond_e
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledTubeAmp:Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfae

    return v0
.end method

.method public isAudioPathBTHeadphone()Z
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "audioParam;outDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAudioPathEarjack()Z
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "audioParam;curDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "HPH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAudioPathWFD()Z
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "audioParam;outDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->finishFragment()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SoundEffectSettings"

    const-string/jumbo v3, "SoundAlive app does not exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    sget-boolean v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledSoundAlive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "SESA"

    const-string/jumbo v2, "sound_alive"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledUhqUpscaler:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "SESA"

    const-string/jumbo v2, "k2hd"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledTubeAmp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "SESA"

    const-string/jumbo v2, "tube_amp"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;->register(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mMusicReceiver:Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mMySound:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SoundEffectSettings"

    const-string/jumbo v3, "Preference or mMySound is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mMySound:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.hearingadjust.launch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SoundEffectSettings"

    const-string/jumbo v3, " following activity com.sec.hearingadjust.launch  Not exist!! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mMusicReceiver:Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;->register(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v2

    if-eqz v2, :cond_0

    iput v5, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    :goto_0
    sget-object v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathWFD()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->setDimSwitchPreference()V

    return-void
.end method
