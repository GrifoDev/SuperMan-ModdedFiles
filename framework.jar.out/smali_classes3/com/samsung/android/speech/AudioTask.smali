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
.field static final DEFAULT_BLOCK_SIZE:I = 0xa0


# instance fields
.field private AUDIO_RECORD_FOR_BARGE_IN:I

.field private AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

.field private AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

.field private AUDIO_START:I

.field public BargeinAct:[S

.field private final RECOGNITION_WAIT_TIME:I

.field public TAG:Ljava/lang/String;

.field public THscore:D

.field private aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

.field private aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

.field private acousticModelPathname:Ljava/lang/String;

.field private acousticModelPathname_sub:Ljava/lang/String;

.field public block_size:I

.field public buf:[B

.field public cmResult:[F

.field public consoleInitReturn:J

.field public consoleInitReturn_sub:J

.field public defaultloadNameList:Ljava/lang/String;

.field public done:Z

.field private dualThresholdFlag:I

.field public f:Ljava/io/File;

.field public handler:Landroid/os/Handler;

.field public isCameraBargeIn:Z

.field public isCancelBargeIn:Z

.field public isEnableSamsungOOVResult:Z

.field private isMakePCM:Z

.field public isSASRInitProblem:Z

.field public isSensoryBargeInEnable:Z

.field public isSensoryCameraBargeIn:Z

.field public isSensoryResult:Z

.field public isSubModelBargeInEnable:Z

.field public loadNameList:Ljava/lang/String;

.field public loadPath:Ljava/lang/String;

.field public mCommandType:I

.field public mEmbeddedEngineLanguage:I

.field public mFileOutputStream:Ljava/io/FileOutputStream;

.field public mLanguage:I

.field public mStopHandler:Landroid/os/Handler;

.field private m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

.field public modelPath:Ljava/lang/String;

.field public numRecogResult:I

.field public q:Ljava/util/concurrent/LinkedBlockingQueue;
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

.field public resultSASRInit:I

.field public resultSASRLoadModel:I

.field private searchGrammarPathname:Ljava/lang/String;

.field private searchGrammarPathname_sub:Ljava/lang/String;

.field public sensoryCMscore:F

.field public sensoryChineseCaptureCMTH:F

.field public sensoryChineseStopCMTH:F

.field public sensoryJapaneseShootCMTH:F

.field public sensoryKoreanCancelCMTH:F

.field public sensoryKoreanRejectCMTH:F

.field public sensoryKoreanShootCMTH:F

.field public sensoryKoreanStopCMTH:F

.field public sensoryRussianCheeseCMTH:F

.field public sensoryUKEnglishStopCMTH:F

.field public sensoryUSEnglishCaptureCMTH:F

.field public sensoryUSEnglishCheeseCMTH:F

.field public sensoryUSEnglishRecordVideoCMTH:F

.field public sensoryUSEnglishShootCMTH:F

.field public sensoryUSEnglishSnoozeCMTH:F

.field public sensoryUSEnglishStopCMTH:F

.field public speech:[S

.field public strResult:[Ljava/lang/String;

.field private totalReadCount:I

.field public utfResult:[Ljava/lang/String;

.field public wordListPath:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/speech/AudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 8

    const/4 v6, 0x2

    const/high16 v5, 0x43c80000    # 400.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn_sub:J

    new-array v0, v4, [F

    const/4 v1, 0x0

    aput v1, v0, v2

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

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryCMscore:F

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->speech:[S

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

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;

    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v6}, Lcom/samsung/android/speech/Config;->GetSensoryAM(II)Ljava/lang/String;

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

    invoke-static {v2, v6}, Lcom/samsung/android/speech/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

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

    invoke-static {v2, v6}, Lcom/samsung/android/speech/Config;->GetSensoryAM(II)Ljava/lang/String;

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

    invoke-static {v2, v6}, Lcom/samsung/android/speech/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_v2_2.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isCameraBargeIn:Z

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isCancelBargeIn:Z

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSubModelBargeInEnable:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryResult:Z

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanRejectCMTH:F

    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanCancelCMTH:F

    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanShootCMTH:F

    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanStopCMTH:F

    const/high16 v0, 0x44480000    # 800.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryChineseCaptureCMTH:F

    const/high16 v0, 0x43020000    # 130.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryChineseStopCMTH:F

    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->sensoryJapaneseShootCMTH:F

    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishStopCMTH:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishSnoozeCMTH:F

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryRussianCheeseCMTH:F

    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishShootCMTH:F

    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishRecordVideoCMTH:F

    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishCheeseCMTH:F

    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishCaptureCMTH:F

    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUKEnglishStopCMTH:F

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRLoadModel:I

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRInit:I

    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    new-instance v0, Lcom/samsung/android/speech/AudioTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/speech/AudioTask$1;-><init>(Lcom/samsung/android/speech/AudioTask;)V

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v2, 0xa0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/speech/AudioTask;->init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private getAudioRecord(I)Landroid/media/AudioRecord;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Barge-in : Too long input so Reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->ResetFx()I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isSensoryCameraBargeIn is true and isSensoryResult is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section13"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isSensoryCameraBargeIn is true and keyword is not detected by sensory and keyword or non-keyword is detected by embeddedEngine."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string/jumbo v1, "TH-Reject"

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v8, v0, v7

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    aget v0, v0, v7

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string/jumbo v1, "TH-Reject"

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v8, v0, v7

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    :cond_e
    return p2
.end method

.method private getSensoryRecognitionResult(J[S)Z
    .locals 13

    const/4 v9, 0x0

    const/4 v0, 0x3

    new-array v8, v0, [F

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v10, 0x0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    aput v0, v8, v1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    const-wide/16 v4, 0xa0

    const-wide/16 v6, 0x3e80

    move-wide v1, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x1

    aget v0, v8, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    if-eqz v9, :cond_3

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    invoke-virtual {p0, v1, v9}, Lcom/samsung/android/speech/AudioTask;->getSensoryBargeInAct(ILjava/lang/String;)I

    move-result v1

    int-to-short v1, v1

    const/4 v2, 0x0

    aput-short v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    const/4 v0, 0x0

    aget v11, v8, v0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "consoleResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BargeinAct[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sensoryCMscore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dualThresholdFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    invoke-direct {p0, p1, p2, v0, v11}, Lcom/samsung/android/speech/AudioTask;->resultSensoryOOV(JIF)Z

    move-result v10

    if-nez v10, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    int-to-float v0, v0

    const/4 v1, 0x1

    aput v0, v8, v1

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryResult:Z

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set isSensoryResult = true. So isSensoryResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isBargeInFile(Ljava/lang/String;)Z
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

.method private resultSensoryOOV(JIF)Z
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    if-ne p3, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanRejectCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean reject score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    if-ne p3, v4, :cond_2

    const/high16 v0, 0x43960000    # 300.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    if-ne p3, v3, :cond_3

    const/high16 v0, 0x44960000    # 1200.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean cheese score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    if-ne p3, v5, :cond_4

    const/high16 v0, 0x43c80000    # 400.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    if-ne p3, v6, :cond_0

    const/high16 v0, 0x44480000    # 800.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean record video score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    packed-switch v0, :pswitch_data_2

    :pswitch_2
    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn_sub:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    if-ne p3, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishCheeseCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sub English cheese score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    if-ne p3, v4, :cond_7

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishCaptureCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sub English capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    if-ne p3, v5, :cond_8

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishShootCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sub English shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    if-ne p3, v6, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishRecordVideoCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sub English record video score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_4
    if-ne p3, v4, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryChineseCaptureCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Chinese capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_5
    if-ne p3, v5, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryJapaneseShootCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Japanese shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_6
    if-ne p3, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryRussianCheeseCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Russian cheese score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    if-ne v0, v4, :cond_b

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    if-ne p3, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :sswitch_1
    if-ne p3, v2, :cond_a

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "US English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_a
    if-ne p3, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishSnoozeCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "US English snooze score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :sswitch_2
    if-ne p3, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryChineseStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Chinese stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :sswitch_3
    if-ne p3, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUKEnglishStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "UK English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_b
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_7
    if-ne p3, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanCancelCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean cancel score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
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
.method public SendHandlerMessage([Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "recognition_result"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

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

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IllegalStateException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/speech/AudioTask;->stop()V

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

.method public getSensoryBargeInAct(ILjava/lang/String;)I
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v0, -0x1

    return v0

    :pswitch_0
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :pswitch_1
    const-string/jumbo v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :pswitch_2
    const-string/jumbo v0, "answer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string/jumbo v0, "reject"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :pswitch_3
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string/jumbo v0, "snooze"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :pswitch_4
    const-string/jumbo v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    const-string/jumbo v0, "pause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_6
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v4

    :cond_7
    const-string/jumbo v0, "volume up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "volume_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "volumeup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return v5

    :cond_9
    const-string/jumbo v0, "volume down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "volume_down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "volumedown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    const/4 v0, 0x6

    return v0

    :pswitch_5
    const-string/jumbo v0, "smile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const-string/jumbo v0, "cheese"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v2

    :cond_c
    const-string/jumbo v0, "capture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v3

    :cond_d
    const-string/jumbo v0, "shoot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v4

    :cond_e
    const-string/jumbo v0, "record video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "record_video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "recordvideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    return v5

    :cond_10
    const-string/jumbo v0, "auto settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "auto_settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "autosettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const/4 v0, 0x6

    return v0

    :cond_12
    const-string/jumbo v0, "beauty face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "beauty_face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "beautyface"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    const/4 v0, 0x7

    return v0

    :cond_14
    const-string/jumbo v0, "timer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x8

    return v0

    :cond_15
    const-string/jumbo v0, "zoom in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "zoomin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    const/16 v0, 0x9

    return v0

    :cond_17
    const-string/jumbo v0, "zoom out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "zoomout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    const/16 v0, 0xa

    return v0

    :cond_19
    const-string/jumbo v0, "flash on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "flash_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "flashon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    const/16 v0, 0xb

    return v0

    :cond_1b
    const-string/jumbo v0, "flash off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "flash_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "flashoff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    const/16 v0, 0xc

    return v0

    :cond_1d
    const-string/jumbo v0, "upload pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "upload_pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "uploadpics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    const/16 v0, 0xd

    return v0

    :cond_1f
    const-string/jumbo v0, "gallery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    return v0

    :pswitch_6
    const-string/jumbo v0, "buddy photo share"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "buddy_photo_share"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "buddyphotoshare"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    return v1

    :cond_21
    const-string/jumbo v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    return v2

    :cond_22
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    return v3

    :cond_23
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    return v4

    :cond_24
    const-string/jumbo v0, "slideshow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    return v5

    :cond_25
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x6

    return v0

    :cond_26
    const-string/jumbo v0, "camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    return v0

    :pswitch_7
    const-string/jumbo v0, "cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :pswitch_8
    const-string/jumbo v0, "yes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    return v1

    :cond_27
    const-string/jumbo v0, "no"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 8
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

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "init()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Language : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    iput-object p1, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    iput p2, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    iput p5, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    iput-object v5, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    const/4 v1, 0x7

    if-ne p5, v1, :cond_0

    if-nez p6, :cond_0

    iput v7, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    :cond_0
    invoke-virtual {p0, p6, p5}, Lcom/samsung/android/speech/AudioTask;->setSensoryFilePath(II)V

    iput-boolean p7, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSensoryBargeInEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEnableSamsungOOVResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isCameraBargeIn:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isCancelBargeIn:Z

    if-eqz v1, :cond_8

    :cond_1
    iput v4, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_START:I

    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object p3, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iput-object p4, p0, Lcom/samsung/android/speech/AudioTask;->loadPath:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    invoke-virtual {p0}, Lcom/samsung/android/speech/AudioTask;->setEmbeddedEngineLanguage()V

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v7, v1, v4

    iput v4, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    iput v4, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isMakePCM:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/log"

    const-string/jumbo v3, "testPCM.pcm"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->f:Ljava/io/File;

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->f:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    const/16 v1, 0xa0

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->speech:[S

    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->buf:[B

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn:J

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn_sub:J

    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    if-nez v1, :cond_9

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_9

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resultSASRLoadModel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRLoadModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resultSASRInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRInit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSASRInitProblem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x32

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_START:I

    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->getInstance()Lcom/samsung/android/speech/MMUIRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/speech/MMUIRecognizer;->SetSRLanguage(I)I

    :cond_a
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {p0, v1, p5}, Lcom/samsung/android/speech/AudioTask;->setSamsungFilePath(II)V

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Load Model"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->modelPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRLoadModel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRLoadModel:I

    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRLoadModel:I

    if-nez v1, :cond_b

    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Load Model result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRLoadModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wordlist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Load Wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRInit(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRInit:I

    :cond_c
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRInit:I

    if-nez v1, :cond_d

    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Load Wordlist result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRInit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    goto/16 :goto_2

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Wordlist is not exist. So set default wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->defaultloadNameList:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->loadNameList:Ljava/lang/String;

    goto :goto_3
.end method

.method public isSensoryBargeinEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    return v0
.end method

.method readByteBlock()I
    .locals 11

    const/16 v10, 0x140

    const/4 v8, 0x0

    const/4 v9, -0x1

    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : isSASRInitProblem"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    return v9

    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : Section1"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    return v9

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_3

    :cond_2
    :goto_0
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : Section2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    return v9

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v6, p0, Lcom/samsung/android/speech/AudioTask;->buf:[B

    iget-object v7, p0, Lcom/samsung/android/speech/AudioTask;->buf:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v8, v7}, Landroid/media/AudioRecord;->read([BII)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    if-ge v5, v10, :cond_5

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AudioRecord Read problem : nshorts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " command = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " language : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    rem-int/lit8 v5, v5, 0x14

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nshorts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    mul-int/lit8 v7, v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " command = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " language : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " dualThr : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x64

    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    :cond_7
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v10, :cond_8

    div-int/lit8 v3, v1, 0x2

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->speech:[S

    iget-object v6, p0, Lcom/samsung/android/speech/AudioTask;->buf:[B

    aget-byte v6, v6, v1

    iget-object v7, p0, Lcom/samsung/android/speech/AudioTask;->buf:[B

    add-int/lit8 v8, v1, 0x1

    aget-byte v7, v7, v8

    invoke-static {v6, v7}, Lcom/samsung/android/speech/AudioTask;->twoBytesToShort(BB)S

    move-result v6

    aput-short v6, v5, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_8
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : Section3"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    return v9

    :cond_9
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    if-lez v5, :cond_12

    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->isMakePCM:Z

    if-eqz v5, :cond_a

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/samsung/android/speech/AudioTask;->buf:[B

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_2
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : Section4"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    return v9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : Section5"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    return v9

    :cond_c
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v5, :cond_d

    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    iget v6, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_START:I

    if-le v5, v6, :cond_d

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn:J

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->speech:[S

    invoke-direct {p0, v6, v7, v5}, Lcom/samsung/android/speech/AudioTask;->getSensoryRecognitionResult(J[S)Z

    move-result v4

    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v5, :cond_d

    iget-wide v6, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn_sub:J

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->speech:[S

    invoke-direct {p0, v6, v7, v5}, Lcom/samsung/android/speech/AudioTask;->getSensoryRecognitionResult(J[S)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "It is Recognized by sub Model"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    const/16 v6, 0x32

    if-le v5, v6, :cond_f

    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v5, :cond_e

    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    if-nez v5, :cond_10

    :cond_e
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v5, :cond_10

    :cond_f
    :goto_3
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    return v5

    :cond_10
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : Section6"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    return v9

    :cond_11
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->speech:[S

    iget v6, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/speech/AudioTask;->getMMUIRecognitionResult([SI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    if-ne v5, v9, :cond_f

    return v9

    :cond_12
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readNshorts is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " So do nothing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public run()V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call rec.startRecording start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call startRecording end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/speech/AudioTask;->readByteBlock()I

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v1, :cond_8

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/speech/AudioTask;->stopBargeInAudioRecord()V

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SASRClose start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRClose()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SASRCloseReturn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SASRClose end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "phrasespotClose start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn:J

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotClose(J)V

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v1, :cond_5

    iget-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn_sub:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn_sub:J

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotClose(J)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "phrasespotClose end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "aMMUIRecognizer = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "aSensoryBargeInEngine = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "m_listener = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    return-void

    :cond_8
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    if-gtz v1, :cond_0

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Bargein fail to start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
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
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

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

.method public setSensoryFilePath(II)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/speech/Config;->GetSensoryAM(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/samsung/android/speech/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    move-object v1, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "/system/lib/libSensoryBargeInEngine.so"

    invoke-direct {p0, v4}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "/system/lib64/libSensoryBargeInEngine.so"

    invoke-direct {p0, v4}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    iput-object v2, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isSubModelBargeInEnable:Z

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "SUB model is loaded "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v4, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isCameraBargeIn:Z

    iget-boolean v4, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v4, :cond_3

    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v4, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isCancelBargeIn:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "AudioTask : stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "AudioTask : stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopBargeInAudioRecord()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Call rec.stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Call rec.stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Call rec.release start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Call rec.release end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "rec = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
