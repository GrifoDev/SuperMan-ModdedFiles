.class public Lcom/android/incallui/edge/CallEdgeManager;
.super Ljava/lang/Object;
.source "CallEdgeManager.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/motion/CallSContextMotion$FlatListener;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# static fields
.field private static GLANCE_REPLY_MESSAGE:Ljava/lang/String; = null

.field private static GLANCE_REPLY_STATE:Ljava/lang/String; = null

.field public static final HRM_SENSING_DURATION_FOR_GLACE_REPLY_EXPLAIN_TEXT:I = 0x2


# instance fields
.field private final CLOSE:I

.field private final CLOSE_TO_OPEN:I

.field private final HRM_INIT_VALUE_CHECKER:I

.field private final HRM_INIT_VALUE_CHECKER_DELAY:I

.field private final HRM_SENSING_DURATION_FOR_GLACE_REPLY:I

.field private final HRM_SENSING_START_CHECKER_FOR_GLACE_REPLY:I

.field private final HRM_TYPE:I

.field private final TAG:Ljava/lang/String;

.field private mCall:Lcom/android/incallui/Call;

.field private mContext:Landroid/content/Context;

.field private mHRMSensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;

.field private mIsHRMSencing:Z

.field private mPersonId:J

.field private mSelfThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private sensorStartwithClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "glance_reply_message"

    sput-object v0, Lcom/android/incallui/edge/CallEdgeManager;->GLANCE_REPLY_MESSAGE:Ljava/lang/String;

    .line 61
    const-string v0, "glance_reply_state"

    sput-object v0, Lcom/android/incallui/edge/CallEdgeManager;->GLANCE_REPLY_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x1001a

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "CallEdgeManager"

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->TAG:Ljava/lang/String;

    .line 53
    iput v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_TYPE:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_INIT_VALUE_CHECKER:I

    .line 56
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_INIT_VALUE_CHECKER_DELAY:I

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_SENSING_START_CHECKER_FOR_GLACE_REPLY:I

    .line 58
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_SENSING_DURATION_FOR_GLACE_REPLY:I

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSelfThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->CLOSE:I

    .line 184
    const/4 v0, -0x3

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->CLOSE_TO_OPEN:I

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    .line 214
    new-instance v0, Lcom/android/incallui/edge/CallEdgeManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/edge/CallEdgeManager$1;-><init>(Lcom/android/incallui/edge/CallEdgeManager;)V

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 70
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 71
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHRMSensor:Landroid/hardware/Sensor;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/edge/CallEdgeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/edge/CallEdgeManager;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->rejectCallWithGlanceReplyMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/edge/CallEdgeManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/edge/CallEdgeManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAndStartImportantPeopleUX(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 272
    new-instance v1, Lcom/android/incallui/edge/CallEdgeManager$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/edge/CallEdgeManager$2;-><init>(Lcom/android/incallui/edge/CallEdgeManager;)V

    .line 281
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSelfThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v1, v3, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "ree":Ljava/util/concurrent/RejectedExecutionException;
    const-string v2, "CallEdgeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndStartImportantPeopleUX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rejectCallWithGlanceReplyMessage()V
    .locals 5

    .prologue
    .line 226
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 227
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/android/incallui/edge/CallEdgeManager;->GLANCE_REPLY_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/incallui/edge/CallEdgeManager;->init()V

    .line 231
    iget-object v1, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui"

    const-string v3, "GLAN"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method

.method private declared-synchronized resetHRMSensing()V
    .locals 2

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    const-string v0, "CallEdgeManager"

    const-string v1, "resetHRMSensing"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startHRMSensing()V
    .locals 4

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    const-string v0, "CallEdgeManager"

    const-string v1, "startHRMSensing"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHRMSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mIsHRMSencing:Z

    .line 248
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopHRMSensing()V
    .locals 2

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mIsHRMSencing:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mIsHRMSencing:Z

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getRawContactId(J)J
    .locals 11
    .param p1, "dataId"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 134
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 135
    .local v1, "uri":Landroid/net/Uri;
    const-string v3, "_id = ?"

    .line 136
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 137
    .local v4, "selectionArgs":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "raw_contact_id"

    aput-object v0, v2, v7

    .line 138
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 140
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 141
    .local v8, "raw_contact_id":J
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "raw_contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 145
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 147
    return-wide v8
.end method

.method public init()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/motion/CallSContextMotion;->stopFlatMotionListening(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->stopHRMSensing()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mCall:Lcom/android/incallui/Call;

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mPersonId:J

    .line 79
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 180
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/incallui/edge/CallEdgeManager;->init()V

    .line 114
    :cond_0
    return-void
.end method

.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 121
    const-string v2, "onContactInfoComplete"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    if-eqz p2, :cond_0

    iget-boolean v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v2, :cond_0

    .line 123
    iget-wide v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personDataId:J

    .line 124
    .local v0, "dataId":J
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/edge/CallEdgeManager;->getRawContactId(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->mPersonId:J

    .line 125
    const-string v2, "CallEdgeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContactInfoComplete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/incallui/edge/CallEdgeManager;->mPersonId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v0    # "dataId":J
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v2}, Lcom/android/incallui/edge/CallEdgeManager;->checkAndStartImportantPeopleUX(Lcom/android/incallui/Call;)V

    .line 131
    return-void

    .line 127
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->mPersonId:J

    goto :goto_0
.end method

.method public onContactInteractionsInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 156
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 118
    return-void
.end method

.method public onFlatMotionDown()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->startHRMSensing()V

    .line 161
    return-void
.end method

.method public onFlatMotionFalse()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->stopHRMSensing()V

    .line 171
    return-void
.end method

.method public onFlatMotionUp()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->stopHRMSensing()V

    .line 166
    return-void
.end method

.method public onFlatMotionVerticality()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->stopHRMSensing()V

    .line 176
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 151
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x1

    .line 83
    const-string v0, "onIncomingCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isSupportEdgeNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "turn_over_lighting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/edge/CallEdgeManager;->GLANCE_REPLY_STATE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    const-string v0, "glance reply disabled or turn over lighting disabled, return"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const-string v0, "glance reply disabled or turn over lighting disabled when tphone RelaxMode"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    iput-object p1, p0, Lcom/android/incallui/edge/CallEdgeManager;->mCall:Lcom/android/incallui/Call;

    .line 102
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/edge/CallEdgeManager;->checkAndStartImportantPeopleUX(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 190
    const-string v0, "CallEdgeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    .line 194
    iput-boolean v5, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const/high16 v1, -0x3fc00000    # -3.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 198
    iget-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    if-eqz v0, :cond_2

    .line 199
    iput-boolean v3, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    .line 200
    const-string v0, "CallEdgeManager"

    const-string v1, "onSensorChanged : skip. HRM sensor was closed from the beginning."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->resetHRMSensing()V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    .line 205
    const-string v0, "CallEdgeManager"

    const-string v1, "onSensorChanged : come close"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    if-nez v0, :cond_0

    .line 207
    const-string v0, "CallEdgeManager"

    const-string v1, "onSensorChanged : come close and register handler for message"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 107
    return-void
.end method
