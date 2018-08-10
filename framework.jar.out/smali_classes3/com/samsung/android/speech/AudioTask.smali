.class Lcom/samsung/android/speech/AudioTask;
.super Ljava/lang/Object;
.source "AudioTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/speech/AudioTask$1;
    }
.end annotation


# static fields
.field static final DEFAULT_BLOCK_SIZE:I = 0x140


# instance fields
.field protected AUDIO_RECORD_FOR_BARGE_IN:I

.field protected AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

.field protected AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

.field private AUDIO_START:I

.field public BargeinAct:[S

.field private CMscore:F

.field private final RECOGNITION_WAIT_TIME:I

.field private THscore:D

.field private aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

.field private acousticModelPathname:Ljava/lang/String;

.field private acousticModelPathname_sub:Ljava/lang/String;

.field private block_size:I

.field public cmResult:[F

.field private consoleInitReturn:J

.field private defaultloadNameList:Ljava/lang/String;

.field private done:Z

.field private dualThresholdFlag:I

.field private f:Ljava/io/File;

.field private handler:Landroid/os/Handler;

.field private isEnableSamsungOOVResult:Z

.field private isMakePCM:Z

.field private isSensoryCameraBargeIn:Z

.field private isSensoryResult:Z

.field private loadNameList:Ljava/lang/String;

.field private loadPath:Ljava/lang/String;

.field private mCommandType:I

.field private mDataOutputStream:Ljava/io/DataOutputStream;

.field private mEmbeddedEngineLanguage:I

.field private mLanguage:I

.field private mStopHandler:Landroid/os/Handler;

.field private mTAG:Ljava/lang/String;

.field private m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

.field private modelPath:Ljava/lang/String;

.field private numRecogResult:I

.field private q:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;"
        }
    .end annotation
.end field

.field private readNshorts:I

.field public rec:Landroid/media/AudioRecord;

.field private recogAfterReadCount:I

.field private searchGrammarPathname:Ljava/lang/String;

.field private searchGrammarPathname_sub:Ljava/lang/String;

.field public strResult:[Ljava/lang/String;

.field private totalReadCount:I

.field public utfResult:[Ljava/lang/String;

.field private wordListPath:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/speech/AudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn:J

    new-array v0, v4, [F

    aput v6, v0, v2

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    new-array v0, v4, [S

    const/4 v1, -0x1

    aput-short v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->numRecogResult:I

    iput v6, p0, Lcom/samsung/android/speech/AudioTask;->CMscore:F

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isMakePCM:Z

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->loadPath:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->defaultloadNameList:Ljava/lang/String;

    iput v4, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    iput v4, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->modelPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->wordListPath:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/MediaRecorder;->semGetInputSource(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    const/4 v0, 0x7

    invoke-static {v0}, Landroid/media/MediaRecorder;->semGetInputSource(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_START:I

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->RECOGNITION_WAIT_TIME:I

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->f:Ljava/io/File;

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v5}, Lcom/samsung/android/speech/Config;->GetSensoryAM(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_v2.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v5}, Lcom/samsung/android/speech/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_v2.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v5}, Lcom/samsung/android/speech/Config;->GetSensoryAM(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_v2_2.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v5}, Lcom/samsung/android/speech/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_v2_2.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryResult:Z

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    new-instance v0, Lcom/samsung/android/speech/AudioTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/speech/AudioTask$1;-><init>(Lcom/samsung/android/speech/AudioTask;)V

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method private SendHandlerMessage([Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "recognition_result"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IllegalStateException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/speech/AudioTask;->stop()V

    goto :goto_0
.end method

.method private getMMUIRecognitionResult([SI)I
    .locals 11

    const/16 v10, 0x20

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/speech/MMUIRecognizer;->RECThread([S)I

    move-result v6

    :cond_0
    const/4 v0, -0x2

    if-ne v6, v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "Barge-in : Too long input so Reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->ResetFx()I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_3
    if-ne v6, v9, :cond_e

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->ResetFx()I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string/jumbo v3, "/system/voicebargeindata/sasr/input.txt"

    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->numRecogResult:I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    aget-object v1, v1, v7

    const/16 v2, 0x5f

    invoke-virtual {v1, v2, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    if-ne v0, v9, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v1, v1, v7

    const/16 v2, 0x5f

    invoke-virtual {v1, v2, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v1, v1, v7

    aput-object v1, v0, v7

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "numResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BargeinAct[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v0, v0, v7

    if-ne v0, v9, :cond_7

    const-wide v0, -0x4003333333333333L    # -1.8

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "THscore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section4"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return v8

    :cond_7
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    goto :goto_0

    :cond_8
    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    goto :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryResult:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "isSensoryCameraBargeIn is true and isSensoryResult is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EmbeddedEngine Recognizer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryResult:Z

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set isSensoryResult = false. So isSensoryResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section13"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "isSensoryCameraBargeIn is true and keyword is not detected by sensory and keyword or non-keyword is detected by embeddedEngine."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string/jumbo v1, "TH-Reject"

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v8, v0, v7

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    aget v0, v0, v7

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string/jumbo v1, "TH-Reject"

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v8, v0, v7

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    :cond_e
    return p2
.end method

.method public static swap(S)S
    .locals 4

    and-int/lit16 v0, p0, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    or-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method public static swap([S)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-short v1, p0, v0

    invoke-static {v1}, Lcom/samsung/android/speech/AudioTask;->swap(S)S

    move-result v1

    aput-short v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static twoBytesToShort(BB)S
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method protected getAudioRecord(I)Landroid/media/AudioRecord;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "getAudioRecord modified by jy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/16 v5, 0x2000

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioRecord for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=false, got !initialized"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    return-object v8

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got AudioRecord using source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", also "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioRecord for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v6

    move-object v0, v7

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioRecord for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=false, IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got IllegalArgumentException using source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", also "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    return-object v8

    :catchall_0
    move-exception v1

    move-object v0, v7

    :goto_1
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    return v0
.end method

.method public getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;I",
            "Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-class v0, Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "AudioTask init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    iput-object p1, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    iput p2, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    iput p5, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    iput-object p3, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iput-object p4, p0, Lcom/samsung/android/speech/AudioTask;->loadPath:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v1, -0x1

    aput-short v1, v0, v3

    return-void
.end method

.method protected isBargeInFile(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "run start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBlockSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    return-void
.end method

.method public setEmbeddedEngineLanguage()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEmbeddedEngineLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iput v3, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    iput v3, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    return-void
.end method

.method public setSamsungFilePath(II)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->wordListPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->modelPath:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->loadNameList:Ljava/lang/String;

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "AudioTask : stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "AudioTask : stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopBargeInAudioRecord()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "Call rec.stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "Call rec.stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "Call rec.release start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "Call rec.release end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "rec = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
