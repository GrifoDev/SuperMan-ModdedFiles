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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/incallui/bike/BikeModeController;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPlayTwice:Z

    .line 63
    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mController:Lcom/android/incallui/bike/BikeModeController;

    .line 66
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 67
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsPluggedIn:Z

    .line 68
    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/bike/BikeModeAudioManager;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/incallui/bike/BikeModeAudioManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/bike/BikeModeAudioManager;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPlayTwice:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/bike/BikeModeAudioManager;)Lcom/android/incallui/bike/BikeModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/bike/BikeModeAudioManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mController:Lcom/android/incallui/bike/BikeModeController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/bike/BikeModeAudioManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/bike/BikeModeAudioManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/bike/BikeModeAudioManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/bike/BikeModeAudioManager;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    return v0
.end method


# virtual methods
.method public guidanceBeepSoundPlay()V
    .locals 5

    .prologue
    .line 213
    const-string v0, "android.resource://com.android.phone/raw/guidance_beep"

    .line 215
    .local v0, "beepPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 217
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 218
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    .line 221
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 224
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v4, "android.resource://com.android.phone/raw/guidance_beep"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 225
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 226
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 227
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 229
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/incallui/bike/BikeModeAudioManager$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$5;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 248
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/incallui/bike/BikeModeAudioManager$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$6;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "BikeModeAudioManager"

    const-string v3, "guidanceBeepSoundPlay : Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isGuidancePlayed()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsGuidancePlayed:Z

    return v0
.end method

.method public isRingtonePlaying()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    return v0
.end method

.method public onAudioStateChangedReceived(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 385
    iget-boolean v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-eqz v2, :cond_0

    .line 386
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 388
    .local v1, "bluetoothHeadsetAudioState":I
    const-string v2, "BikeModeAudioManager"

    const-string v3, "mBluetoothStateReceiver: HEADSET_AUDIO_STATE_CHANGED_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
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

    .line 391
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 392
    .local v0, "am":Landroid/media/AudioManager;
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 393
    const-string v2, "BikeModeAudioManager"

    const-string v3, "set Speaker false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 395
    iget v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v0, v5, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 401
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "bluetoothHeadsetAudioState":I
    :cond_0
    :goto_0
    return-void

    .line 396
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v1    # "bluetoothHeadsetAudioState":I
    :cond_1
    if-ne v1, v6, :cond_0

    .line 397
    const-string v2, "BikeModeAudioManager"

    const-string v3, "set Speaker true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method public onHeadsetPlugReceived(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 404
    iget-boolean v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-eqz v4, :cond_0

    .line 405
    const-string v4, "state"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 406
    .local v1, "isPluggedIn":Z
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 407
    .local v0, "am":Landroid/media/AudioManager;
    iget-boolean v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsPluggedIn:Z

    if-eq v4, v1, :cond_0

    .line 408
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

    .line 409
    iput-boolean v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsPluggedIn:Z

    .line 410
    iget-boolean v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsPluggedIn:Z

    if-nez v4, :cond_2

    .line 411
    const-string v3, "BikeModeAudioManager"

    const-string v4, "onHeadsetPluggedInChanged: set Speaker true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 420
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "isPluggedIn":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 405
    goto :goto_0

    .line 414
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v1    # "isPluggedIn":Z
    :cond_2
    const-string v2, "BikeModeAudioManager"

    const-string v4, "onHeadsetPluggedInChanged: set Speaker false"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 416
    iget v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v0, v3, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1
.end method

.method public onScreenOffReceived(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    .line 382
    :cond_0
    return-void
.end method

.method public playEnglishGuidance()V
    .locals 5

    .prologue
    .line 105
    const-string v1, "android.resource://com.android.phone/raw/guidance_en_us"

    .line 106
    .local v1, "soundPath":Ljava/lang/String;
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

    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 111
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 112
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 113
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 114
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/incallui/bike/BikeModeAudioManager$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$1;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 128
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/incallui/bike/BikeModeAudioManager$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$2;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "ex":Ljava/io/IOException;
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

    .prologue
    const/4 v9, 0x0

    .line 147
    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 148
    .local v0, "am":Landroid/media/AudioManager;
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

    .line 149
    const-string v6, "callmemo_enabled=true"

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setMode(I)V

    .line 151
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 153
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPlayTwice:Z

    .line 155
    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "language_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "language":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, "en_GB"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 157
    :cond_0
    const-string v3, "en_US"

    .line 159
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

    .line 160
    .local v4, "soundLanguage":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://com.android.phone/raw/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "soundPath":Ljava/lang/String;
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

    .line 163
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.samsung.BikeMode.StartDTMFRecognition"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "dtmfIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    const-string v6, "BikeModeAudioManager"

    const-string v7, "broadcast com.samsung.BikeMode.StartDTMFRecognition"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 169
    :try_start_0
    const-string v6, "dl_ringtone=true"

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 170
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 171
    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 172
    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 173
    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    .line 174
    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v7, Lcom/android/incallui/bike/BikeModeAudioManager$3;

    invoke-direct {v7, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$3;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 193
    iget-object v6, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v7, Lcom/android/incallui/bike/BikeModeAudioManager$4;

    invoke-direct {v7, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$4;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_2
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v2

    .line 206
    .local v2, "ex":Ljava/io/IOException;
    const-string v6, "BikeModeInCallUI_legacy"

    const-string v7, "BikeModeUtils : playGuidance : Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->playEnglishGuidance()V

    goto :goto_0
.end method

.method public playRingtone(Z)V
    .locals 9
    .param p1, "playBMRingtone"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 285
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 286
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    .line 287
    const-string v4, "callmemo_enabled=false"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 288
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

    .line 289
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

    .line 291
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/bike/BikeCallVibrator;->getInstance(Landroid/content/Context;)Lcom/android/incallui/bike/BikeCallVibrator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    .line 292
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 294
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 295
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 297
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_1

    .line 298
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 300
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 303
    if-eqz p1, :cond_3

    .line 304
    :try_start_0
    const-string v2, "android.resource://com.android.phone/raw/bike_mode_ringtone"

    .line 305
    .local v2, "bikeModeRingtonePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v6, "android.resource://com.android.phone/raw/bike_mode_ringtone"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 306
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mController:Lcom/android/incallui/bike/BikeModeController;

    const/16 v5, 0x4e20

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/bike/BikeModeController;->startBikeModeTimer(II)V

    .line 310
    .end local v2    # "bikeModeRingtonePath":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 311
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 313
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v1

    .line 314
    .local v1, "audioMode":I
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

    .line 315
    if-eq v1, v8, :cond_4

    const/4 v4, 0x4

    if-eq v1, v4, :cond_4

    .line 317
    const-string v4, "BikeModeAudioManager"

    const-string v5, "playRingtone : set Speaker true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 319
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 324
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 325
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    .line 327
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/incallui/bike/BikeModeAudioManager$7;

    invoke-direct {v5, p0, v0}, Lcom/android/incallui/bike/BikeModeAudioManager$7;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/AudioManager;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 340
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/incallui/bike/BikeModeAudioManager$8;

    invoke-direct {v5, p0, v0}, Lcom/android/incallui/bike/BikeModeAudioManager$8;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/AudioManager;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 351
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    .line 352
    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeCallVibrator;->isVibrating()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "all_sound_off"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    .line 354
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeCallVibrator;->startVibration()V

    .line 360
    .end local v1    # "audioMode":I
    :cond_2
    :goto_2
    return-void

    .line 308
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

    .line 356
    :catch_0
    move-exception v3

    .line 357
    .local v3, "ex":Ljava/io/IOException;
    const-string v4, "BikeModeAudioManager"

    const-string v5, "playRingtone : Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v0, v7, v4, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_2

    .line 321
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v1    # "audioMode":I
    :cond_4
    :try_start_1
    const-string v4, "BikeModeInCallUI_legacy"

    const-string v5, "playRingtone : set Speaker false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public processDTMFResponse()V
    .locals 4

    .prologue
    .line 363
    const-string v2, "BikeModeAudioManager"

    const-string v3, "processDTMFResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 365
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_1

    .line 366
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    .line 367
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    .line 368
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 369
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 370
    const-string v2, "callmemo_enabled=false"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 371
    const-string v2, "dl_ringtone=off"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopGuidance()V

    .line 374
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->playRingtone(Z)V

    .line 376
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method public setGuidancePlayed(Z)V
    .locals 0
    .param p1, "play"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsGuidancePlayed:Z

    .line 87
    return-void
.end method

.method public stopGuidance()V
    .locals 3

    .prologue
    .line 90
    const-string v1, "BikeModeAudioManager"

    const-string v2, "BikeModeInCallUI_legacy: stopGuidance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-boolean v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 97
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 101
    .local v0, "am":Landroid/media/AudioManager;
    const-string v1, "dl_ringtone=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public stopRingtone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 264
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 266
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 268
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 269
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 271
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

    .line 272
    iget v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v0, v4, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 274
    :cond_0
    const-string v1, "BikeModeAudioManager"

    const-string v2, "Ringtone Stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    if-eqz v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-virtual {v1}, Lcom/android/incallui/bike/BikeCallVibrator;->stopVibration()V

    .line 280
    :cond_2
    iput-boolean v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    .line 281
    return-void
.end method

.method public switchAudioRouting(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.careConnect.CHANGE_AUDIO_MIXMODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "audiomixMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    return-void
.end method
