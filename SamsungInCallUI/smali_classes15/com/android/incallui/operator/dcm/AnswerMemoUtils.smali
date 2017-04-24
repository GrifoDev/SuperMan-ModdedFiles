.class public Lcom/android/incallui/operator/dcm/AnswerMemoUtils;
.super Ljava/lang/Object;
.source "AnswerMemoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/operator/dcm/AnswerMemoUtils$AnswerMemoConstants;
    }
.end annotation


# static fields
.field public static final AM_SYNC_CALL_ACTION:Ljava/lang/String; = "com.samsung.synccall.action.answering_message"

.field private static final LOG_TAG:Ljava/lang/String; = "AnswerMemoUtils"

.field private static final SET_AUDIO_PARAM_FALSE_DELAY:I = 0x82

.field private static isAutoAnswered:Z = false

.field public static final mGuidanceSound:Ljava/lang/String; = "android.resource://com.android.phone/raw/"

.field private static mIsGuidancePlaying:Z

.field private static mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered:Z

    sput-boolean v0, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mIsGuidancePlaying:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    sput-object p0, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mIsGuidancePlaying:Z

    return p0
.end method

.method public static checkAvailableStorage()Z
    .locals 4

    const-wide/32 v0, 0xa00000

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->getAvailableStorage()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkPhoneVibrateOrSilentMode()Z
    .locals 6

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const/4 v2, 0x0

    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-eq v4, v3, :cond_0

    if-nez v3, :cond_2

    :cond_0
    move v2, v4

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAvailableStorage()J
    .locals 8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available Storage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public static guidanceBeepSoundPlay()V
    .locals 6

    const-string v1, "guidance_beep"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://com.android.phone/raw/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    sget-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    sget-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    const/4 v4, 0x0

    sput-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    sget-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_1

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    :try_start_0
    sget-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    sget-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/incallui/operator/dcm/AnswerMemoUtils$3;

    invoke-direct {v5}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils$3;-><init>()V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/incallui/operator/dcm/AnswerMemoUtils$4;

    invoke-direct {v5}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils$4;-><init>()V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string v4, "create failed:"

    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isAutoAnswered()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isAutoAnswered"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    sput-boolean v1, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered:Z

    sget-boolean v1, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered:Z

    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isAutoAnsweringMode()Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const-string v3, "com.android.phone.auto_answer_memo_pref"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "isAutoAnsweringMode"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoAnsweringMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static isGuidancePlaying()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isGuidanceMsgPlaying"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AnswerMemoUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static playGuidance()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v3, "guidance_jpn"

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "callsettings_sound_language"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string v3, "guidance_jpn"

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://com.android.phone/raw/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- sound path ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    sput-boolean v8, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mIsGuidancePlaying:Z

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "isGuidanceMsgPlaying"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    :try_start_0
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v5, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-object v5, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v5, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v5, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v5, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    sget-object v5, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/android/incallui/operator/dcm/AnswerMemoUtils$1;

    invoke-direct {v6}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils$1;-><init>()V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v5, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/android/incallui/operator/dcm/AnswerMemoUtils$2;

    invoke-direct {v6}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils$2;-><init>()V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    const-string v3, "guidance_jpn"

    goto :goto_0

    :pswitch_1
    const-string v3, "guidance_eng"

    goto :goto_0

    :pswitch_2
    const-string v3, "guidance_kor"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, " Exception playGuidance "

    invoke-static {v5}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setAudioParameters(Z)V
    .locals 5

    const-string v2, "callmemo_enabled="

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAudioParameters : callmemo_enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v3, "callmemo_enabled=true"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "callmemo_enabled=false"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAutoAnswered(Z)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoAnswered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-ne v3, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.synccall.action.answering_message"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "isStart"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send broadcast intent action : com.samsung.synccall.action.answering_message, extra : isStart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isAutoAnswered"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static setAutoAnsweringMode(Z)V
    .locals 8

    const/4 v5, 0x0

    const-string v2, "callmemo_enabled="

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const-string v6, "audio"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAutoAnsweringMode : callmemo_enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "isAutoAnsweringMode"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p0, :cond_1

    const-string v6, "callmemo_enabled=true"

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_1
    const-string v6, "com.android.phone.auto_answer_memo_pref"

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "isAutoAnsweringMode"

    invoke-interface {v3, v5, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    const-string v6, "callmemo_enabled=false"

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static stopAnswerMemo()V
    .locals 8

    const-string v4, "stopAnswerMemo "

    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopGuidance()V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/incallui/operator/dcm/AnswerMemoUtils$5;

    invoke-direct {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils$5;-><init>()V

    const-wide/16 v6, 0x82

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopRecord()V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopService(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/incallui/InCallPresenter;->setAnsMemoRecordMgr(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->clearAMView()V

    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/android/incallui/AnswerUi;->showAnswerUi(Z)V

    :cond_3
    return-void
.end method

.method public static stopGuidance()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "stopGuidance"

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mIsGuidancePlaying:Z

    if-eqz v0, :cond_0

    sput-boolean v2, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mIsGuidancePlaying:Z

    sget-object v0, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v0, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    sget-object v0, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isGuidanceMsgPlaying"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
