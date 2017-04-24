.class public Lcom/android/settings/notification/OtherSoundSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "OtherSoundSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/OtherSoundSettings$1;,
        Lcom/android/settings/notification/OtherSoundSettings$2;,
        Lcom/android/settings/notification/OtherSoundSettings$3;,
        Lcom/android/settings/notification/OtherSoundSettings$4;,
        Lcom/android/settings/notification/OtherSoundSettings$5;,
        Lcom/android/settings/notification/OtherSoundSettings$6;,
        Lcom/android/settings/notification/OtherSoundSettings$7;,
        Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;


# direct methods
.method static synthetic -get0()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/notification/OtherSoundSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/notification/OtherSoundSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 10

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$1;

    const-string/jumbo v2, "dial_pad_tones"

    const-string/jumbo v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string/jumbo v2, "screen_locking_sounds"

    const-string/jumbo v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/android/settings/notification/SettingPref;

    const-string/jumbo v5, "charging_sounds"

    const-string/jumbo v6, "charging_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$2;

    const-string/jumbo v5, "docking_sounds"

    const-string/jumbo v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$3;

    const-string/jumbo v2, "touch_sounds"

    const-string/jumbo v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$4;

    const-string/jumbo v2, "vibrate_on_touch"

    const-string/jumbo v3, "haptic_feedback_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$5;

    const-string/jumbo v5, "dock_audio_media"

    const-string/jumbo v6, "dock_audio_media_enabled"

    filled-new-array {v9, v4}, [I

    move-result-object v8

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$6;

    const-string/jumbo v5, "emergency_tone"

    const-string/jumbo v6, "emergency_tone"

    filled-new-array {v4, v1, v9}, [I

    move-result-object v8

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/notification/OtherSoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$7;

    invoke-direct {v0}, Lcom/android/settings/notification/OtherSoundSettings$7;-><init>()V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/OtherSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    return-void
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

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b1888

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x49

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0800b2

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/OtherSoundSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Landroid/preference/Preference;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    return-void
.end method
