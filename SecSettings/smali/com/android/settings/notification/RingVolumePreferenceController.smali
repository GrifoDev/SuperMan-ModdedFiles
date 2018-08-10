.class public Lcom/android/settings/notification/RingVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "RingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/RingVolumePreferenceController$H;,
        Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Lcom/android/settings/notification/RingVolumePreferenceController$H;

.field private mHelper:Lcom/android/settings/notification/AudioHelper;

.field private final mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

.field private mRingerMode:I

.field private mSuppressor:Landroid/content/ComponentName;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/RingVolumePreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/RingVolumePreferenceController;)Lcom/android/settings/notification/RingVolumePreferenceController$H;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHandler:Lcom/android/settings/notification/RingVolumePreferenceController$H;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/RingVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/RingVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updateRingerMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/notification/RingVolumePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/notification/AudioHelper;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/notification/AudioHelper;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    new-instance v0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;)V

    iput-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

    new-instance v0, Lcom/android/settings/notification/RingVolumePreferenceController$H;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/notification/RingVolumePreferenceController$H;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;Lcom/android/settings/notification/RingVolumePreferenceController$H;)V

    iput-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHandler:Lcom/android/settings/notification/RingVolumePreferenceController$H;

    iput-object p4, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updateRingerMode()V

    return-void
.end method

.method private updateEffectsSuppressor()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mSuppressor:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/notification/SuppressorHelper;->getSuppressionText(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updatePreferenceIcon()V

    return-void
.end method

.method private updatePreferenceIcon()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    const v0, 0x1080390

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->wasRingerModeVibrate()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x1080391

    goto :goto_0

    :cond_3
    const v0, 0x108038f

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updatePreferenceIcon()V

    return-void
.end method

.method private wasRingerModeVibrate()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getAudioStream()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getMuteIcon()I
    .locals 1

    const v0, 0x1080390

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ring_volume"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->register(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updateEffectsSuppressor()V

    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updatePreferenceIcon()V

    return-void
.end method
