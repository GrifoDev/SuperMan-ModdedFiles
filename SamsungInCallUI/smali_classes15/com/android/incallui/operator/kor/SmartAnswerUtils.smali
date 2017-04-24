.class public Lcom/android/incallui/operator/kor/SmartAnswerUtils;
.super Ljava/lang/Object;
.source "SmartAnswerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/operator/kor/SmartAnswerUtils$SmartAnswerContants;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SmartAnswerUtils"

.field private static isSmartAnswered:Z = false

.field public static mFilePath:Ljava/lang/String; = null

.field public static final mGuidanceSound:Ljava/lang/String; = "android.resource://com.android.phone/raw/"

.field private static mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    sput-object p0, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static isSmartAnswered()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered:Z

    return v0
.end method

.method public static isSmartAnsweringMode()Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const-string v3, "com.android.phone.smart_answer_memo_pref"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "isSmartAnsweringMode"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smartAnsweringMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->log(Ljava/lang/String;)V

    return v2
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SmartAnswerUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static playGuidance()V
    .locals 5

    sget-object v1, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mFilePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playGuidance- sound path ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->log(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v2, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v2, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v2, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v2, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    sget-object v2, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/incallui/operator/kor/SmartAnswerUtils$1;

    invoke-direct {v3}, Lcom/android/incallui/operator/kor/SmartAnswerUtils$1;-><init>()V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v2, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/incallui/operator/kor/SmartAnswerUtils$2;

    invoke-direct {v3}, Lcom/android/incallui/operator/kor/SmartAnswerUtils$2;-><init>()V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, " Exception playGuidance "

    invoke-static {v2}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSmartAnswered(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smartAnswered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->log(Ljava/lang/String;)V

    sput-boolean p0, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered:Z

    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->setSmartAnswered(Z)V

    return-void
.end method

.method public static setSmartAnsweringMode(Z)V
    .locals 6

    const-string v2, "callmemo_enabled="

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmartAnsweringMode : callmemo_enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->log(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v4, "callmemo_enabled=true"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    const-string v4, "com.android.phone.smart_answer_memo_pref"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isSmartAnsweringMode"

    invoke-interface {v3, v4, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    const-string v4, "callmemo_enabled=false"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSoundPath(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSoundPath filePath= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->log(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mFilePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static stopGuidance()V
    .locals 1

    const-string v0, "stopGuidance"

    invoke-static {v0}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v0, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnsweringMode(Z)V

    return-void
.end method
