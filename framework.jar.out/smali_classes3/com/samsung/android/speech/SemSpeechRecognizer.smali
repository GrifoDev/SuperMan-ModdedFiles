.class public Lcom/samsung/android/speech/SemSpeechRecognizer;
.super Ljava/lang/Object;
.source "SemSpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    }
.end annotation


# static fields
.field public static final STATE_READY:I = 0x0

.field public static final STATE_RUNNING:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final SVOICE_LANGUAGE_FILE:Ljava/lang/String;

.field private audio:Lcom/samsung/android/speech/AudioTask;

.field private audio_thread:Ljava/lang/Thread;

.field private handler:Landroid/os/Handler;

.field private intBargeInResult:I

.field public isEnableBargeIn:Z

.field private isEnableChineseBargeIn:Z

.field private isEnableExtraRussian:Z

.field private isEnableExtraSpanish:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

.field private mState:I

.field private mStopHandler:Landroid/os/Handler;

.field private samsungOOVResult:Z

.field private uselanguage:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/speech/SemSpeechRecognizer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/speech/SemSpeechRecognizer;ILandroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->delayedStartBargeIn(ILandroid/os/Handler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->SVOICE_LANGUAGE_FILE:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->SVOICE_LANGUAGE_FILE:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BargeInRecognizer get Context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->init()V

    return-void
.end method

.method private SendHandlerMessage(I)V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "commandType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    sget-object v2, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageDelayed : 1500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageDelayed : 700"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private delayedStartBargeIn(ILandroid/os/Handler;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "delayedStartBargeIn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "BargeIn is running. So Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iget-object v0, v0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput-short v1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Load PDTAudioTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/speech/PDTAudioTask;

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    const-string/jumbo v2, "/system/voicebargeindata"

    iget v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iget-boolean v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/speech/PDTAudioTask;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iget-object v0, v0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0, p2}, Lcom/samsung/android/speech/AudioTask;->setHandler(Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Load SensoryAudioTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/speech/SensoryAudioTask;

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    const-string/jumbo v2, "/system/voicebargeindata"

    iget v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iget-boolean v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/speech/SensoryAudioTask;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Complete Loading SensoryAudioTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "fail to running Bargein"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Lcom/samsung/android/speech/AudioTask;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "why running empty audio_thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "make new SemSpeechRecognizer VER 16.11.30"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isUseModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    invoke-virtual {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isChineseMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    iput-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->setLanguage()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uselanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableChineseBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableExtraSpanish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableExtraRussian : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "/system/voicebargeindata/include/bargein_language_extra_es"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    const-string/jumbo v0, "/system/voicebargeindata/include/bargein_language_extra_ru"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    goto/16 :goto_0
.end method

.method private static isBargeInFile(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isPDTModel()Z
    .locals 1

    const-string/jumbo v0, "/system/lib/libBargeInEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/system/lib64/libBargeInEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isSamsungModel()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "/system/lib/libsasr-jni.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private static isSensoryModel()Z
    .locals 1

    const-string/jumbo v0, "/system/lib/libSensoryBargeInEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/system/lib64/libSensoryBargeInEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isUseModel()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "use libBargeInEngine.so"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isSamsungModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    return v2

    :cond_1
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isSensoryModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Could not find libsasr-jni.so use only libSensoryBargeInEngine.so"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error : Could not find libsasr-jni.so && libSensoryBargeInEngine.so"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v6

    :catch_0
    move-exception v1

    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-object v7

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-object v7

    :catch_2
    move-exception v1

    move-object v4, v5

    goto :goto_0
.end method

.method private setLanguage()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "en_US"

    const-string/jumbo v4, "en"

    const-string/jumbo v3, "US"

    :goto_0
    const/4 v2, 0x0

    sget-object v5, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stringLanguage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stringCountry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sVoiceLanguage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "GB"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0xa

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    :cond_3
    iput v8, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    :cond_4
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    if-eqz v5, :cond_9

    const-string/jumbo v5, "CN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "TW"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xc

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "HK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0xd

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "SG"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0xe

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    :cond_8
    iput v8, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    :cond_9
    const-string/jumbo v5, "ES"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x3

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iget-boolean v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    if-nez v5, :cond_a

    const-string/jumbo v5, "es"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_a

    iput v8, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    :cond_a
    sget-object v5, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Extra Sapnish is enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v5, "es"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v5, 0xb

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    :cond_c
    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x4

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    :cond_d
    sget-object v5, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x5

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    :cond_e
    sget-object v5, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x6

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    :cond_f
    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x7

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v5, "ru"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iput v9, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v5, "pt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string/jumbo v5, "BR"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/16 v5, 0x9

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    :cond_12
    iput v8, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    :cond_13
    iget-boolean v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    if-eqz v5, :cond_16

    const-string/jumbo v5, "az_AZ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "kk_KZ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "uz_UZ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "ky_KZ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "tg_TJ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "tk_TM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "be_BY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_14
    iput v9, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    sget-object v5, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Extra Russian is enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_15
    iput v8, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    :cond_16
    iput v8, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1
.end method

.method private start(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/speech/SemSpeechRecognizer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/speech/SemSpeechRecognizer$1;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "StopHandler create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/speech/SemSpeechRecognizer$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/speech/SemSpeechRecognizer$2;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handler create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->SendHandlerMessage(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getBargeInCmdLanguage()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "en-US"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "ko-KR"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "en-US"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "zh-CN"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "es-ES"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "fr-FR"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "de-DE"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "it-IT"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "ja-JP"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "ru-RU"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "pt-BR"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "en-GB"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "v-es-LA"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "zh-TW"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "zh-HK"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getCommandLanguage()I
    .locals 3

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCommandLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    return v0
.end method

.method public getCommandStringArray(I)[Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->getCommandStringArray(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandStringArray(II)[Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCommandStringArray : CommandType ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ) Language ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    if-lt p2, v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p2, 0x1

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCommandStringArray : possible language is ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CALL_PDT:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    :cond_2
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CALL:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->ALARM:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->MUSIC:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CAMERA:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CANCEL:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getRecognitionResult()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iget-object v0, v0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getState()I
    .locals 3

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getState mState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    return v0
.end method

.method public isChineseMode()Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-eq v0, v2, :cond_1

    iput v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iget v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(II)Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isEnabled(II)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p2, p1}, Lcom/samsung/android/speech/Config;->GetPDTAM(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1}, Lcom/samsung/android/speech/Config;->GetPDTGRAMMAR(II)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_v01.raw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_v01.raw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEnabled: PDTBargeIn is available in commandType ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") uselanguage("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    return v10

    :cond_1
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isSensoryModel()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p2, p1}, Lcom/samsung/android/speech/Config;->GetSensoryAM(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p1}, Lcom/samsung/android/speech/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_v2.raw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_v2.raw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEnabled: SensoryBargeIn is available in commandType ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") uselanguage("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_2
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isSamsungModel()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p2}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v3}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEnabled: SamsungBargeIn is available in commandType ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") uselanguage("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_3
    sget-object v6, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEnabled: BargeIn is not available in commandType ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") uselanguage("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContext"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setListener(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    return-void
.end method

.method public startRecognition(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "commandType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->setLanguage()V

    invoke-direct {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->start(I)V

    return-void
.end method

.method public startRecognition(II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRecognition Type2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "commandType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    iput p2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-direct {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->start(I)V

    return-void
.end method

.method public stopRecognition()V
    .locals 4

    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopRecognition"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handler = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Stop Handler = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iget-object v1, v1, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v1}, Lcom/samsung/android/speech/AudioTask;->stop()V

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    :try_start_1
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "wait for audio to stop: begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "wait for audio to stop: end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "audio = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "audio_thread = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mState change to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_4
    :try_start_4
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "audio_thread was not working"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
