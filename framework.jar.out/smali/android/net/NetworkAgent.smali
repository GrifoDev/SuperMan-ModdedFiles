.class public abstract Landroid/net/NetworkAgent;
.super Landroid/os/Handler;
.source "NetworkAgent.java"


# static fields
.field private static final BASE:I = 0x81000

.field private static final BW_REFRESH_MIN_WIN_MS:J = 0x1f4L

.field public static final CMD_PREVENT_AUTOMATIC_RECONNECT:I = 0x8100f

.field public static final CMD_REPORT_NETWORK_STATUS:I = 0x81007

.field public static final CMD_REQUEST_BANDWIDTH_UPDATE:I = 0x8100a

.field public static final CMD_SAVE_ACCEPT_UNVALIDATED:I = 0x81009

.field public static final CMD_SET_SIGNAL_STRENGTH_THRESHOLDS:I = 0x8100e

.field public static final CMD_START_PACKET_KEEPALIVE:I = 0x8100b

.field public static final CMD_STOP_PACKET_KEEPALIVE:I = 0x8100c

.field public static final CMD_SUSPECT_BAD:I = 0x81000

.field private static final DBG:Z = true

.field public static final EVENT_NETWORK_CAPABILITIES_CHANGED:I = 0x81002

.field public static final EVENT_NETWORK_INFO_CHANGED:I = 0x81001

.field public static final EVENT_NETWORK_PROPERTIES_CHANGED:I = 0x81003

.field public static final EVENT_NETWORK_SCORE_CHANGED:I = 0x81004

.field public static final EVENT_PACKET_KEEPALIVE:I = 0x8100d

.field public static final EVENT_SET_EXPLICITLY_SELECTED:I = 0x81008

.field public static final EVENT_UID_RANGES_ADDED:I = 0x81005

.field public static final EVENT_UID_RANGES_REMOVED:I = 0x81006

.field public static final INVALID_NETWORK:I = 0x2

.field public static final INVALID_NETWORK_DISABLE:I = 0x3

.field public static REDIRECT_URL_KEY:Ljava/lang/String; = null

.field public static final VALID_NETWORK:I = 0x1

.field public static final VALID_NETWORK_AUTHENTICATED:I = 0x4

.field private static final VDBG:Z = false

.field public static final WIFI_BASE_SCORE:I = 0x3c


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private volatile mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mContext:Landroid/content/Context;

.field private volatile mLastBwRefreshTime:J

.field private mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPollLceScheduled:Z

.field private final mPreConnectedQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final netId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, "redirect URL"

    sput-object v0, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .locals 9
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "ni"    # Landroid/net/NetworkInfo;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "lp"    # Landroid/net/LinkProperties;
    .param p7, "score"    # I

    .prologue
    .line 212
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "ni"    # Landroid/net/NetworkInfo;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "lp"    # Landroid/net/LinkProperties;
    .param p7, "score"    # I
    .param p8, "misc"    # Landroid/net/NetworkMisc;

    .prologue
    const/4 v4, 0x0

    .line 217
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    .line 55
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    .line 57
    iput-boolean v4, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    .line 58
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 218
    iput-object p3, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    .line 219
    iput-object p2, p0, Landroid/net/NetworkAgent;->mContext:Landroid/content/Context;

    .line 220
    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 220
    :cond_1
    if-eqz p6, :cond_0

    .line 225
    iget-object v1, p0, Landroid/net/NetworkAgent;->mContext:Landroid/content/Context;

    .line 226
    const-string/jumbo v2, "connectivity"

    .line 225
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 227
    .local v0, "cm":Landroid/net/ConnectivityManager;
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/net/NetworkInfo;

    invoke-direct {v2, p4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 228
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3, p6}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v4, Landroid/net/NetworkCapabilities;

    invoke-direct {v4, p5}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move v5, p7

    move-object v6, p8

    .line 227
    invoke-virtual/range {v0 .. v6}, Landroid/net/ConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    move-result v1

    iput v1, p0, Landroid/net/NetworkAgent;->netId:I

    .line 216
    return-void
.end method

.method private queueOrSendMessage(III)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(IIILjava/lang/Object;)V

    .line 337
    return-void
.end method

.method private queueOrSendMessage(IIILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 342
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 343
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 344
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 345
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 346
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 347
    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(Landroid/os/Message;)V

    .line 341
    return-void
.end method

.method private queueOrSendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, p1, v0, v0, p2}, Landroid/net/NetworkAgent;->queueOrSendMessage(IIILjava/lang/Object;)V

    .line 333
    return-void
.end method

.method private queueOrSendMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 351
    iget-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 350
    return-void

    .line 355
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addUidRanges([Landroid/net/UidRange;)V
    .locals 1
    .param p1, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 399
    const v0, 0x81005

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 398
    return-void
.end method

.method public explicitlySelected(Z)V
    .locals 2
    .param p1, "acceptUnvalidated"    # Z

    .prologue
    .line 422
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x81008

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 421
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 235
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v11, :cond_1

    .line 236
    const-string/jumbo v11, "Received new connection while already connected!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_1
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 240
    .local v2, "ac":Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v14, v0, v11}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 241
    const v11, 0x11002

    .line 242
    const/4 v14, 0x0

    .line 241
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v11, v14}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v14

    .line 244
    :try_start_0
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 245
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "m$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 246
    .local v7, "m":Landroid/os/Message;
    invoke-virtual {v2, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 243
    .end local v7    # "m":Landroid/os/Message;
    .end local v8    # "m$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    monitor-exit v14

    throw v11

    .line 248
    .restart local v8    # "m$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v14

    goto :goto_0

    .line 255
    .end local v2    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v8    # "m$iterator":Ljava/util/Iterator;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v11}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_0

    .line 259
    :sswitch_2
    const-string/jumbo v11, "NetworkAgent channel lost"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkAgent;->unwanted()V

    .line 262
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v11

    .line 263
    const/4 v14, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v11

    goto :goto_0

    .line 262
    :catchall_1
    move-exception v14

    monitor-exit v11

    throw v14

    .line 268
    :sswitch_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unhandled Message "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :sswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 276
    .local v4, "currentTimeMs":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    const-wide/16 v16, 0x1f4

    add-long v14, v14, v16

    cmp-long v11, v4, v14

    if-ltz v11, :cond_3

    .line 277
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    .line 278
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkAgent;->pollLceData()V

    goto/16 :goto_0

    .line 283
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    if-nez v11, :cond_0

    .line 284
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    const-wide/16 v16, 0x1f4

    add-long v14, v14, v16

    sub-long/2addr v14, v4

    .line 285
    const-wide/16 v16, 0x1

    .line 284
    add-long v12, v14, v16

    .line 287
    .local v12, "waitTime":J
    const v11, 0x8100a

    .line 286
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Landroid/net/NetworkAgent;->sendEmptyMessageDelayed(IJ)Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    goto/16 :goto_0

    .line 293
    .end local v4    # "currentTimeMs":J
    .end local v12    # "waitTime":J
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    sget-object v14, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 298
    .local v9, "redirectUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v9}, Landroid/net/NetworkAgent;->networkStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 302
    .end local v9    # "redirectUrl":Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/NetworkAgent;->saveAcceptUnvalidated(Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 306
    :sswitch_7
    invoke-virtual/range {p0 .. p1}, Landroid/net/NetworkAgent;->startPacketKeepalive(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 310
    :sswitch_8
    invoke-virtual/range {p0 .. p1}, Landroid/net/NetworkAgent;->stopPacketKeepalive(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 316
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    const-string/jumbo v14, "thresholds"

    invoke-virtual {v11, v14}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 319
    .local v10, "thresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_3
    new-array v6, v11, [I

    .line 320
    .local v6, "intThresholds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v11, v6

    if-ge v3, v11, :cond_6

    .line 321
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v6, v3

    .line 320
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 319
    .end local v3    # "i":I
    .end local v6    # "intThresholds":[I
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 323
    .restart local v3    # "i":I
    .restart local v6    # "intThresholds":[I
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/NetworkAgent;->setSignalStrengthThresholds([I)V

    goto/16 :goto_0

    .line 327
    .end local v3    # "i":I
    .end local v6    # "intThresholds":[I
    .end local v10    # "thresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkAgent;->preventAutomaticReconnect()V

    goto/16 :goto_0

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_0
        0x11003 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x81000 -> :sswitch_3
        0x81007 -> :sswitch_5
        0x81009 -> :sswitch_6
        0x8100a -> :sswitch_4
        0x8100b -> :sswitch_7
        0x8100c -> :sswitch_8
        0x8100e -> :sswitch_9
        0x8100f -> :sswitch_a
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v0, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetworkAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void
.end method

.method protected networkStatus(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 459
    return-void
.end method

.method public onPacketKeepaliveEvent(II)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "reason"    # I

    .prologue
    .line 490
    const v0, 0x8100d

    invoke-direct {p0, v0, p1, p2}, Landroid/net/NetworkAgent;->queueOrSendMessage(III)V

    .line 489
    return-void
.end method

.method protected pollLceData()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method protected preventAutomaticReconnect()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public removeUidRanges([Landroid/net/UidRange;)V
    .locals 1
    .param p1, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 407
    const v0, 0x81006

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 406
    return-void
.end method

.method protected saveAcceptUnvalidated(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .prologue
    .line 469
    return-void
.end method

.method public sendLinkProperties(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 364
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    const v1, 0x81003

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 363
    return-void
.end method

.method public sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 378
    iget-object v0, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    .line 381
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 380
    const v1, 0x81002

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 377
    return-void
.end method

.method public sendNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 371
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    const v1, 0x81001

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 370
    return-void
.end method

.method public sendNetworkScore(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    .line 388
    if-gez p1, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Score must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const v1, 0x81004

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 387
    return-void
.end method

.method protected setSignalStrengthThresholds([I)V
    .locals 0
    .param p1, "thresholds"    # [I

    .prologue
    .line 497
    return-void
.end method

.method protected startPacketKeepalive(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 476
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, -0x1e

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkAgent;->onPacketKeepaliveEvent(II)V

    .line 475
    return-void
.end method

.method protected stopPacketKeepalive(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 483
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, -0x1e

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkAgent;->onPacketKeepaliveEvent(II)V

    .line 482
    return-void
.end method

.method protected abstract unwanted()V
.end method
