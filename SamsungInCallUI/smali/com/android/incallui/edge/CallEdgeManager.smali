.class public Lcom/android/incallui/edge/CallEdgeManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
.implements Lcom/android/incallui/motion/CallSContextMotion$FlatListener;


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

    const-string v0, "glance_reply_message"

    sput-object v0, Lcom/android/incallui/edge/CallEdgeManager;->GLANCE_REPLY_MESSAGE:Ljava/lang/String;

    const-string v0, "glance_reply_state"

    sput-object v0, Lcom/android/incallui/edge/CallEdgeManager;->GLANCE_REPLY_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v2, 0x1001a

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CallEdgeManager"

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_TYPE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_INIT_VALUE_CHECKER:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_INIT_VALUE_CHECKER_DELAY:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_SENSING_START_CHECKER_FOR_GLACE_REPLY:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_SENSING_DURATION_FOR_GLACE_REPLY:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSelfThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->CLOSE:I

    const/4 v0, -0x3

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->CLOSE_TO_OPEN:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    new-instance v0, Lcom/android/incallui/edge/CallEdgeManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/edge/CallEdgeManager$1;-><init>(Lcom/android/incallui/edge/CallEdgeManager;)V

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHRMSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/edge/CallEdgeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->rejectCallWithGlanceReplyMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/edge/CallEdgeManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAndStartImportantPeopleUX(Lcom/android/incallui/Call;)V
    .locals 4

    new-instance v1, Lcom/android/incallui/edge/CallEdgeManager$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/edge/CallEdgeManager$2;-><init>(Lcom/android/incallui/edge/CallEdgeManager;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSelfThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CallEdgeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndStartImportantPeopleUX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isCallLightingCondition()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "edge_lighting_show_condition"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "edge_lighting_show_condition"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->isCoverClosed()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCallLightingCondition :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method private isCoverClosed()Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCoverClosed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private isEnableTurnOverLighting()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "turn_over_lighting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "edge_lighting"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edge_lighting"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->isCallLightingCondition()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableTurnOverLighting :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private rejectCallWithGlanceReplyMessage()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    sget-object v3, Lcom/android/incallui/edge/CallEdgeManager;->GLANCE_REPLY_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/edge/CallEdgeManager;->init()V

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.incallui"

    const-string v2, "GLAN"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f09048d

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09048e

    invoke-static {v1}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized resetHRMSensing()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CallEdgeManager"

    const-string v1, "resetHRMSensing"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startHRMSensing()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "CallEdgeManager"

    const-string v1, "startHRMSensing"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHRMSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mIsHRMSencing:Z

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopHRMSensing()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mIsHRMSencing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mIsHRMSencing:Z

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getRawContactId(J)J
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "_id = ?"

    new-array v4, v6, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "raw_contact_id"

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-wide/16 v0, 0x0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "raw_contact_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-wide v0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/motion/CallSContextMotion;->stopFlatMotionListening(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->stopHRMSensing()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mCall:Lcom/android/incallui/Call;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mPersonId:J

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/edge/CallEdgeManager;->init()V

    :cond_0
    return-void
.end method

.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 6

    const-string v0, "onContactInfoComplete"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personDataId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/edge/CallEdgeManager;->getRawContactId(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->mPersonId:J

    const-string v2, "CallEdgeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContactInfoComplete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/incallui/edge/CallEdgeManager;->mPersonId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mPersonId:J

    goto :goto_0
.end method

.method public onContactInteractionsInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public onFlatMotionDown()V
    .locals 2

    const-string v0, "CallEdgeManager"

    const-string v1, "onFlatMotionDown"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mIsHRMSencing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->startHRMSensing()V

    :cond_0
    return-void
.end method

.method public onFlatMotionFalse()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->stopHRMSensing()V

    return-void
.end method

.method public onFlatMotionUp()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->stopHRMSensing()V

    return-void
.end method

.method public onFlatMotionVerticality()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->stopHRMSensing()V

    return-void
.end method

.method public onGifImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 3

    const-string v0, "onIncomingCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user is not owner, return"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isSupportEdgeNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->isEnableTurnOverLighting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/edge/CallEdgeManager;->GLANCE_REPLY_STATE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "glance reply disabled or turn over lighting disabled, return"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "glance reply disabled or turn over lighting disabled when tphone RelaxMode"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/android/incallui/edge/CallEdgeManager;->mCall:Lcom/android/incallui/Call;

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/edge/CallEdgeManager;->checkAndStartImportantPeopleUX(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

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

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iput-boolean v5, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const/high16 v1, -0x3fc00000    # -3.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    const-string v0, "CallEdgeManager"

    const-string v1, "onSensorChanged : skip. HRM sensor was closed from the beginning."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->resetHRMSensing()V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    const-string v0, "CallEdgeManager"

    const-string v1, "onSensorChanged : come close"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    if-nez v0, :cond_0

    const-string v0, "CallEdgeManager"

    const-string v1, "onSensorChanged : come close and register handler for message"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method
