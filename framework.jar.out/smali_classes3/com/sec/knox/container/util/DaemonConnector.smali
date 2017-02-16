.class public Lcom/sec/knox/container/util/DaemonConnector;
.super Ljava/lang/Object;
.source "DaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/util/DaemonConnector$Command;,
        Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;,
        Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;,
        Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x15f90

.field private static final LOGD:Z = true

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x1f4L


# instance fields
.field private final BUFFER_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "callbacks"    # Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 68
    const/16 v0, 0x1000

    iput v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->BUFFER_SIZE:I

    .line 72
    iput-object p1, p0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

    .line 73
    iput-object p2, p0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    invoke-direct {v0, p3}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    if-eqz p4, :cond_0

    .end local p4    # "logTag":Ljava/lang/String;
    :goto_0
    iput-object p4, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    .line 71
    return-void

    .line 76
    .restart local p4    # "logTag":Ljava/lang/String;
    :cond_0
    const-string/jumbo p4, "ECS_DaemonConnector"

    goto :goto_0
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x22

    .line 414
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v1, 0x1

    .line 415
    .local v1, "hasSpaces":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 416
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 420
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 421
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 423
    .local v0, "c":C
    if-ne v0, v5, :cond_2

    .line 424
    const-string/jumbo v4, "\\\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    :cond_2
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_3

    .line 426
    const-string/jumbo v4, "\\\\"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 428
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 432
    .end local v0    # "c":C
    :cond_4
    if-eqz v1, :cond_5

    .line 433
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    :cond_5
    return-void
.end method

.method private listenToSocket()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v14, 0x0

    .line 111
    .local v14, "socket":Landroid/net/LocalSocket;
    const/16 v17, 0x1000

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 112
    .local v4, "buffer":[B
    const/16 v16, 0x0

    .line 115
    .local v16, "start":I
    :try_start_0
    new-instance v15, Landroid/net/LocalSocket;

    invoke-direct {v15}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    .end local v14    # "socket":Landroid/net/LocalSocket;
    .local v15, "socket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v3, Landroid/net/LocalSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 117
    sget-object v18, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 116
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 119
    .local v3, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v15, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 121
    invoke-virtual {v15}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 122
    .local v11, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 123
    :try_start_2
    invoke-virtual {v15}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v18

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 129
    :cond_0
    :goto_0
    move/from16 v0, v16

    rsub-int v0, v0, 0x1000

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 130
    .local v5, "count":I
    if-gez v5, :cond_6

    .line 131
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "got "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " reading with start = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 187
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v17, :cond_1

    .line 189
    :try_start_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "closing stream for "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 194
    :goto_1
    const/16 v17, 0x0

    :try_start_6
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_1
    monitor-exit v18

    .line 199
    if-eqz v15, :cond_2

    .line 200
    :try_start_7
    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 206
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 207
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 108
    :cond_3
    return-void

    .line 122
    .end local v5    # "count":I
    :catchall_0
    move-exception v17

    :try_start_8
    monitor-exit v18

    throw v17
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 181
    .end local v3    # "address":Landroid/net/LocalSocketAddress;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    .local v9, "ex":Ljava/io/IOException;
    move-object v14, v15

    .line 182
    .end local v15    # "socket":Landroid/net/LocalSocket;
    :goto_3
    :try_start_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Communications error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 185
    .end local v9    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v17

    .line 186
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 187
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v19, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v19, :cond_4

    .line 189
    :try_start_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "closing stream for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 194
    :goto_5
    const/16 v19, 0x0

    :try_start_c
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_4
    monitor-exit v18

    .line 199
    if-eqz v14, :cond_5

    .line 200
    :try_start_d
    invoke-virtual {v14}, Landroid/net/LocalSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 185
    :cond_5
    :goto_6
    throw v17

    .line 136
    .restart local v3    # "address":Landroid/net/LocalSocketAddress;
    .restart local v5    # "count":I
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "socket":Landroid/net/LocalSocket;
    :cond_6
    add-int v5, v5, v16

    .line 137
    const/16 v16, 0x0

    .line 139
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7
    if-ge v10, v5, :cond_9

    .line 140
    :try_start_e
    aget-byte v17, v4, v10

    if-nez v17, :cond_7

    .line 141
    new-instance v12, Ljava/lang/String;

    sub-int v17, v10, v16

    .line 142
    const-string/jumbo v18, "UTF-8"

    invoke-static/range {v18 .. v18}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v18

    .line 141
    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v12, v4, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 143
    .local v12, "rawEvent":Ljava/lang/String;
    const-string/jumbo v17, "RCV <-"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 146
    :try_start_f
    invoke-static {v12}, Lcom/sec/knox/container/util/DaemonEvent;->parseRawEvent(Ljava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v8

    .line 147
    .local v8, "event":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassUnsolicited()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    .line 151
    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v19

    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v20

    .line 150
    invoke-virtual/range {v18 .. v20}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    .end local v8    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :goto_8
    add-int/lit8 v16, v10, 0x1

    .line 139
    .end local v12    # "rawEvent":Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 153
    .restart local v8    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    .restart local v12    # "rawEvent":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    move-object/from16 v17, v0

    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->getCmdNumber()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->add(ILcom/sec/knox/container/util/DaemonEvent;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_8

    .line 155
    .end local v8    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :catch_1
    move-exception v7

    .line 156
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_10
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Problem parsing message: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 185
    .end local v3    # "address":Landroid/net/LocalSocketAddress;
    .end local v5    # "count":I
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "i":I
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "rawEvent":Ljava/lang/String;
    :catchall_2
    move-exception v17

    move-object v14, v15

    .end local v15    # "socket":Landroid/net/LocalSocket;
    .local v14, "socket":Landroid/net/LocalSocket;
    goto/16 :goto_4

    .line 162
    .end local v14    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "address":Landroid/net/LocalSocketAddress;
    .restart local v5    # "count":I
    .restart local v10    # "i":I
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "socket":Landroid/net/LocalSocket;
    :cond_9
    if-nez v16, :cond_a

    .line 163
    new-instance v12, Ljava/lang/String;

    .line 164
    const-string/jumbo v17, "UTF-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    .line 163
    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v4, v0, v5, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 165
    .restart local v12    # "rawEvent":Ljava/lang/String;
    const-string/jumbo v17, "RCV incomplete <-"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    .line 170
    .end local v12    # "rawEvent":Ljava/lang/String;
    :cond_a
    move/from16 v0, v16

    if-eq v0, v5, :cond_b

    .line 171
    move/from16 v0, v16

    rsub-int v13, v0, 0x1000

    .line 172
    .local v13, "remaining":I
    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v0, v4, v1, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 173
    move/from16 v16, v13

    goto/16 :goto_0

    .line 175
    .end local v13    # "remaining":I
    :cond_b
    const/16 v16, 0x0

    .line 176
    if-eqz v4, :cond_0

    .line 177
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_0

    .line 191
    .end local v10    # "i":I
    :catch_2
    move-exception v6

    .line 192
    .local v6, "e":Ljava/io/IOException;
    :try_start_11
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed closing output stream: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto/16 :goto_1

    .line 186
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v17

    monitor-exit v18

    throw v17

    .line 202
    :catch_3
    move-exception v9

    .line 203
    .restart local v9    # "ex":Ljava/io/IOException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed closing socket: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 191
    .end local v3    # "address":Landroid/net/LocalSocketAddress;
    .end local v5    # "count":I
    .end local v9    # "ex":Ljava/io/IOException;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "socket":Landroid/net/LocalSocket;
    :catch_4
    move-exception v6

    .line 192
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_12
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed closing output stream: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto/16 :goto_5

    .line 186
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v17

    monitor-exit v18

    throw v17

    .line 202
    :catch_5
    move-exception v9

    .line 203
    .restart local v9    # "ex":Ljava/io/IOException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed closing socket: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 181
    .end local v9    # "ex":Ljava/io/IOException;
    .local v14, "socket":Landroid/net/LocalSocket;
    :catch_6
    move-exception v9

    .restart local v9    # "ex":Ljava/io/IOException;
    goto/16 :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void
.end method

.method private varargs makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 218
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    array-length v4, p3

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, p3, v2

    .line 223
    .local v0, "arg":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "argString":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 225
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    :cond_1
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {p1, v1}, Lcom/sec/knox/container/util/DaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "argString":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 373
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 374
    .local v2, "rawEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    .line 375
    .local v1, "events":[Lcom/sec/knox/container/util/DaemonEvent;
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 376
    .local v0, "event":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v0}, Lcom/sec/knox/container/util/DaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_0
    return-object v2
.end method

.method public doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "expectedCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 389
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v2

    .line 390
    .local v2, "events":[Lcom/sec/knox/container/util/DaemonEvent;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_1

    .line 391
    aget-object v1, v2, v4

    .line 392
    .local v1, "event":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v0

    .line 393
    .local v0, "code":I
    if-ne v0, p2, :cond_0

    .line 394
    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 396
    :cond_0
    new-instance v6, Lcom/sec/knox/container/util/DaemonConnectorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected list response "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 397
    const-string/jumbo v8, " instead of "

    .line 396
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 401
    .end local v0    # "code":I
    .end local v1    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_1
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-object v3, v2, v6

    .line 402
    .local v3, "finalEvent":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v3}, Lcom/sec/knox/container/util/DaemonEvent;->isClassOk()Z

    move-result v6

    if-nez v6, :cond_2

    .line 403
    new-instance v6, Lcom/sec/knox/container/util/DaemonConnectorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected final event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 406
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 481
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 482
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public execute(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;
    .locals 2
    .param p1, "cmd"    # Lcom/sec/knox/container/util/DaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->-get1(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->-get0(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonEvent;
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    .line 257
    .local v0, "events":[Lcom/sec/knox/container/util/DaemonEvent;
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 258
    new-instance v1, Lcom/sec/knox/container/util/DaemonConnectorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected exactly one response, but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    array-length v3, v0

    .line 258
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public varargs execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;
    .locals 20
    .param p1, "timeout"    # I
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 306
    .local v9, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/knox/container/util/DaemonEvent;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v12

    .line 307
    .local v12, "sequenceNumber":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    const/16 v16, 0x20

    .line 307
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 309
    .local v4, "cmdBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 311
    .local v14, "startTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/knox/container/util/DaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 318
    .local v10, "logCmd":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v13, v0

    if-lez v13, :cond_0

    .line 319
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "SND -> {"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v16, 0x0

    aget-object v16, p3, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v16, "}"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    .line 322
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 325
    .local v11, "sentCmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 326
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v13, :cond_1

    .line 327
    new-instance v13, Lcom/sec/knox/container/util/DaemonConnectorException;

    const-string/jumbo v17, "missing output stream"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :catchall_0
    move-exception v13

    monitor-exit v16

    throw v13

    .line 330
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    const-string/jumbo v17, "UTF-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v16

    .line 337
    const/4 v8, 0x0

    .line 339
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    move/from16 v0, p1

    invoke-virtual {v13, v12, v0, v11}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->remove(IILjava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v8

    .line 340
    .local v8, "event":Lcom/sec/knox/container/util/DaemonEvent;
    if-nez v8, :cond_3

    .line 341
    const-string/jumbo v13, "timed-out waiting for response"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    .line 342
    new-instance v13, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v8}, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    throw v13

    .line 331
    .end local v8    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :catch_0
    move-exception v5

    .line 332
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v13, Lcom/sec/knox/container/util/DaemonConnectorException;

    const-string/jumbo v17, "problem sending command"

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v5}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_3
    const-string/jumbo v13, "RMV <-"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassContinue()Z

    move-result v13

    if-nez v13, :cond_2

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 349
    .local v6, "endTime":J
    sub-long v16, v6, v14

    const-wide/16 v18, 0x1f4

    cmp-long v13, v16, v18

    if-lez v13, :cond_4

    .line 355
    :cond_4
    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassClientError()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 356
    new-instance v13, Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v8}, Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    throw v13

    .line 358
    :cond_5
    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassServerError()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 359
    new-instance v13, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v8}, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    throw v13

    .line 362
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Lcom/sec/knox/container/util/DaemonEvent;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/sec/knox/container/util/DaemonEvent;

    return-object v13
.end method

.method public executeForList(Lcom/sec/knox/container/util/DaemonConnector$Command;)[Lcom/sec/knox/container/util/DaemonEvent;
    .locals 2
    .param p1, "cmd"    # Lcom/sec/knox/container/util/DaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->-get1(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->-get0(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 289
    const v0, 0x15f90

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/knox/container/util/DaemonConnector;->execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 97
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "event":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/sec/knox/container/util/DaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    const-string/jumbo v2, "Unhandled event \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return v5

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error handling \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public monitor()V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 81
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".CallbackHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 83
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 87
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/sec/knox/container/util/DaemonConnector;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in DaemonConnector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    .line 90
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
