.class Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;
.super Ljava/lang/Object;
.source "SensorHubManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHubThreadRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;->this$1:Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private open()Z
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Lcom/samsung/android/sensorhub/SensorHubManager;->sensorhubs_create_queue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/sensorhub/SensorHubManager;->-set0(J)J

    .line 160
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 165
    const/16 v2, 0x4000

    new-array v4, v2, [B

    .line 166
    .local v4, "buffer":[B
    const/16 v2, 0x9

    new-array v8, v2, [F

    .line 167
    .local v8, "values":[F
    const/4 v2, 0x1

    new-array v5, v2, [I

    .line 168
    .local v5, "version":[I
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 169
    .local v6, "type":[I
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 170
    .local v7, "sizeofdata":[I
    const/4 v2, 0x1

    new-array v9, v2, [J

    .line 171
    .local v9, "timestamp":[J
    const/16 v17, 0x64

    .line 172
    .local v17, "retry":I
    const/4 v2, -0x8

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 173
    const-string/jumbo v2, "SensorHubManager"

    const-string/jumbo v3, "=======>>> SensorHubManager Thread RUNNING <<<======="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;->open()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    return-void

    .line 179
    :cond_0
    monitor-enter p0

    .line 180
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;->this$1:Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;->mSensorHubsReady:Z

    .line 181
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 185
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v2, v4, v3

    .line 186
    invoke-static {}, Lcom/samsung/android/sensorhub/SensorHubManager;->-get1()J

    move-result-wide v2

    .line 187
    const/16 v10, 0x4000

    .line 186
    invoke-static/range {v2 .. v10}, Lcom/samsung/android/sensorhub/SensorHubManager;->sensorhubs_data_poll(J[B[I[I[I[F[JI)I

    move-result v18

    .line 188
    .local v18, "sensorhub":I
    const/4 v2, 0x0

    aget v13, v7, v2

    .line 190
    .local v13, "length":I
    sget-object v3, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 191
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_1

    :try_start_1
    sget-object v2, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 192
    :cond_1
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    sget-object v2, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    :cond_2
    invoke-static {}, Lcom/samsung/android/sensorhub/SensorHubManager;->-get1()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/samsung/android/sensorhub/SensorHubManager;->sensorhubs_destroy_queue(J)V

    .line 198
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Lcom/samsung/android/sensorhub/SensorHubManager;->-set0(J)J

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;->this$1:Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;

    const/4 v12, 0x0

    iput-object v12, v2, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;->mThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit v3

    .line 164
    return-void

    .line 179
    .end local v13    # "length":I
    .end local v18    # "sensorhub":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 193
    .restart local v13    # "length":I
    .restart local v18    # "sensorhub":I
    :cond_3
    :try_start_2
    const-string/jumbo v2, "SensorHubManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sensorhubs_data_poll() failed, we bail out: sensorHub="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    monitor-exit v3

    goto :goto_0

    .line 202
    :cond_5
    const/4 v2, 0x0

    :try_start_3
    aget-byte v2, v4, v2

    if-nez v2, :cond_6

    .line 203
    const-string/jumbo v2, "SensorHubManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sensorhubs_data_poll() buffer 0 ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    add-int/lit8 v17, v17, -0x1

    if-gtz v17, :cond_4

    .line 205
    const-string/jumbo v2, "SensorHubManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sensorhubs_data_poll() destroy queue ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/samsung/android/sensorhub/SensorHubManager;->-get1()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/samsung/android/sensorhub/SensorHubManager;->sensorhubs_destroy_queue(J)V

    .line 207
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Lcom/samsung/android/sensorhub/SensorHubManager;->-set0(J)J

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;->this$1:Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;

    const/4 v12, 0x0

    iput-object v12, v2, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;->mThread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 190
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 212
    :cond_6
    const/16 v17, 0x64

    .line 213
    :try_start_4
    sget-object v2, Lcom/samsung/android/sensorhub/SensorHubManager;->sHandleToSensorHub:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sensorhub/SensorHub;

    .line 214
    .local v11, "sensorhubObject":Lcom/samsung/android/sensorhub/SensorHub;
    if-eqz v11, :cond_4

    .line 215
    sget-object v2, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 216
    .local v19, "size":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 217
    sget-object v2, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;

    .line 218
    .local v10, "listener":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    invoke-virtual {v10, v11}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->hasSensorHub(Lcom/samsung/android/sensorhub/SensorHub;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v12, v4

    move-object v14, v8

    move-object v15, v9

    .line 219
    invoke-virtual/range {v10 .. v15}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->onGetSensorHubDataLocked(Lcom/samsung/android/sensorhub/SensorHub;[BI[F[J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 216
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_2
.end method
