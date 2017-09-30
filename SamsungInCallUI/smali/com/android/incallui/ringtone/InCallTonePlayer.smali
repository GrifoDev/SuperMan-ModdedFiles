.class public Lcom/android/incallui/ringtone/InCallTonePlayer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;
    }
.end annotation


# static fields
.field public static final TONE_CALL_PROMPT:I = 0x5

.field public static final TONE_CALL_WAITING:I = 0x4

.field public static final VOLUME_RELATIVE_HIGH_PRIORITY:I = 0x50


# instance fields
.field private final mExecutor:Lcom/android/incallui/async/PausableExecutor;

.field private mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

.field private final mToneGeneratorFactory:Lcom/android/incallui/ringtone/ToneGeneratorFactory;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ringtone/ToneGeneratorFactory;Lcom/android/incallui/async/PausableExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ringtone/ToneGeneratorFactory;

    iput-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mToneGeneratorFactory:Lcom/android/incallui/ringtone/ToneGeneratorFactory;

    invoke-static {p2}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/async/PausableExecutor;

    iput-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/ringtone/InCallTonePlayer;Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/ringtone/InCallTonePlayer;->playOnBackgroundThread(Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V

    return-void
.end method

.method private getToneGeneratorInfo(I)Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;
    .locals 5

    const/16 v4, 0x50

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;

    const/16 v1, 0x16

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;-><init>(IIII)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;

    const/16 v1, 0x13

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;-><init>(IIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private playOnBackgroundThread(Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting tone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mToneGeneratorFactory:Lcom/android/incallui/ringtone/ToneGeneratorFactory;

    iget v2, p1, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->stream:I

    iget v3, p1, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->volume:I

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/ringtone/ToneGeneratorFactory;->newInCallToneGenerator(II)Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    iget v1, p1, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->tone:I

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {v1}, Lcom/android/incallui/async/PausableExecutor;->milestone()V

    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    iget v2, p1, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->toneLengthMillis:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {v1}, Lcom/android/incallui/async/PausableExecutor;->milestone()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {v0}, Lcom/android/incallui/async/PausableExecutor;->milestone()V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    const-string v1, "Interrupted while playing in-call tone."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {v0}, Lcom/android/incallui/async/PausableExecutor;->milestone()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {v1}, Lcom/android/incallui/async/PausableExecutor;->milestone()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method


# virtual methods
.method public isPlayingTone()Z
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public play(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/ringtone/InCallTonePlayer;->isPlayingTone()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tone already playing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/ringtone/InCallTonePlayer;->getToneGeneratorInfo(I)Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    new-instance v2, Lcom/android/incallui/ringtone/InCallTonePlayer$1;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/ringtone/InCallTonePlayer$1;-><init>(Lcom/android/incallui/ringtone/InCallTonePlayer;Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V

    invoke-interface {v1, v2}, Lcom/android/incallui/async/PausableExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
