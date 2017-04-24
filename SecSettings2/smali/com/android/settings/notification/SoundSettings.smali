.class public Lcom/android/settings/notification/SoundSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SoundSettings$1;,
        Lcom/android/settings/notification/SoundSettings$2;,
        Lcom/android/settings/notification/SoundSettings$3;,
        Lcom/android/settings/notification/SoundSettings$H;,
        Lcom/android/settings/notification/SoundSettings$Receiver;,
        Lcom/android/settings/notification/SoundSettings$SettingsObserver;,
        Lcom/android/settings/notification/SoundSettings$SummaryProvider;,
        Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAlarmRingtonePreference:Landroid/preference/Preference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings/notification/SoundSettings$H;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

.field private mRequestPreference:Lcom/android/settings/RingtonePreference;

.field private mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private final mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/SoundSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHandler:Lcom/android/settings/notification/SoundSettings$H;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/notification/SoundSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/notification/SoundSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/SoundSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "media_volume"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "alarm_volume"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "ring_volume"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification_volume"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/notification/SoundSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/SoundSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/notification/SoundSettings$3;

    invoke-direct {v0}, Lcom/android/settings/notification/SoundSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/SoundSettings;Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    new-instance v0, Lcom/android/settings/notification/SoundSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/SoundSettings$H;-><init>(Lcom/android/settings/notification/SoundSettings;Lcom/android/settings/notification/SoundSettings$H;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHandler:Lcom/android/settings/notification/SoundSettings$H;

    new-instance v0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    new-instance v0, Lcom/android/settings/notification/SoundSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/SoundSettings$Receiver;-><init>(Lcom/android/settings/notification/SoundSettings;Lcom/android/settings/notification/SoundSettings$Receiver;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    new-instance v0, Lcom/android/settings/notification/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$1;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    return-void
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7

    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    return-object v4

    :catch_0
    move-exception v0

    const-string/jumbo v5, "SoundSettings"

    const-string/jumbo v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private initRingtones()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "ringtone"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "notification_ringtone"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "alarm_ringtone"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/preference/Preference;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    goto :goto_0
.end method

.method private initVibrateWhenRinging()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SoundSettings"

    const-string/jumbo v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRinging()V

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/SoundSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/SoundSettings$4;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    invoke-virtual {v0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    return-object v0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateEffectsSuppressor()V
    .locals 6

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/SoundSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x10405d1

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const v0, 0x1080381

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->wasRingerModeVibrate()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x1080382

    goto :goto_0

    :cond_2
    const v0, 0x1080380

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget v1, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    return-void
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

.method private updateVibrateWhenRinging()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private wasRingerModeVibrate()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x150

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x1080381

    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    :goto_0
    const v3, 0x7f080122

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v3, "media_volume"

    const/4 v4, 0x3

    const v5, 0x108037b

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    const-string/jumbo v3, "alarm_volume"

    const/4 v4, 0x4

    const v5, 0x1080379

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-boolean v3, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "ring_volume"

    invoke-direct {p0, v3, v7, v8}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const-string/jumbo v3, "notification_volume"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "com.android.cellbroadcastreceiver"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v7, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "no_config_cell_broadcasts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string/jumbo v3, "cell_broadcast_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->initRingtones()V

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->initVibrateWhenRinging()V

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingerMode()V

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateEffectsSuppressor()V

    if-eqz p1, :cond_4

    const-string/jumbo v3, "selected_preference"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/RingtonePreference;

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    :cond_4
    return-void

    :cond_5
    iput-object v6, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v3, "notification_volume"

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4, v8}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const-string/jumbo v3, "ring_volume"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityPause()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v2}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/SoundSettings$Receiver;->register(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    instance-of v0, p2, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/RingtonePreference;

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 13

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    iget-object v7, p0, Lcom/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-virtual {v7, v9}, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    iget-object v7, p0, Lcom/android/settings/notification/SoundSettings;->mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

    invoke-virtual {v7, v9}, Lcom/android/settings/notification/SoundSettings$Receiver;->register(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateEffectsSuppressor()V

    iget-object v7, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v5}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "no_adjust_volume"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v7, v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "no_adjust_volume"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v7, v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    sget-object v11, Lcom/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    array-length v12, v11

    move v10, v8

    :goto_1
    if-ge v10, v12, :cond_5

    aget-object v3, v11, v10

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_3

    move v7, v8

    :goto_2
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    instance-of v7, v4, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v7, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    :goto_3
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    goto :goto_1

    :cond_3
    move v7, v9

    goto :goto_2

    :cond_4
    check-cast v4, Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_3

    :cond_5
    const-string/jumbo v7, "cell_broadcast_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_6

    const-string/jumbo v7, "no_config_cell_broadcasts"

    invoke-virtual {v1, v7}, Lcom/samsung/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "selected_preference"

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
