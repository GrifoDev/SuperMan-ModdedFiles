.class public Lcom/android/incallui/ringtone/InCallTonePlayer;
.super Ljava/lang/Object;
.source "InCallTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;
    }
.end annotation


# static fields
.field public static final TONE_CALL_WAITING:I = 0x4

.field public static final VOLUME_RELATIVE_HIGH_PRIORITY:I = 0x50


# instance fields
.field private final mExecutor:Lcom/android/incallui/async/PausableExecutor;

.field private mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mToneGeneratorFactory:Lcom/android/incallui/ringtone/ToneGeneratorFactory;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ringtone/ToneGeneratorFactory;Lcom/android/incallui/async/PausableExecutor;)V
    .locals 1
    .param p1, "toneGeneratorFactory"    # Lcom/android/incallui/ringtone/ToneGeneratorFactory;
    .param p2, "executor"    # Lcom/android/incallui/async/PausableExecutor;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ringtone/ToneGeneratorFactory;

    iput-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mToneGeneratorFactory:Lcom/android/incallui/ringtone/ToneGeneratorFactory;

    .line 58
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/async/PausableExecutor;

    iput-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/ringtone/InCallTonePlayer;Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/ringtone/InCallTonePlayer;
    .param p1, "x1"    # Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/incallui/ringtone/InCallTonePlayer;->playOnBackgroundThread(Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V

    return-void
.end method

.method private getToneGeneratorInfo(I)Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;
    .locals 5
    .param p1, "tone"    # I

    .prologue
    .line 90
    packed-switch p1, :pswitch_data_0

    .line 104
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

    .line 99
    :pswitch_0
    new-instance v0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;

    const/16 v1, 0x16

    const/16 v2, 0x50

    const v3, 0x7fffffff

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;-><init>(IIII)V

    return-object v0

    .line 90
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private playOnBackgroundThread(Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, "toneGenerator":Landroid/media/ToneGenerator;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting tone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mToneGeneratorFactory:Lcom/android/incallui/ringtone/ToneGeneratorFactory;

    iget v3, p1, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->stream:I

    iget v4, p1, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->volume:I

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/ringtone/ToneGeneratorFactory;->newInCallToneGenerator(II)Landroid/media/ToneGenerator;

    move-result-object v1

    .line 113
    iget v2, p1, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->tone:I

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 118
    iget-object v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {v2}, Lcom/android/incallui/async/PausableExecutor;->milestone()V

    .line 119
    iget-object v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    iget v3, p1, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->toneLengthMillis:I

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 122
    iget-object v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {v2}, Lcom/android/incallui/async/PausableExecutor;->milestone()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {v2}, Lcom/android/incallui/async/PausableExecutor;->milestone()V

    .line 136
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "Interrupted while playing in-call tone."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    if-eqz v1, :cond_3

    .line 128
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 130
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_4

    .line 131
    iget-object v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 134
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {v2}, Lcom/android/incallui/async/PausableExecutor;->milestone()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    .line 128
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 130
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_6

    .line 131
    iget-object v3, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 134
    :cond_6
    iget-object v3, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {v3}, Lcom/android/incallui/async/PausableExecutor;->milestone()V

    throw v2
.end method


# virtual methods
.method public isPlayingTone()Z
    .locals 4

    .prologue
    .line 65
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
    .param p1, "tone"    # I

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/incallui/ringtone/InCallTonePlayer;->isPlayingTone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Tone already playing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/ringtone/InCallTonePlayer;->getToneGeneratorInfo(I)Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;

    move-result-object v0

    .line 80
    .local v0, "info":Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    .line 81
    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    new-instance v2, Lcom/android/incallui/ringtone/InCallTonePlayer$1;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/ringtone/InCallTonePlayer$1;-><init>(Lcom/android/incallui/ringtone/InCallTonePlayer;Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V

    invoke-interface {v1, v2}, Lcom/android/incallui/async/PausableExecutor;->execute(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 145
    :cond_0
    return-void
.end method
