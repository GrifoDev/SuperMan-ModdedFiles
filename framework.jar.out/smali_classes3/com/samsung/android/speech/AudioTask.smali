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
    .param p1, "listener"    # Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "command"    # I
    .param p4, "language"    # I
    .param p5, "samsungOOVResult"    # Z

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x43c80000    # 400.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    .line 27
    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 29
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    .line 30
    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    .line 31
    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    .line 32
    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn:J

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn_sub:J

    .line 37
    new-array v0, v4, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    .line 40
    new-array v0, v4, [S

    const/4 v1, -0x1

    aput-short v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    .line 41
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->numRecogResult:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryCMscore:F

    .line 44
    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->speech:[S

    .line 49
    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isMakePCM:Z

    .line 51
    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 52
    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->loadPath:Ljava/lang/String;

    .line 53
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    .line 54
    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->loadNameList:Ljava/lang/String;

    .line 55
    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->defaultloadNameList:Ljava/lang/String;

    .line 57
    iput v4, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    .line 58
    iput v4, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    .line 60
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

    .line 61
    invoke-static {v4}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->wordListPath:Ljava/lang/String;

    .line 63
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/MediaRecorder;->semGetInputSource(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    .line 64
    const/4 v0, 0x7

    invoke-static {v0}, Landroid/media/MediaRecorder;->semGetInputSource(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    .line 65
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    .line 67
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    .line 68
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_START:I

    .line 69
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    .line 70
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->RECOGNITION_WAIT_TIME:I

    .line 72
    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->f:Ljava/io/File;

    .line 73
    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 75
    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    .line 77
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

    .line 78
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

    .line 80
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

    .line 81
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

    .line 83
    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    .line 84
    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    .line 85
    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isCameraBargeIn:Z

    .line 86
    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isCancelBargeIn:Z

    .line 87
    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    .line 88
    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSubModelBargeInEnable:Z

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    .line 91
    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryResult:Z

    .line 93
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanRejectCMTH:F

    .line 94
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanCancelCMTH:F

    .line 95
    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanShootCMTH:F

    .line 96
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanStopCMTH:F

    .line 98
    const/high16 v0, 0x44480000    # 800.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryChineseCaptureCMTH:F

    .line 99
    const/high16 v0, 0x43020000    # 130.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryChineseStopCMTH:F

    .line 101
    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->sensoryJapaneseShootCMTH:F

    .line 103
    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishStopCMTH:F

    .line 104
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishSnoozeCMTH:F

    .line 106
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryRussianCheeseCMTH:F

    .line 109
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishShootCMTH:F

    .line 110
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishRecordVideoCMTH:F

    .line 111
    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishCheeseCMTH:F

    .line 112
    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishCaptureCMTH:F

    .line 114
    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUKEnglishStopCMTH:F

    .line 116
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRLoadModel:I

    .line 117
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRInit:I

    .line 118
    iput-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    .line 119
    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    .line 121
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    .line 759
    new-instance v0, Lcom/samsung/android/speech/AudioTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/speech/AudioTask$1;-><init>(Lcom/samsung/android/speech/AudioTask;)V

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    .line 124
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

    .line 123
    return-void
.end method

.method private getAudioRecord(I)Landroid/media/AudioRecord;
    .locals 9
    .param p1, "source"    # I

    .prologue
    const/4 v8, 0x0

    .line 943
    const/4 v7, 0x0

    .line 944
    .local v7, "retAudioRecord":Landroid/media/AudioRecord;
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAudioRecord modified by jy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    .line 947
    const/4 v4, 0x2

    const/16 v5, 0x2000

    move v1, p1

    .line 946
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    .end local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    .local v0, "retAudioRecord":Landroid/media/AudioRecord;
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 949
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

    .line 950
    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 953
    :cond_0
    return-object v8

    .line 955
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

    .line 956
    const-string/jumbo v3, " "

    .line 955
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 956
    const/16 v3, 0x10

    .line 955
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 956
    const-string/jumbo v3, " "

    .line 955
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 956
    const/4 v3, 0x2

    .line 955
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 956
    const-string/jumbo v3, " "

    .line 955
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 956
    const/16 v3, 0x2000

    .line 955
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 971
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

    .line 972
    return-object v0

    .line 957
    .end local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    .restart local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalArgumentException;
    move-object v0, v7

    .line 958
    .end local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    .restart local v0    # "retAudioRecord":Landroid/media/AudioRecord;
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

    .line 960
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

    .line 961
    const/16 v3, 0x3e80

    .line 960
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 961
    const-string/jumbo v3, " "

    .line 960
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 961
    const/16 v3, 0x10

    .line 960
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 961
    const-string/jumbo v3, " "

    .line 960
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 961
    const/4 v3, 0x2

    .line 960
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 961
    const-string/jumbo v3, " "

    .line 960
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 961
    const/16 v3, 0x2000

    .line 960
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    if-eqz v0, :cond_2

    .line 963
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 965
    :cond_2
    return-object v8

    .line 966
    .end local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    :catchall_0
    move-exception v1

    move-object v0, v7

    .end local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    .restart local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    :goto_1
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 957
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private getMMUIRecognitionResult([SI)I
    .locals 11
    .param p1, "speech"    # [S
    .param p2, "readNshorts"    # I

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 650
    const/4 v6, 0x0

    .line 652
    .local v6, "result":I
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/speech/MMUIRecognizer;->RECThread([S)I

    move-result v6

    .line 656
    :cond_0
    const/4 v0, -0x2

    if-ne v6, v0, :cond_2

    .line 657
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 p2, -0x1

    .line 660
    return p2

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Barge-in : Too long input so Reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->ResetFx()I

    .line 666
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    .line 670
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v0, :cond_3

    .line 671
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 p2, -0x1

    .line 673
    return p2

    .line 676
    :cond_3
    if-ne v6, v9, :cond_e

    .line 677
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_e

    .line 678
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v0, :cond_4

    .line 679
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 p2, -0x1

    .line 681
    return p2

    .line 684
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->ResetFx()I

    .line 686
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string/jumbo v3, "/system/voicebargeindata/sasr/input.txt"

    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->numRecogResult:I

    .line 688
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    aget-object v1, v1, v7

    const/16 v2, 0x5f

    invoke-virtual {v1, v2, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 690
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    if-ne v0, v9, :cond_6

    .line 691
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v1, v1, v7

    const/16 v2, 0x5f

    invoke-virtual {v1, v2, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 692
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v1, v1, v7

    aput-object v1, v0, v7

    .line 695
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

    .line 696
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

    .line 697
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

    .line 699
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v0, v0, v7

    if-ne v0, v9, :cond_7

    .line 700
    const-wide v0, -0x4003333333333333L    # -1.8

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    .line 707
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

    .line 709
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v0, :cond_9

    .line 710
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section4"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 p2, -0x1

    .line 712
    return v8

    .line 701
    :cond_7
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 702
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    goto :goto_0

    .line 704
    :cond_8
    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    iput-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    goto :goto_0

    .line 715
    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_b

    .line 716
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryResult:Z

    if-eqz v0, :cond_a

    .line 717
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isSensoryCameraBargeIn is true and isSensoryResult is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
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

    .line 719
    iput-boolean v7, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryResult:Z

    .line 720
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

    .line 739
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v0, :cond_d

    .line 740
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section13"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 p2, -0x1

    .line 742
    return p2

    .line 722
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isSensoryCameraBargeIn is true and keyword is not detected by sensory and keyword or non-keyword is detected by embeddedEngine."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string/jumbo v1, "TH-Reject"

    aput-object v1, v0, v7

    .line 725
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v8, v0, v7

    .line 726
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    .line 730
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    aget v0, v0, v7

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    .line 731
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    .line 733
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string/jumbo v1, "TH-Reject"

    aput-object v1, v0, v7

    .line 734
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v8, v0, v7

    .line 735
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    .line 744
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    .line 748
    :cond_e
    return p2
.end method

.method private getSensoryRecognitionResult(J[S)Z
    .locals 13
    .param p1, "consoleInitReturn"    # J
    .param p3, "speech"    # [S

    .prologue
    .line 471
    const/4 v9, 0x0

    .line 472
    .local v9, "consoleResult":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v8, v0, [F

    .line 473
    .local v8, "sensoryResultValue":[F
    const/high16 v11, -0x40800000    # -1.0f

    .line 474
    .local v11, "sensoryCMscore":F
    const/4 v10, 0x0

    .line 475
    .local v10, "rejectFlag":Z
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 476
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    aput v0, v8, v1

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    const-wide/16 v4, 0xa0

    const-wide/16 v6, 0x3e80

    move-wide v1, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v9

    .line 480
    .local v9, "consoleResult":Ljava/lang/String;
    const/4 v0, 0x1

    aget v0, v8, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    .line 482
    if-eqz v9, :cond_3

    .line 483
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    invoke-virtual {p0, v1, v9}, Lcom/samsung/android/speech/AudioTask;->getSensoryBargeInAct(ILjava/lang/String;)I

    move-result v1

    int-to-short v1, v1

    const/4 v2, 0x0

    aput-short v1, v0, v2

    .line 484
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 485
    const/4 v0, 0x0

    aget v11, v8, v0

    .line 487
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

    .line 488
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

    .line 489
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

    .line 490
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

    .line 491
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

    .line 493
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    invoke-direct {p0, p1, p2, v0, v11}, Lcom/samsung/android/speech/AudioTask;->resultSensoryOOV(JIF)Z

    move-result v10

    .line 495
    .local v10, "rejectFlag":Z
    if-nez v10, :cond_3

    .line 496
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    if-nez v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 498
    const/4 v0, 0x1

    return v0

    .line 478
    .local v9, "consoleResult":Ljava/lang/String;
    .local v10, "rejectFlag":Z
    :cond_0
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    int-to-float v0, v0

    const/4 v1, 0x1

    aput v0, v8, v1

    goto/16 :goto_0

    .line 499
    .local v9, "consoleResult":Ljava/lang/String;
    .local v10, "rejectFlag":Z
    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    if-nez v0, :cond_3

    .line 500
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    .line 501
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 503
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_2

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryResult:Z

    .line 505
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

    .line 507
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 511
    .end local v10    # "rejectFlag":Z
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isBargeInFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 998
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    const/4 v0, 0x1

    return v0

    .line 1000
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private resultSensoryOOV(JIF)Z
    .locals 7
    .param p1, "consoleInitReturn"    # J
    .param p3, "action"    # I
    .param p4, "sensoryCMscore"    # F

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 516
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    if-ne v0, v3, :cond_1

    .line 517
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    packed-switch v0, :pswitch_data_0

    .line 646
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 519
    :pswitch_0
    if-ne p3, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanRejectCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean reject score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return v2

    .line 528
    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    .line 529
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    if-ne v0, v2, :cond_5

    .line 531
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 533
    :pswitch_1
    if-ne p3, v4, :cond_2

    const/high16 v0, 0x43960000    # 300.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return v2

    .line 536
    :cond_2
    if-ne p3, v3, :cond_3

    const/high16 v0, 0x44960000    # 1200.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean cheese score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return v2

    .line 539
    :cond_3
    if-ne p3, v5, :cond_4

    const/high16 v0, 0x43c80000    # 400.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_4

    .line 540
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return v2

    .line 542
    :cond_4
    if-ne p3, v6, :cond_0

    const/high16 v0, 0x44480000    # 800.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean record video score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return v2

    .line 553
    :cond_5
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    packed-switch v0, :pswitch_data_2

    :pswitch_2
    goto :goto_0

    .line 562
    :pswitch_3
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn_sub:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 563
    if-ne p3, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishCheeseCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_6

    .line 564
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sub English cheese score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return v2

    .line 566
    :cond_6
    if-ne p3, v4, :cond_7

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishCaptureCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_7

    .line 567
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sub English capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return v2

    .line 569
    :cond_7
    if-ne p3, v5, :cond_8

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishShootCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_8

    .line 570
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sub English shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return v2

    .line 572
    :cond_8
    if-ne p3, v6, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishRecordVideoCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sub English record video score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return v2

    .line 579
    :pswitch_4
    if-ne p3, v4, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryChineseCaptureCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Chinese capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return v2

    .line 585
    :pswitch_5
    if-ne p3, v5, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryJapaneseShootCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Japanese shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return v2

    .line 591
    :pswitch_6
    if-ne p3, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryRussianCheeseCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Russian cheese score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return v2

    .line 601
    :cond_9
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    if-ne v0, v4, :cond_b

    .line 602
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 604
    :sswitch_0
    if-ne p3, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return v2

    .line 610
    :sswitch_1
    if-ne p3, v2, :cond_a

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_a

    .line 611
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "US English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return v2

    .line 613
    :cond_a
    if-ne p3, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUSEnglishSnoozeCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "US English snooze score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return v2

    .line 619
    :sswitch_2
    if-ne p3, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryChineseStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Chinese stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return v2

    .line 625
    :sswitch_3
    if-ne p3, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryUKEnglishStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "UK English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return v2

    .line 633
    :cond_b
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 634
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 636
    :pswitch_7
    if-ne p3, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->sensoryKoreanCancelCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean cancel score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return v2

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 531
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 553
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

    .line 602
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch

    .line 634
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public static twoBytesToShort(BB)S
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .prologue
    .line 752
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public SendHandlerMessage([Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 771
    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 772
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 773
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "recognition_result"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 774
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 777
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v1

    .line 779
    .local v1, "e":Ljava/lang/IllegalStateException;
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

    .line 780
    invoke-virtual {p0}, Lcom/samsung/android/speech/AudioTask;->stop()V

    goto :goto_0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 251
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

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public getSensoryBargeInAct(ILjava/lang/String;)I
    .locals 6
    .param p1, "domain"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 831
    packed-switch p1, :pswitch_data_0

    .line 939
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 833
    :pswitch_0
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    return v1

    .line 838
    :pswitch_1
    const-string/jumbo v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    return v1

    .line 840
    :cond_1
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    return v2

    .line 845
    :pswitch_2
    const-string/jumbo v0, "answer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    return v1

    .line 847
    :cond_2
    const-string/jumbo v0, "reject"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    return v2

    .line 852
    :pswitch_3
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 853
    return v1

    .line 854
    :cond_3
    const-string/jumbo v0, "snooze"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    return v2

    .line 861
    :pswitch_4
    const-string/jumbo v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 862
    return v1

    .line 863
    :cond_4
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 864
    return v2

    .line 865
    :cond_5
    const-string/jumbo v0, "pause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 866
    return v3

    .line 867
    :cond_6
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 868
    return v4

    .line 869
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

    .line 870
    :cond_8
    return v5

    .line 871
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

    .line 872
    :cond_a
    const/4 v0, 0x6

    return v0

    .line 876
    :pswitch_5
    const-string/jumbo v0, "smile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 877
    return v1

    .line 878
    :cond_b
    const-string/jumbo v0, "cheese"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 879
    return v2

    .line 880
    :cond_c
    const-string/jumbo v0, "capture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 881
    return v3

    .line 882
    :cond_d
    const-string/jumbo v0, "shoot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 883
    return v4

    .line 884
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

    .line 885
    :cond_f
    return v5

    .line 886
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

    .line 887
    :cond_11
    const/4 v0, 0x6

    return v0

    .line 888
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

    .line 889
    :cond_13
    const/4 v0, 0x7

    return v0

    .line 890
    :cond_14
    const-string/jumbo v0, "timer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 891
    const/16 v0, 0x8

    return v0

    .line 892
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

    .line 893
    :cond_16
    const/16 v0, 0x9

    return v0

    .line 894
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

    .line 895
    :cond_18
    const/16 v0, 0xa

    return v0

    .line 896
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

    .line 897
    :cond_1a
    const/16 v0, 0xb

    return v0

    .line 898
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

    .line 899
    :cond_1c
    const/16 v0, 0xc

    return v0

    .line 900
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

    .line 901
    :cond_1e
    const/16 v0, 0xd

    return v0

    .line 902
    :cond_1f
    const-string/jumbo v0, "gallery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    const/16 v0, 0xe

    return v0

    .line 907
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

    .line 908
    :cond_20
    return v1

    .line 909
    :cond_21
    const-string/jumbo v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 910
    return v2

    .line 911
    :cond_22
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 912
    return v3

    .line 913
    :cond_23
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 914
    return v4

    .line 915
    :cond_24
    const-string/jumbo v0, "slideshow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 916
    return v5

    .line 917
    :cond_25
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 918
    const/4 v0, 0x6

    return v0

    .line 919
    :cond_26
    const-string/jumbo v0, "camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    const/4 v0, 0x7

    return v0

    .line 924
    :pswitch_7
    const-string/jumbo v0, "cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    return v1

    .line 929
    :pswitch_8
    const-string/jumbo v0, "yes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 930
    return v1

    .line 931
    :cond_27
    const-string/jumbo v0, "no"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    return v2

    .line 831
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
    .param p2, "block_size"    # I
    .param p3, "listener"    # Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "command"    # I
    .param p6, "Language"    # I
    .param p7, "samsungOOVResult"    # Z
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

    .prologue
    .local p1, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<[S>;"
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "init()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
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

    .line 131
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

    .line 132
    iput-boolean v4, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    .line 133
    iput-object p1, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 134
    iput p2, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    .line 135
    iput p5, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    .line 136
    iput-object v5, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 137
    const/4 v1, 0x7

    if-ne p5, v1, :cond_0

    if-nez p6, :cond_0

    .line 139
    iput v7, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    .line 142
    :cond_0
    invoke-virtual {p0, p6, p5}, Lcom/samsung/android/speech/AudioTask;->setSensoryFilePath(II)V

    .line 143
    iput-boolean p7, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    .line 145
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

    .line 146
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

    .line 148
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isCameraBargeIn:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isCancelBargeIn:Z

    if-eqz v1, :cond_8

    .line 149
    :cond_1
    iput v4, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_START:I

    .line 150
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 151
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_2

    .line 152
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

    .line 162
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-nez v1, :cond_3

    .line 163
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 164
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

    .line 167
    :cond_3
    iput-object p3, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 168
    iput-object p4, p0, Lcom/samsung/android/speech/AudioTask;->loadPath:Ljava/lang/String;

    .line 169
    iput p6, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/speech/AudioTask;->setEmbeddedEngineLanguage()V

    .line 173
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v7, v1, v4

    .line 175
    iput v4, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    .line 176
    iput v4, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    .line 178
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isMakePCM:Z

    if-eqz v1, :cond_4

    .line 179
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/log"

    const-string/jumbo v3, "testPCM.pcm"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->f:Ljava/io/File;

    .line 182
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->f:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_4
    :goto_1
    const/16 v1, 0xa0

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->speech:[S

    .line 190
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->buf:[B

    .line 192
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_5

    .line 193
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 195
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn:J

    .line 196
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v1, :cond_5

    .line 197
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn_sub:J

    .line 200
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    if-nez v1, :cond_9

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_9

    .line 245
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

    .line 246
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

    .line 247
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

    .line 128
    return-void

    .line 154
    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_2

    .line 155
    const/16 v1, 0x32

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_START:I

    .line 156
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 157
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_2

    .line 158
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

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 201
    .end local v0    # "e1":Ljava/io/FileNotFoundException;
    :cond_9
    invoke-static {}, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->getInstance()Lcom/samsung/android/speech/MMUIRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    .line 203
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_a

    .line 204
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/speech/MMUIRecognizer;->SetSRLanguage(I)I

    .line 207
    :cond_a
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {p0, v1, p5}, Lcom/samsung/android/speech/AudioTask;->setSamsungFilePath(II)V

    .line 209
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Load Model"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_b

    .line 211
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->modelPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRLoadModel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRLoadModel:I

    .line 213
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRLoadModel:I

    if-nez v1, :cond_b

    .line 214
    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    .line 217
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

    .line 219
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

    .line 220
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

    .line 227
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Load Wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_d

    .line 229
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_c

    .line 230
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

    .line 233
    :cond_c
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->resultSASRInit:I

    if-nez v1, :cond_d

    .line 234
    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    .line 237
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

    .line 239
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_7

    .line 240
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_7

    .line 241
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    goto/16 :goto_2

    .line 222
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Wordlist is not exist. So set default wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->defaultloadNameList:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->loadNameList:Ljava/lang/String;

    goto :goto_3
.end method

.method public isSensoryBargeinEnabled()Z
    .locals 1

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    return v0
.end method

.method readByteBlock()I
    .locals 11

    .prologue
    const/16 v10, 0x140

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 357
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    if-eqz v5, :cond_0

    .line 358
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : isSASRInitProblem"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    .line 360
    return v9

    .line 363
    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_1

    .line 364
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : Section1"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    .line 366
    return v9

    .line 369
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_3

    .line 373
    :cond_2
    :goto_0
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_4

    .line 374
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : Section2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    .line 376
    return v9

    .line 370
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v6, p0, Lcom/samsung/android/speech/AudioTask;->buf:[B

    iget-object v7, p0, Lcom/samsung/android/speech/AudioTask;->buf:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v8, v7}, Landroid/media/AudioRecord;->read([BII)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    goto :goto_0

    .line 379
    :cond_4
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    if-ge v5, v10, :cond_5

    .line 380
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

    .line 383
    :cond_5
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    rem-int/lit8 v5, v5, 0x14

    if-nez v5, :cond_6

    .line 384
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

    .line 387
    :cond_6
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    .line 389
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    if-eqz v5, :cond_7

    .line 390
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x64

    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    .line 393
    :cond_7
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v10, :cond_8

    .line 394
    div-int/lit8 v3, v1, 0x2

    .line 395
    .local v3, "sample":I
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->speech:[S

    iget-object v6, p0, Lcom/samsung/android/speech/AudioTask;->buf:[B

    aget-byte v6, v6, v1

    iget-object v7, p0, Lcom/samsung/android/speech/AudioTask;->buf:[B

    add-int/lit8 v8, v1, 0x1

    aget-byte v7, v7, v8

    invoke-static {v6, v7}, Lcom/samsung/android/speech/AudioTask;->twoBytesToShort(BB)S

    move-result v6

    aput-short v6, v5, v3

    .line 393
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 404
    .end local v3    # "sample":I
    :cond_8
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_9

    .line 405
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : Section3"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    .line 407
    return v9

    .line 411
    :cond_9
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    if-lez v5, :cond_12

    .line 412
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->isMakePCM:Z

    if-eqz v5, :cond_a

    .line 414
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/samsung/android/speech/AudioTask;->buf:[B

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_a
    :goto_2
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_b

    .line 422
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : Section4"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    .line 424
    return v9

    .line 415
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 427
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    const/4 v2, 0x0

    .line 429
    .local v2, "result":I
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v5, :cond_d

    .line 430
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_c

    .line 431
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : Section5"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    .line 433
    return v9

    .line 436
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v5, :cond_d

    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    iget v6, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_START:I

    if-le v5, v6, :cond_d

    .line 437
    const/4 v4, 0x0

    .line 439
    .local v4, "successRecog":Z
    iget-wide v6, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn:J

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->speech:[S

    invoke-direct {p0, v6, v7, v5}, Lcom/samsung/android/speech/AudioTask;->getSensoryRecognitionResult(J[S)Z

    move-result v4

    .line 441
    .local v4, "successRecog":Z
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v5, :cond_d

    .line 442
    iget-wide v6, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn_sub:J

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->speech:[S

    invoke-direct {p0, v6, v7, v5}, Lcom/samsung/android/speech/AudioTask;->getSensoryRecognitionResult(J[S)Z

    move-result v4

    .line 444
    if-eqz v4, :cond_d

    .line 445
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "It is Recognized by sub Model"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v4    # "successRecog":Z
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

    .line 467
    .end local v2    # "result":I
    :cond_f
    :goto_3
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    return v5

    .line 451
    .restart local v2    # "result":I
    :cond_10
    iget-boolean v5, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v5, :cond_11

    .line 452
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readByteBlock return -1 : Section6"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iput v9, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    .line 454
    return v9

    .line 457
    :cond_11
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v5, :cond_f

    .line 458
    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->speech:[S

    iget v6, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/speech/AudioTask;->getMMUIRecognitionResult([SI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    .line 459
    iget v5, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    if-ne v5, v9, :cond_f

    .line 460
    return v9

    .line 464
    .end local v2    # "result":I
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

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 293
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_9

    .line 296
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call rec.startRecording start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 298
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call startRecording end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-nez v1, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/speech/AudioTask;->readByteBlock()I

    .line 303
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v1, :cond_8

    .line 315
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/speech/AudioTask;->stopBargeInAudioRecord()V

    .line 317
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_3

    .line 318
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SASRClose start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRClose()I

    move-result v0

    .line 321
    .local v0, "SASRCloseReturn":I
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

    .line 323
    .end local v0    # "SASRCloseReturn":I
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SASRClose end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v1, :cond_6

    .line 327
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "phrasespotClose start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 330
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn:J

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotClose(J)V

    .line 332
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v1, :cond_5

    iget-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn_sub:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_5

    .line 333
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn_sub:J

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotClose(J)V

    .line 336
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "phrasespotClose end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_6
    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    .line 340
    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 341
    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 343
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "aMMUIRecognizer = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "aSensoryBargeInEngine = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "m_listener = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-nez v1, :cond_7

    .line 350
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 351
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 292
    :cond_7
    return-void

    .line 307
    :cond_8
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    if-gtz v1, :cond_0

    goto/16 :goto_0

    .line 312
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Bargein fail to start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setBlockSize(I)V
    .locals 0
    .param p1, "block_size"    # I

    .prologue
    .line 255
    iput p1, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    .line 254
    return-void
.end method

.method public setEmbeddedEngineLanguage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 976
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    .line 978
    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_1

    .line 979
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    .line 994
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

    .line 975
    return-void

    .line 980
    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 981
    iput v3, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 982
    :cond_2
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 983
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 984
    :cond_3
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 985
    iput v3, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 986
    :cond_4
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 987
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 988
    :cond_5
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 989
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 990
    :cond_6
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 991
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "stopHandler"    # Landroid/os/Handler;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    .line 755
    return-void
.end method

.method public setSamsungFilePath(II)V
    .locals 2
    .param p1, "language"    # I
    .param p2, "domain"    # I

    .prologue
    .line 785
    invoke-static {p1}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->wordListPath:Ljava/lang/String;

    .line 786
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

    .line 787
    invoke-static {p2}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->loadNameList:Ljava/lang/String;

    .line 784
    return-void
.end method

.method public setSensoryFilePath(II)V
    .locals 7
    .param p1, "language"    # I
    .param p2, "domain"    # I

    .prologue
    const/4 v6, 0x1

    .line 791
    invoke-static {p1, p2}, Lcom/samsung/android/speech/Config;->GetSensoryAM(II)Ljava/lang/String;

    move-result-object v2

    .line 792
    .local v2, "sensoryModelPath":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/samsung/android/speech/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "sensoryGrammarPath":Ljava/lang/String;
    move-object v3, v2

    .line 794
    .local v3, "sensoryModelPath_sub":Ljava/lang/String;
    move-object v1, v0

    .line 796
    .local v1, "sensoryGrammarPath_sub":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 801
    const-string/jumbo v4, "/system/lib/libSensoryBargeInEngine.so"

    invoke-direct {p0, v4}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "/system/lib64/libSensoryBargeInEngine.so"

    invoke-direct {p0, v4}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 802
    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 803
    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    .line 804
    iput-object v2, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 805
    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    .line 807
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 808
    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isSubModelBargeInEnable:Z

    .line 809
    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    .line 810
    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    .line 812
    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "SUB model is loaded "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_2
    iget v4, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    .line 817
    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isCameraBargeIn:Z

    .line 819
    iget-boolean v4, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v4, :cond_3

    .line 820
    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isSensoryCameraBargeIn:Z

    .line 790
    :cond_3
    :goto_0
    return-void

    .line 821
    :cond_4
    iget v4, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 822
    iput-boolean v6, p0, Lcom/samsung/android/speech/AudioTask;->isCancelBargeIn:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "AudioTask : stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    .line 268
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    .line 269
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "AudioTask : stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method public stopBargeInAudioRecord()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Call rec.stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Call rec.stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Call rec.release start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Call rec.release end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iput-object v2, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 286
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "rec = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method
