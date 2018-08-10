.class public Landroid/preference/SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SeekBarVolumizer$Callback;,
        Landroid/preference/SeekBarVolumizer$H;,
        Landroid/preference/SeekBarVolumizer$Observer;,
        Landroid/preference/SeekBarVolumizer$Receiver;
    }
.end annotation


# static fields
.field private static final BIXBY_STREAM_TYPE:I

.field private static final CHECK_RINGTONE_PLAYBACK_DELAY_MS:I = 0x3e8

.field private static final DISPLAY_PROFILE_EDIT:I = 0x1

.field private static final DISPLAY_SOUND_SETTING:I = 0x0

.field private static final DUAL_SIM:Z

.field private static final FINEVOLUME_MAX_INDEX:I = 0x96

.field private static final MSG_INIT_SAMPLE:I = 0x3

.field private static final MSG_SET_STREAM_VOLUME:I = 0x0

.field private static final MSG_START_SAMPLE:I = 0x1

.field private static final MSG_STOP_SAMPLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SeekBarVolumizer"


# instance fields
.field private final SIM_CHANGED_ACTION:Ljava/lang/String;

.field private final VOLUME_CHANGED_ACTION:Ljava/lang/String;

.field private isRingerUpdatedToAudio:Z

.field private mAffectedByRingerMode:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Landroid/preference/SeekBarVolumizer$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSimSlot:I

.field private mDefaultUri:Landroid/net/Uri;

.field private mDisplayType:I

.field private mEditMode:I

.field private mHandler:Landroid/os/Handler;

.field private mLastAudibleStreamVolume:I

.field private mLastProgress:I

.field private mLastWaitingToneVolume:I

.field private final mMaxStreamVolume:I

.field private mMuted:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationOrRing:Z

.field private mOriginalLastAudibleStreamVolume:I

.field private mOriginalNotificationVolume:I

.field private mOriginalRingerMode:I

.field private mOriginalStreamVolume:I

.field private mOriginalSystemVolume:I

.field private mProfileMode:I

.field private mProgressBgColor:Landroid/content/res/ColorStateList;

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private final mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

.field private mRingerMode:I

.field private mRingtone:Landroid/media/Ringtone;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private mSystemSampleStarted:Z

.field private mTelephonyService:Lcom/android/internal/telephony/ITelephony;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledColor:Landroid/content/res/ColorStateList;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mUiHandler:Landroid/preference/SeekBarVolumizer$H;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

.field private mZenMode:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Landroid/preference/SeekBarVolumizer;->BIXBY_STREAM_TYPE:I

    return v0
.end method

.method static synthetic -get1(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    return v0
.end method

.method static synthetic -get10(Landroid/preference/SeekBarVolumizer;)Landroid/media/Ringtone;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic -get11(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get12(Landroid/preference/SeekBarVolumizer;)I
    .locals 1

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method static synthetic -get13(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    return-object v0
.end method

.method static synthetic -get2(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get3(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    return-object v0
.end method

.method static synthetic -get4(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get6(Landroid/preference/SeekBarVolumizer;)I
    .locals 1

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    return v0
.end method

.method static synthetic -get7(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    return v0
.end method

.method static synthetic -get8(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get9(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    return v0
.end method

.method static synthetic -set0(Landroid/preference/SeekBarVolumizer;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set1(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    return p1
.end method

.method static synthetic -set2(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    return p1
.end method

.method static synthetic -set3(Landroid/preference/SeekBarVolumizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    return p1
.end method

.method static synthetic -set4(Landroid/preference/SeekBarVolumizer;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mProgressBgColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic -set5(Landroid/preference/SeekBarVolumizer;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mProgressColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic -set6(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    return p1
.end method

.method static synthetic -set7(Landroid/preference/SeekBarVolumizer;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mThumbColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic -set8(Landroid/preference/SeekBarVolumizer;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic -set9(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/preference/SeekBarVolumizer;I)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultNotificationUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/preference/SeekBarVolumizer;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->updateSlider()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    sput v0, Landroid/preference/SeekBarVolumizer;->BIXBY_STREAM_TYPE:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/preference/SeekBarVolumizer$H;

    invoke-direct {v1, p0, v4}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$H;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    new-instance v1, Landroid/preference/SeekBarVolumizer$Receiver;

    invoke-direct {v1, p0, v4}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$Receiver;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    iput-object v4, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    iput-boolean v7, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->SIM_CHANGED_ACTION:Ljava/lang/String;

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isVoiceCapable()Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v6, :cond_5

    const/16 v1, 0x5dc

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    :goto_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mAffectedByRingerMode:Z

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    :cond_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    iput-object p4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_waiting_tone"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(ZZ)V

    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mCurrentSimSlot:I

    if-nez p3, :cond_2

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v5, :cond_6

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultRingtoneUri()Landroid/net/Uri;

    move-result-object p3

    :cond_2
    :goto_1
    iput-object p3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    :cond_3
    :goto_2
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106025c

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mProgressColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106025f

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mProgressBgColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060292

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060291

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mThumbColor:Landroid/content/res/ColorStateList;

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultNotificationUri()Landroid/net/Uri;

    move-result-object p3

    goto/16 :goto_1

    :cond_7
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_8
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v7, :cond_9

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalSystemVolume:I

    goto/16 :goto_2

    :cond_9
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v5, :cond_3

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    goto/16 :goto_2
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private getDefaultNotificationUri()Landroid/net/Uri;
    .locals 2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mCurrentSimSlot:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private getDefaultRingtoneUri()Landroid/net/Uri;
    .locals 2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mCurrentSimSlot:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private getImpliedLevel(I)I
    .locals 4

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v1, v2, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    div-int/lit8 v0, v2, 0x64

    goto :goto_0

    :cond_1
    int-to-float v2, p1

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_0
.end method

.method private getImpliedMediaVolumeLevel(I)I
    .locals 0

    div-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "SeekBarVolumizer"

    const-string/jumbo v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private isNotificationOrRing(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private isUserInCall(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    if-nez v2, :cond_3

    :goto_2
    return v1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private isVoiceCapable()Z
    .locals 4

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Softphone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isZenMuted()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInitSample()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    sget v2, Landroid/preference/SeekBarVolumizer;->BIXBY_STREAM_TYPE:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const-string/jumbo v3, "BIXBY"

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception happens in onInitSample() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onStartSample()V
    .locals 6

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v3, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    :try_start_1
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :try_start_2
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string/jumbo v3, "SeekBarVolumizer"

    const-string/jumbo v4, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v3, "SeekBarVolumizer"

    const-string/jumbo v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const-string/jumbo v3, "SeekBarVolumizer"

    const-string/jumbo v4, "sample : mRingtone.play()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v5}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    const/16 v5, 0xc0

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    :cond_4
    return-void

    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "SeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error playing ringtone, stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private onStopSample()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private postSetVolume(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private postStartSample()V
    .locals 6

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->isUserInCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    sget v2, Landroid/preference/SeekBarVolumizer;->BIXBY_STREAM_TYPE:I

    if-eq v1, v2, :cond_2

    const/16 v0, 0x3e8

    :goto_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postStopSample()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private stopToneGenerator()V
    .locals 2

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_0
    return-void
.end method

.method private updateSlider()V
    .locals 5

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    invoke-virtual {v3, v2, v0, v1}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput-boolean v5, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v2, -0x64

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStartSample()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStopSample()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onInitSample()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public muteVolume()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/SeekBar;->setProgress(IZ)V

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1, v3}, Landroid/widget/SeekBar;->setProgress(IZ)V

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_3

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v2, v7, :cond_5

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->getImpliedMediaVolumeLevel(I)I

    move-result p2

    :cond_0
    :goto_0
    const-string/jumbo v2, "SeekBarVolumizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onProgressChanged : stream = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->stopToneGenerator()V

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_SupportPhoneProfile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mDisplayType:I

    if-ne v2, v6, :cond_1

    if-ge p2, v6, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-virtual {p0, p2}, Landroid/preference/SeekBarVolumizer;->setSeekBarVolume(I)V

    :goto_1
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v2, v6, :cond_3

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v2, v8, :cond_3

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v2, v7, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->startSample()V

    :cond_3
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/preference/SeekBarVolumizer$Callback;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result p2

    goto :goto_0

    :cond_6
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_9

    if-nez p2, :cond_7

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_7
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    if-nez p2, :cond_8

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_8
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto :goto_1

    :cond_9
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v2, v6, :cond_f

    const-string/jumbo v2, "SeekBarVolumizer"

    const-string/jumbo v3, "******onProgressChanged*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v2, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    :cond_a
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const-string/jumbo v2, "SeekBarVolumizer"

    const-string/jumbo v3, "don\'t play STREAM_SYSTEM in volumepreference."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string/jumbo v2, "SeekBarVolumizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onProgressChanged : AudioManager.STREAM_SYSTEM["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    :try_start_1
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v2

    if-nez v2, :cond_e

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-eq v2, p2, :cond_e

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    int-to-float v3, p2

    const/16 v4, 0x64

    invoke-virtual {v2, v4, v3}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mSystemSampleStarted:Z

    const-string/jumbo v2, "SeekBarVolumizer"

    const-string/jumbo v3, "sample : playSoundEffect()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_3
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SeekBarVolumizer"

    const-string/jumbo v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_e
    :try_start_2
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-ne v2, p2, :cond_d

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mSystemSampleStarted:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_f
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v2, v8, :cond_11

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volume_waiting_tone"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_10

    new-instance v2, Landroid/media/ToneGenerator;

    invoke-direct {v2, v8, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_10
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/ToneGenerator;->setVolume(F)V

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v3, 0x16

    const/16 v4, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto/16 :goto_1

    :cond_11
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v2, v7, :cond_12

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7, p2, v5}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto/16 :goto_1

    :cond_12
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto/16 :goto_1
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 2

    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Landroid/preference/SeekBarVolumizer;->mSystemSampleStarted:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result v2

    :try_start_0
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string/jumbo v3, "SeekBarVolumizer"

    const-string/jumbo v4, "[onStopTrackingTouch]don\'t play STREAM_SYSTEM in volumepreference."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    int-to-float v4, v2

    const/16 v5, 0x64

    invoke-virtual {v3, v5, v4}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    const-string/jumbo v3, "SeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[onStopTrackingTouch]sample : playSoundEffect() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SeekBarVolumizer"

    const-string/jumbo v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public revertVolume()V
    .locals 5

    const/high16 v4, 0x4000000

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_waiting_tone"

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalSystemVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_5
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :cond_1
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    goto :goto_1
.end method

.method public setSeekBarVolume(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    return-void
.end method

.method public start()V
    .locals 5

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v1, Landroid/preference/SeekBarVolumizer$Observer;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Landroid/preference/SeekBarVolumizer$Observer;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    return-void
.end method

.method public startSample()V
    .locals 4

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SeekBarVolumizer"

    const-string/jumbo v3, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SeekBarVolumizer"

    const-string/jumbo v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->stopToneGenerator()V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    return-void
.end method

.method public stopSample()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    return-void
.end method

.method protected updateSeekBar()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v1, v5, :cond_2

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    sget v2, Landroid/preference/SeekBarVolumizer;->BIXBY_STREAM_TYPE:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->getImpliedMediaVolumeLevel(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    :cond_3
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-eq v1, v0, :cond_4

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    :cond_4
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_7
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto/16 :goto_0
.end method
