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
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get11(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get15(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get11(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get15(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$Vibration;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/VibratorService;->-set5(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;

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
    iget-boolean v3, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

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


# virtual methods
.method public run()V
    .locals 20

    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v16

    move-object/from16 v0, v16

    array-length v15, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v12, 0x0

    move v14, v2

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v3, :cond_a

    if-ge v14, v15, :cond_0

    add-int/lit8 v2, v14, 0x1

    aget-wide v8, v16, v14

    add-long/2addr v4, v8

    move v14, v2

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v3, :cond_3

    move v2, v14

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->-get15(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v8}, Lcom/android/server/VibratorService$Vibration;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/VibratorService;->-set4(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v8

    monitor-enter v8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v3, v3, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v9, 0x0

    iput-object v9, v3, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3, v9}, Lcom/android/server/VibratorService;->-wrap4(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->-wrap3(Lcom/android/server/VibratorService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit v8

    return-void

    :cond_3
    if-ge v14, v15, :cond_8

    add-int/lit8 v2, v14, 0x1

    :try_start_2
    aget-wide v4, v16, v14

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    invoke-static/range {v3 .. v9}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;JIIII)V

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v12, v8, v18

    sub-long/2addr v4, v12

    :cond_4
    :goto_4
    move v14, v2

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v8}, Lcom/android/server/VibratorService;->-get7(Lcom/android/server/VibratorService;)I

    move-result v8

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v10}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v11}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    invoke-static/range {v3 .. v11}, Lcom/android/server/VibratorService;->-wrap1(Lcom/android/server/VibratorService;JII[IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9}, Lcom/android/server/VibratorService;->-get7(Lcom/android/server/VibratorService;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    goto :goto_5

    :cond_8
    if-gez v17, :cond_9

    move v2, v14

    goto/16 :goto_1

    :cond_9
    move/from16 v2, v17

    const-wide/16 v4, 0x0

    goto :goto_4

    :catchall_1
    move-exception v3

    monitor-exit v8

    throw v3

    :cond_a
    move v2, v14

    goto/16 :goto_1
.end method
