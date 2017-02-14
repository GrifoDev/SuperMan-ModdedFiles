.class public Lcom/android/incallui/bike/BikeModeAudioManager;
.super Ljava/lang/Object;
.source "BikeModeAudioManager.java"


# static fields
.field private static final ACTION_CHANGE_AUDIO_MIXMODE:Ljava/lang/String; = "com.android.careConnect.CHANGE_AUDIO_MIXMODE"

.field private static final GUIDANCE_SOUND_URI:Ljava/lang/String; = "android.resource://com.android.phone/raw/"

.field private static final LOG_TAG:Ljava/lang/String; = "BikeModeAudioManager"

.field private static final SOUND_LANGUAGE_EN_US:Ljava/lang/String; = "guidance_en_us"

.field private static final SOUND_LANGUAGE_PREFIX:Ljava/lang/String; = "guidance_"


# instance fields
.field private mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/incallui/bike/BikeModeController;

.field private mIsGuidancePlayed:Z

.field private mIsPluggedIn:Z

.field private mIsRingtonePlaying:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayTwice:Z

.field private mPrevInCallVolume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/bike/BikeModeController;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPlayTwice:Z

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mController:Lcom/android/incallui/bike/BikeModeController;

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsPluggedIn:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/incallui/bike/BikeModeAudioManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPlayTwice:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/bike/BikeModeAudioManager;)Lcom/android/incallui/bike/BikeModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mController:Lcom/android/incallui/bike/BikeModeController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/bike/BikeModeAudioManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/bike/BikeModeAudioManager;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    return v0
.end method


# virtual methods
.method public guidanceBeepSoundPlay()V
    .locals 5

    const-string v0, "android.resource://com.android.phone/raw/guidance_beep"

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v4, "android.resource://com.android.phone/raw/guidance_beep"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/incallui/bike/BikeModeAudioManager$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$5;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/incallui/bike/BikeModeAudioManager$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$6;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "BikeModeAudioManager"

    const-string v3, "guidanceBeepSoundPlay : Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isGuidancePlayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsGuidancePlayed:Z

    return v0
.end method

.method public isRingtonePlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    return v0
.end method

.method public onAudioStateChangedReceived(Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-eqz v2, :cond_0

    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "BikeModeAudioManager"

    const-string v3, "mBluetoothStateReceiver: HEADSET_AUDIO_STATE_CHANGED_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "BikeModeAudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> new state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    const-string v2, "BikeModeAudioManager"

    const-string v3, "set Speaker false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    iget v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v0, v5, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, v6, :cond_0

    const-string v2, "BikeModeAudioManager"

    const-string v3, "set Speaker true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method public onHeadsetPlugReceived(Landroid/content/Intent;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-eqz v4, :cond_0

    const-string v4, "state"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-boolean v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsPluggedIn:Z

    if-eq v4, v1, :cond_0

    const-string v4, "BikeModeAudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onHeadsetPluggedInChanged, mIsPluggedIn: ->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsPluggedIn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isPluggedIn: ->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsPluggedIn:Z

    iget-boolean v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsPluggedIn:Z

    if-nez v4, :cond_2

    const-string v3, "BikeModeAudioManager"

    const-string v4, "onHeadsetPluggedInChanged: set Speaker true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const-string v2, "BikeModeAudioManager"

    const-string v4, "onHeadsetPluggedInChanged: set Speaker false"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    iget v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v0, v3, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1
.end method

.method public onScreenOffReceived(Landroid/content/Intent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    :cond_0
    return-void
.end method

.method public playEnglishGuidance()V
    .locals 5

    const-string v1, "android.resource://com.android.phone/raw/guidance_en_us"

    const-string v2, "BikeModeAudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- sound path ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/incallui/bike/BikeModeAudioManager$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$1;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/incallui/bike/BikeModeAudioManager$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$2;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "BikeModeAudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playEnglishGuidance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playGuidance()V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v6, "BikeModeAudioManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audio Mode is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "callmemo_enabled=true"

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setMode(I)V

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPlayTwice:Z

    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "language_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v6, "en_GB"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v3, "en_US"

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "guidance_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://com.android.phone/raw/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BikeModeAudioManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- sound path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.samsung.BikeMode.StartDTMFRecognition"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v6, "BikeModeAudioManager"

    const-string v7, "broadcast com.samsung.BikeMode.StartDTMFRecognition"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    :try_start_0
    const-string v6, "dl_ringtone=true"

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v7, Lcom/android/incallui/bike/BikeModeAudioManager$3;

    invoke-direct {v7, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$3;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v7, Lcom/android/incallui/bike/BikeModeAudioManager$4;

    invoke-direct {v7, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$4;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v6, "BikeModeInCallUI_legacy"

    const-string v7, "BikeModeUtils : playGuidance : Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->playEnglishGuidance()V

    goto :goto_0
.end method

.method public playRingtone(Z)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    const-string v4, "callmemo_enabled=false"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v4, "BikeModeAudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prevInCallVolume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "BikeModeAudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playRingtone - playBMRingtone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/bike/BikeCallVibrator;->getInstance(Landroid/content/Context;)Lcom/android/incallui/bike/BikeCallVibrator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_1

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    if-eqz p1, :cond_3

    :try_start_0
    const-string v2, "android.resource://com.android.phone/raw/bike_mode_ringtone"

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v6, "android.resource://com.android.phone/raw/bike_mode_ringtone"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mController:Lcom/android/incallui/bike/BikeModeController;

    const/16 v5, 0x4e20

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/bike/BikeModeController;->startBikeModeTimer(II)V

    :goto_0
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v1

    const-string v4, "BikeModeAudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxRingtoneVolume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v8, :cond_4

    const/4 v4, 0x4

    if-eq v1, v4, :cond_4

    const-string v4, "BikeModeAudioManager"

    const-string v5, "playRingtone : set Speaker true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/incallui/bike/BikeModeAudioManager$7;

    invoke-direct {v5, p0, v0}, Lcom/android/incallui/bike/BikeModeAudioManager$7;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/AudioManager;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/incallui/bike/BikeModeAudioManager$8;

    invoke-direct {v5, p0, v0}, Lcom/android/incallui/bike/BikeModeAudioManager$8;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/AudioManager;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeCallVibrator;->isVibrating()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "all_sound_off"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeCallVibrator;->startVibration()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v4, "BikeModeAudioManager"

    const-string v5, "playRingtone : Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v0, v7, v4, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_2

    :cond_4
    :try_start_1
    const-string v4, "BikeModeInCallUI_legacy"

    const-string v5, "playRingtone : set Speaker false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public processDTMFResponse()V
    .locals 4

    const-string v2, "BikeModeAudioManager"

    const-string v3, "processDTMFResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const-string v2, "callmemo_enabled=false"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v2, "dl_ringtone=off"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopGuidance()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->playRingtone(Z)V

    :cond_1
    return-void
.end method

.method public setGuidancePlayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsGuidancePlayed:Z

    return-void
.end method

.method public stopGuidance()V
    .locals 3

    const-string v1, "BikeModeAudioManager"

    const-string v2, "BikeModeInCallUI_legacy: stopGuidance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "dl_ringtone=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public stopRingtone()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const-string v1, "BikeModeAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prevInCallVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v0, v4, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    const-string v1, "BikeModeAudioManager"

    const-string v2, "Ringtone Stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-virtual {v1}, Lcom/android/incallui/bike/BikeCallVibrator;->stopVibration()V

    :cond_2
    iput-boolean v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    return-void
.end method

.method public switchAudioRouting(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.careConnect.CHANGE_AUDIO_MIXMODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "audiomixMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
