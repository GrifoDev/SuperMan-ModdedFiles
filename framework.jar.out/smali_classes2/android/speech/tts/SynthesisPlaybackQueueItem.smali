.class final Landroid/speech/tts/SynthesisPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "SynthesisPlaybackQueueItem.java"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;,
        Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_UNCONSUMED_AUDIO_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "TTS.SynthQueueItem"


# instance fields
.field private final mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

.field private final mDataBufferList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDone:Z

.field private final mListLock:Ljava/util/concurrent/locks/Lock;

.field private final mLogger:Landroid/speech/tts/AbstractEventLogger;

.field private final mNotFull:Ljava/util/concurrent/locks/Condition;

.field private final mReadReady:Ljava/util/concurrent/locks/Condition;

.field private volatile mStatusCode:I

.field private volatile mStopped:Z

.field private mUnconsumedBytes:I

.field private markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;IIILandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p5, p6}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    iput-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    iput-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    iput v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    new-instance v0, Landroid/speech/tts/BlockingAudioTrack;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/speech/tts/BlockingAudioTrack;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;III)V

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    iput-object p7, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    return-void
.end method

.method private take()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_0
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_2
    :try_start_3
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    iget-object v2, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;->mBytes:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object v1, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;->mBytes:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1
.end method


# virtual methods
.method done()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 5

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;

    if-nez v0, :cond_0

    const-string/jumbo v1, "TTS.SynthQueueItem"

    const-string/jumbo v2, "onMarkerReached reached called but no marker in queue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    iget v2, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->start:I

    iget v3, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->end:I

    iget v4, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    invoke-interface {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnRangeStart(III)V

    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->updateMarker()V

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0

    return-void
.end method

.method put([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    iget v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    invoke-virtual {v2, v3}, Landroid/speech/tts/BlockingAudioTrack;->getAudioLengthMs(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    new-instance v3, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;

    invoke-direct {v3, p1}, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method rangeStart(III)V
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;-><init>(Landroid/speech/tts/SynthesisPlaybackQueueItem;III)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->updateMarker()V

    return-void
.end method

.method public run()V
    .locals 5

    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v3}, Landroid/speech/tts/BlockingAudioTrack;->init()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x5

    invoke-interface {v1, v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    return-void

    :cond_0
    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v3, p0}, Landroid/speech/tts/BlockingAudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->updateMarker()V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->take()[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v3, v0}, Landroid/speech/tts/BlockingAudioTrack;->write([B)I

    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v3}, Landroid/speech/tts/AbstractEventLogger;->onAudioDataWritten()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_1
    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v3}, Landroid/speech/tts/BlockingAudioTrack;->waitAndRelease()V

    iget v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    if-nez v3, :cond_2

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    :goto_1
    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    iget v4, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    invoke-virtual {v3, v4}, Landroid/speech/tts/AbstractEventLogger;->onCompleted(I)V

    return-void

    :cond_2
    iget v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    goto :goto_1

    :cond_3
    iget v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    invoke-interface {v1, v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    goto :goto_1
.end method

.method stop(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    iput p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v0}, Landroid/speech/tts/BlockingAudioTrack;->stop()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method updateMarker()V
    .locals 3

    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v2, v1}, Landroid/speech/tts/BlockingAudioTrack;->setNotificationMarkerPosition(I)V

    :cond_0
    return-void

    :cond_1
    iget v1, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    goto :goto_0
.end method
