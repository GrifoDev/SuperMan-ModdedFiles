.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private final mCommonUse:Z

.field private mForceStop:Z

.field private final mFrequency:I

.field private final mMagnitude:I

.field private final mUid:I

.field private final mUsageHint:I

.field private final mVibration:Lcom/android/server/VibratorService$Vibration;

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get12(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get12(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;Landroid/os/VibrationEffect$Waveform;IIII)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    iput-object p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    iput p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iput p5, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    iput p6, p0, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    iput p7, p0, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get12(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/WorkSource;->set(I)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get12(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method private delay(J)V
    .locals 9

    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-lez v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long v0, p1, v4

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VibratorService$VibrateThread;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long p1, v0, v4

    cmp-long v3, p1, v6

    if-lez v3, :cond_0

    goto :goto_0
.end method

.method private delayLocked(J)J
    .locals 11

    const-wide/16 v8, 0x0

    move-wide v2, p1

    cmp-long v5, p1, v8

    if-lez v5, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long v0, p1, v6

    :goto_0
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/VibratorService$VibrateThread;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v5, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v5, :cond_1

    :cond_0
    sub-long v6, p1, v2

    return-wide v6

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v0, v6

    cmp-long v5, v2, v8

    if-lez v5, :cond_0

    goto :goto_0

    :cond_2
    return-wide v8
.end method

.method private getTotalOnDuration([J[III)J
    .locals 6

    move v0, p3

    const-wide/16 v2, 0x0

    :cond_0
    aget v4, p2, v0

    if-eqz v4, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-wide v4, p1, v0

    add-long/2addr v2, v4

    array-length v4, p1

    if-lt v1, v4, :cond_3

    if-ltz p4, :cond_1

    move v0, p4

    :goto_0
    if-ne v0, p3, :cond_0

    const-wide/16 v4, 0x3e8

    return-wide v4

    :cond_1
    move v0, v1

    :cond_2
    return-wide v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get11(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get11(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public playCommonPattern()V
    .locals 20

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get8(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v16

    move-object/from16 v0, v16

    array-length v15, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move v14, v2

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v3, :cond_6

    if-ge v14, v15, :cond_0

    add-int/lit8 v2, v14, 0x1

    aget-wide v8, v16, v14

    add-long/2addr v4, v8

    move v14, v2

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    move v2, v14

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    if-ge v14, v15, :cond_4

    add-int/lit8 v2, v14, 0x1

    :try_start_1
    aget-wide v4, v16, v14

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    invoke-static/range {v3 .. v9}, Lcom/android/server/VibratorService;->-wrap5(Lcom/android/server/VibratorService;JIIII)V

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v12, v8, v18

    sub-long/2addr v4, v12

    :cond_2
    :goto_3
    move v14, v2

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v10}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v11}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    invoke-static/range {v3 .. v11}, Lcom/android/server/VibratorService;->-wrap4(Lcom/android/server/VibratorService;JII[IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_4
    if-gez v17, :cond_5

    move v2, v14

    goto :goto_1

    :cond_5
    move/from16 v2, v17

    const-wide/16 v4, 0x0

    goto :goto_3

    :cond_6
    move v2, v14

    goto :goto_1
.end method

.method public playWaveform()V
    .locals 22

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v5}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v5}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v4

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v5}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v18

    const/4 v13, 0x0

    const-wide/16 v6, 0x0

    move/from16 v16, v13

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v5, :cond_5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    aget v8, v4, v16

    add-int/lit8 v13, v16, 0x1

    aget-wide v14, v19, v16

    const-wide/16 v10, 0x0

    cmp-long v5, v14, v10

    if-gtz v5, :cond_0

    move/from16 v16, v13

    goto :goto_0

    :cond_0
    if-eqz v8, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-gtz v5, :cond_3

    add-int/lit8 v5, v13, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    invoke-static/range {v5 .. v12}, Lcom/android/server/VibratorService;->-wrap3(Lcom/android/server/VibratorService;JIIIII)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v20

    if-eqz v8, :cond_2

    sub-long v6, v6, v20

    :cond_2
    :goto_2
    move/from16 v16, v13

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v5, v8}, Lcom/android/server/VibratorService;->-wrap6(Lcom/android/server/VibratorService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_4
    if-gez v18, :cond_6

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    move/from16 v13, v18

    goto :goto_2
.end method

.method public run()V
    .locals 3

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playCommonPattern()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get13(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get11(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/VibratorService;->-set5(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$VibrateThread;)Lcom/android/server/VibratorService$VibrateThread;

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v0, v2}, Lcom/android/server/VibratorService;->-wrap8(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap7(Lcom/android/server/VibratorService;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    monitor-exit v1

    return-void

    :cond_3
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method
