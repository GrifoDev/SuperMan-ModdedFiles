.class public Lcom/android/incallui/bike/BikeModeAudioManager;
.super Ljava/lang/Object;


# static fields
.field private static final ACTION_CHANGE_AUDIO_MIXMODE:Ljava/lang/String; = "com.android.careConnect.CHANGE_AUDIO_MIXMODE"

.field private static final CHANGE_AUDIO_PARAMETER:I = 0x3ea

.field private static final CHANGE_AUDIO_PARAMETER_DELAY:I = 0x12c

.field private static final EVENT_REPEAT:I = 0x3eb

.field private static final GUIDANCE_SOUND_URI:Ljava/lang/String; = "/system/media/BikeMode/"

.field private static final LOG_TAG:Ljava/lang/String; = "BikeModeAudioManager"

.field private static final RESTART_RINGER_MILLIS:I = 0xbb8

.field private static final SOUND_LANGUAGE_EN_US:Ljava/lang/String; = "guidance_en_us"

.field private static final SOUND_LANGUAGE_PREFIX:Ljava/lang/String; = "guidance_"

.field public static defaultCallVolume:I

.field public static defaultMusicVolume:I

.field private static mIsGuidancePlayed:Z

.field private static mIsRingtonePlaying:Z

.field private static mMediaPlayer:Landroid/media/MediaPlayer;

.field private static mPrevInCallVolume:I

.field private static mRingtone:Landroid/media/Ringtone;


# instance fields
.field private contactRingtoneUri:Ljava/lang/String;

.field private mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/incallui/bike/BikeModeController;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPluggedIn:Z

.field private mPlayTwice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultMusicVolume:I

    sput v0, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultCallVolume:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/bike/BikeModeController;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->contactRingtoneUri:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPlayTwice:Z

    new-instance v0, Lcom/android/incallui/bike/BikeModeAudioManager$9;

    invoke-direct {v0, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$9;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mController:Lcom/android/incallui/bike/BikeModeController;

    sput-boolean v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsGuidancePlayed:Z

    sput-boolean v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    sput-object v2, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    sput-object v2, Lcom/android/incallui/bike/BikeModeAudioManager;->mRingtone:Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsPluggedIn:Z

    return-void
.end method

.method static synthetic access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    sput-object p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
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

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/incallui/bike/BikeModeAudioManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->handleRepeat()V

    return-void
.end method

.method private actualURIfromDefaultURI(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "BikeModeAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actualURIfromDefaultURI Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "BikeModeAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change URI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    :goto_0
    return-object p2

    :cond_0
    const-string v0, "BikeModeAudioManager"

    const-string v1, "This is not default URI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method private getRingtone(Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/incallui/bike/BikeModeAudioManager;->getRingtoneOffset(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Landroid/media/RingtoneManager;->semGetRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    goto :goto_0
.end method

.method private getRingtoneOffset(Landroid/net/Uri;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "highlight_offset"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    const-string v1, "BikeModeAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getRingtoneOffset highlight_offset offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleRepeat()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "BikeModeAudioManager"

    const-string v1, "Ringtone already playing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    const-string v0, "BikeModeAudioManager"

    const-string v1, "Repeat ringtone."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static isGuidancePlayed()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsGuidancePlayed:Z

    return v0
.end method

.method public static isRingtonePlaying()Z
    .locals 3

    const-string v0, "BikeModeAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRingtonePlaying = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    return v0
.end method

.method public static setGuidancePlayed(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsGuidancePlayed:Z

    return-void
.end method


# virtual methods
.method public guidanceBeepSoundPlay()V
    .locals 3

    const-string v0, "/system/media/BikeMode/guidance_beep.ogg"

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v2, "/system/media/BikeMode/guidance_beep.ogg"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/incallui/bike/BikeModeAudioManager$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$5;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/incallui/bike/BikeModeAudioManager$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$6;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "BikeModeAudioManager"

    const-string v1, "guidanceBeepSoundPlay : Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAudioStateChangedReceived(Landroid/content/Intent;)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "BikeModeAudioManager"

    const-string v2, "mBluetoothStateReceiver: HEADSET_AUDIO_STATE_CHANGED_ACTION"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BikeModeAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> new state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    const-string v1, "BikeModeAudioManager"

    const-string v2, "set Speaker false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    sget v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v0, v4, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, v5, :cond_0

    const-string v1, "BikeModeAudioManager"

    const-string v2, "set Speaker true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method public onHeadsetPlugReceived(Landroid/content/Intent;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-eqz v0, :cond_0

    const-string v0, "state"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    iget-boolean v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsPluggedIn:Z

    if-nez v1, :cond_2

    const-string v1, "BikeModeAudioManager"

    const-string v3, "onHeadsetPluggedInChanged: set Speaker true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const-string v1, "BikeModeAudioManager"

    const-string v2, "onHeadsetPluggedInChanged: set Speaker false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    sget v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v0, v3, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1
.end method

.method public onScreenOffReceived(Landroid/content/Intent;)V
    .locals 1

    sget-boolean v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    :cond_0
    return-void
.end method

.method public playEnglishGuidance()V
    .locals 4

    const-string v0, "/system/media/BikeMode/guidance_en_us.ogg"

    const-string v1, "BikeModeAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- sound path ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/incallui/bike/BikeModeAudioManager$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$1;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/incallui/bike/BikeModeAudioManager$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$2;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BikeModeAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playEnglishGuidance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playGuidance()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "BikeModeAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio Mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultMusicVolume:I

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultCallVolume:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mPlayTwice:Z

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "language_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "en_GB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v1, "en_US"

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guidance_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/media/BikeMode/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BikeModeAudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- sound path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.BikeMode.StartDTMFRecognition"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "BikeModeAudioManager"

    const-string v3, "broadcast com.samsung.BikeMode.StartDTMFRecognition"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    const-string v2, "dl_ringtone=true"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v2, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v1, "callmemo_enabled=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/incallui/bike/BikeModeAudioManager$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/bike/BikeModeAudioManager$3;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/incallui/bike/BikeModeAudioManager$4;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/bike/BikeModeAudioManager$4;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/AudioManager;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "BikeModeInCallUI_legacy"

    const-string v1, "BikeModeUtils : playGuidance : Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->playEnglishGuidance()V

    goto :goto_0
.end method

.method public playRingtone(Z)V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    const-string v1, "callmemo_enabled=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v1, "BikeModeAudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prevInCallVolume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BikeModeAudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playRingtone - playBMRingtone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/bike/BikeCallVibrator;->getInstance(Landroid/content/Context;)Lcom/android/incallui/bike/BikeCallVibrator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    sput-object v4, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_2
    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_3

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_3
    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    if-eqz p1, :cond_6

    :try_start_0
    const-string v1, "/system/media/BikeMode/bike_mode_ringtone.ogg"

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v4, "/system/media/BikeMode/bike_mode_ringtone.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mController:Lcom/android/incallui/bike/BikeModeController;

    const/16 v2, 0x4e20

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/incallui/bike/BikeModeController;->startBikeModeTimer(II)V

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v1

    const-string v2, "BikeModeAudioManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxRingtoneVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v8, :cond_5

    if-eq v1, v9, :cond_5

    const-string v1, "BikeModeAudioManager"

    const-string v2, "playRingtone : set Speaker true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/incallui/bike/BikeModeAudioManager$7;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/bike/BikeModeAudioManager$7;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/AudioManager;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/incallui/bike/BikeModeAudioManager$8;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/bike/BikeModeAudioManager$8;-><init>(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/AudioManager;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-virtual {v1}, Lcom/android/incallui/bike/BikeCallVibrator;->isVibrating()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BikeModeAudioManager"

    const-string v2, "playRingtone : startVibration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-virtual {v1}, Lcom/android/incallui/bike/BikeCallVibrator;->startVibration()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v1, "BikeModeAudioManager"

    const-string v2, "playRingtone : Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v0, v3, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    const-string v1, "BikeModeInCallUI_legacy"

    const-string v2, "playRingtone : set Speaker false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1

    :cond_6
    const-string v1, "content://settings/system/ringtone"

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v6

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v9, :cond_b

    move v5, v2

    :goto_2
    if-ne v6, v2, :cond_c

    const-string v1, "content://settings/system/ringtone_2"

    :cond_7
    :goto_3
    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->contactRingtoneUri:Ljava/lang/String;

    if-nez v4, :cond_d

    :goto_4
    const-string v4, "BikeModeAudioManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ringtoneUri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->contactRingtoneUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/incallui/bike/BikeModeAudioManager;->actualURIfromDefaultURI(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/bike/BikeModeAudioManager;->getRingtone(Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mRingtone:Landroid/media/Ringtone;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v1

    const-string v4, "BikeModeAudioManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxRingtoneVolume = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v8, :cond_e

    if-eq v1, v9, :cond_e

    const-string v1, "BikeModeAudioManager"

    const-string v4, "playRingtone : set Speaker true"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_5
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_8

    if-eq v4, v2, :cond_8

    if-eqz v5, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->handleRepeat()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "vibrate_when_ringing"

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    :goto_6
    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-virtual {v5}, Lcom/android/incallui/bike/BikeCallVibrator;->isVibrating()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "all_sound_off"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_9

    if-eq v4, v8, :cond_a

    :cond_9
    if-ne v4, v2, :cond_0

    :cond_a
    const-string v1, "BikeModeAudioManager"

    const-string v2, "playRingtone :!playBMRingtone startVibration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-virtual {v1}, Lcom/android/incallui/bike/BikeCallVibrator;->startVibration()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    goto/16 :goto_0

    :cond_b
    move v5, v3

    goto/16 :goto_2

    :cond_c
    if-ne v6, v8, :cond_7

    const-string v1, "content://settings/system/ringtone_3"

    goto/16 :goto_3

    :cond_d
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->contactRingtoneUri:Ljava/lang/String;

    goto/16 :goto_4

    :cond_e
    const-string v1, "BikeModeInCallUI_legacy"

    const-string v4, "playRingtone : set Speaker false"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_f
    move v1, v3

    goto :goto_6

    :cond_10
    move-object v1, v4

    goto/16 :goto_4
.end method

.method public processDTMFResponse()V
    .locals 3

    const-string v0, "BikeModeAudioManager"

    const-string v1, "processDTMFResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopGuidance()V

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mController:Lcom/android/incallui/bike/BikeModeController;

    const/16 v1, 0x258

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/bike/BikeModeController;->startBikeModeTimer(II)V

    :cond_0
    return-void
.end method

.method public setContactRingtoneUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->contactRingtoneUri:Ljava/lang/String;

    return-void
.end method

.method public stopGuidance()V
    .locals 6

    const/16 v5, 0x3ea

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v0, "BikeModeAudioManager"

    const-string v1, "BikeModeInCallUI_legacy: stopGuidance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    :cond_0
    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    sget v1, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultMusicVolume:I

    if-eq v1, v3, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    sget v2, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultMusicVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_2
    sget v1, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultCallVolume:I

    if-eq v1, v3, :cond_3

    sget v1, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultCallVolume:I

    invoke-virtual {v0, v4, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_3
    sput v3, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultMusicVolume:I

    sput v3, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultCallVolume:I

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    const-string v0, "BikeModeAudioManager"

    const-string v1, "changeAudioParamater"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void
.end method

.method public stopRingtone()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x3eb

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "BikeModeAudioManager"

    const-string v3, "Stop Ringtone called"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    if-eqz v0, :cond_0

    const-string v3, "BikeModeAudioManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBikeCallVibrator is not null?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->stopVibration()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sput-object v7, Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const-string v3, "BikeModeAudioManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevInCallVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v0, v2, v3, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_3
    const-string v0, "BikeModeAudioManager"

    const-string v3, "Ringtone Stopped"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/incallui/bike/BikeModeAudioManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    sput-object v7, Lcom/android/incallui/bike/BikeModeAudioManager;->mRingtone:Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const-string v3, "BikeModeAudioManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevInCallVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/android/incallui/bike/BikeModeAudioManager;->mPrevInCallVolume:I

    invoke-virtual {v0, v2, v3, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_6
    const-string v0, "BikeModeAudioManager"

    const-string v3, "Ringtone Stopped"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    if-eqz v0, :cond_8

    const-string v0, "BikeModeAudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsRingtonePlaying is true, mBikeCallVibrator is not null?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    if-eqz v4, :cond_9

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager;->mBikeCallVibrator:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->stopVibration()V

    :cond_8
    sput-boolean v2, Lcom/android/incallui/bike/BikeModeAudioManager;->mIsRingtonePlaying:Z

    goto/16 :goto_1

    :cond_9
    move v1, v2

    goto :goto_2
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
