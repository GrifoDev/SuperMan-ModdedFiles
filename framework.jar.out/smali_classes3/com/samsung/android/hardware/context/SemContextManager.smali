.class public Lcom/samsung/android/hardware/context/SemContextManager;
.super Ljava/lang/Object;
.source "SemContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClientInfo:Ljava/lang/String;

.field private mIsHistoryDataListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private final mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hardware/context/SemContextManager;)Lcom/samsung/android/hardware/context/SemContextListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mIsHistoryDataListener:Lcom/samsung/android/hardware/context/SemContextListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hardware/context/SemContextManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextEvent;)Z
    .locals 1
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->checkHistoryMode(Lcom/samsung/android/hardware/context/SemContextEvent;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 144
    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 145
    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mIsHistoryDataListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    .line 153
    const-string/jumbo v0, "scontext"

    .line 152
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/ISemContextService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 154
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    .line 151
    return-void
.end method

.method private addListenerAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;
    .locals 1
    .param p1, "service"    # I

    .prologue
    .line 1257
    packed-switch p1, :pswitch_data_0

    .line 1347
    :pswitch_0
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 1350
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :goto_0
    return-object v0

    .line 1259
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_1
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;-><init>()V

    .line 1260
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1263
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_2
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>()V

    .line 1264
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1267
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_3
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;-><init>()V

    .line 1268
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1271
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_4
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;-><init>()V

    .line 1272
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1275
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_5
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;-><init>()V

    .line 1276
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1279
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_6
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;-><init>()V

    .line 1280
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1283
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_7
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;-><init>()V

    .line 1284
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1287
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_8
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;-><init>()V

    .line 1288
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1291
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_9
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;-><init>()V

    .line 1292
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1295
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>()V

    .line 1296
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1299
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_b
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;-><init>()V

    .line 1300
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1303
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_c
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;-><init>()V

    .line 1304
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1307
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_d
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;-><init>()V

    .line 1308
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1311
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>()V

    .line 1312
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1315
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_f
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>()V

    .line 1316
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1319
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_10
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;-><init>()V

    .line 1320
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1323
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_11
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;-><init>()V

    .line 1324
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1327
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_12
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;-><init>()V

    .line 1328
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1331
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_13
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;-><init>()V

    .line 1332
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1335
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_14
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;-><init>()V

    .line 1336
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1339
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_15
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;-><init>()V

    .line 1340
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1343
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :pswitch_16
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;-><init>()V

    .line 1344
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto/16 :goto_0

    .line 1257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method

.method private checkHistoryMode(Lcom/samsung/android/hardware/context/SemContextEvent;)Z
    .locals 11
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1354
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1355
    .local v3, "res":Ljava/lang/Boolean;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1356
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v9}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v6

    .line 1357
    .local v6, "type":I
    const-string/jumbo v9, "onSemContextChanged() : event = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    sparse-switch v6, :sswitch_data_0

    .line 1380
    :goto_0
    const-string/jumbo v7, "SemContextManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7

    .line 1360
    :sswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getPedometerContext()Lcom/samsung/android/hardware/context/SemContextPedometer;

    move-result-object v2

    .line 1361
    .local v2, "pedometerContext":Lcom/samsung/android/hardware/context/SemContextPedometer;
    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getMode()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    move v7, v8

    goto :goto_1

    .line 1364
    .end local v2    # "pedometerContext":Lcom/samsung/android/hardware/context/SemContextPedometer;
    :sswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getStepLevelMonitorContext()Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;

    move-result-object v5

    .line 1366
    .local v5, "stepLevelMonitorContext":Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;
    invoke-virtual {v5}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->getMode()I

    move-result v9

    if-ne v9, v7, :cond_1

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_2

    .line 1369
    .end local v5    # "stepLevelMonitorContext":Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;
    :sswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getActivityBatchContext()Lcom/samsung/android/hardware/context/SemContextActivityBatch;

    move-result-object v0

    .line 1371
    .local v0, "activityBatchContext":Lcom/samsung/android/hardware/context/SemContextActivityBatch;
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->getMode()I

    move-result v9

    if-ne v9, v7, :cond_2

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_3

    .line 1374
    .end local v0    # "activityBatchContext":Lcom/samsung/android/hardware/context/SemContextActivityBatch;
    :sswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v1

    .line 1375
    .local v1, "autoRotation":Lcom/samsung/android/hardware/context/SemContextAutoRotation;
    const-string/jumbo v7, " Angle : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1358
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_3
        0x1a -> :sswitch_2
        0x21 -> :sswitch_1
    .end sparse-switch
.end method

.method private checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .prologue
    .line 1247
    if-nez p1, :cond_0

    .line 1248
    const-string/jumbo v0, "SemContextManager"

    const-string/jumbo v1, "Listener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const/4 v0, 0x0

    return v0

    .line 1251
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    return v0
.end method

.method private getAvailableServiceMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1207
    const/4 v2, 0x0

    .line 1209
    .local v2, "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v3}, Lcom/samsung/android/hardware/context/ISemContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    .end local v2    # "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    return-object v2

    .line 1210
    .restart local v2    # "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 1211
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemContextManager"

    const-string/jumbo v4, "RemoteException in getAvailableServiceMap: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;

    .prologue
    const/4 v4, 0x0

    .line 1223
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1224
    :cond_0
    return-object v4

    .line 1227
    :cond_1
    const/4 v2, 0x0

    .line 1229
    .local v2, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "delegate$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    .line 1230
    .local v0, "delegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->getListener()Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1231
    move-object v2, v0

    .line 1236
    .end local v0    # "delegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    .end local v2    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    :cond_3
    return-object v2
.end method

.method private initializeClientInfo()V
    .locals 1

    .prologue
    .line 1199
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    .line 1198
    return-void
.end method


# virtual methods
.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;II)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 926
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(I)V

    .line 930
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    .line 927
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_1
    const/16 v1, 0x21

    if-ne p2, v1, :cond_0

    .line 928
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>(I)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;IIDD)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 899
    const/4 v0, 0x0

    .line 900
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 901
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(IDD)V

    .line 903
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;IIIII)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 875
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    .line 876
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 875
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    .line 878
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 821
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v4

    .line 821
    :cond_0
    return v4

    .line 824
    :cond_1
    if-eq p2, v5, :cond_2

    .line 825
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 833
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v1

    .line 835
    .local v1, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    if-nez v1, :cond_4

    .line 836
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .changeParameters : SemContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return v4

    .line 826
    .end local v1    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    :cond_3
    const/16 v2, 0x21

    if-eq p2, v2, :cond_2

    .line 827
    const/16 v2, 0x23

    if-eq p2, v2, :cond_2

    .line 828
    const/16 v2, 0x27

    if-eq p2, v2, :cond_2

    .line 829
    const/16 v2, 0x2f

    if-eq p2, v2, :cond_2

    .line 830
    const/16 v2, 0x33

    if-eq p2, v2, :cond_2

    .line 831
    const/16 v2, 0x35

    if-eq p2, v2, :cond_2

    .line 850
    return v4

    .line 841
    .restart local v1    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->changeParameters(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 842
    const-string/jumbo v2, "SemContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .changeParameters : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 843
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    .line 842
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :cond_5
    :goto_0
    return v5

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in changeParameters: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFeatureLevel(I)I
    .locals 2
    .param p1, "service"    # I

    .prologue
    .line 1059
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1062
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initializeSemContextService(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .prologue
    .line 762
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    .line 763
    :cond_0
    return-void

    .line 765
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v1

    .line 766
    .local v1, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    if-nez v1, :cond_2

    .line 767
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .initializeSemContextService : SemContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-void

    .line 772
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->initializeService(Landroid/os/IBinder;I)V

    .line 773
    const-string/jumbo v2, "SemContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .initializeSemContextService : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 774
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    .line 773
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in initializeSemContextService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAvailableService(I)Z
    .locals 3
    .param p1, "service"    # I

    .prologue
    .line 1037
    const/4 v0, 0x0

    .line 1038
    .local v0, "res":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1039
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->getAvailableServiceMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 1042
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1043
    .local v0, "res":Z
    const/16 v1, 0x2f

    if-ne p1, v1, :cond_1

    .line 1044
    const-string/jumbo v1, "BCM4773_SLOCATION_CORE"

    const-string/jumbo v2, "ro.gps.chip.vendor.slocation"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1045
    const/4 v0, 0x0

    .line 1049
    .end local v0    # "res":Z
    :cond_1
    return v0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .prologue
    .line 166
    invoke-direct {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->addListenerAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v0

    .line 167
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;II)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 407
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;-><init>(I)V

    .line 417
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    .line 408
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_1
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 409
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;-><init>(I)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 410
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_2
    const/16 v1, 0x10

    if-ne p2, v1, :cond_3

    .line 411
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;-><init>(I)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 412
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_3
    const/16 v1, 0x21

    if-ne p2, v1, :cond_4

    .line 413
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>(I)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 414
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_4
    const/16 v1, 0x24

    if-ne p2, v1, :cond_0

    .line 415
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;-><init>(I)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIDD)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 550
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(IDD)V

    .line 552
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;III)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x8

    if-ne p2, v1, :cond_1

    .line 492
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3, p4}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;-><init>(II)V

    .line 499
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    .line 493
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_1
    const/16 v1, 0xc

    if-ne p2, v1, :cond_2

    .line 494
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3, p4}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;-><init>(II)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 495
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_2
    const/16 v1, 0x1d

    if-ne p2, v1, :cond_0

    .line 496
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3, p4}, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;-><init>(II)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIDI)Z
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # D
    .param p7, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 608
    const/4 v1, 0x0

    .line 609
    .local v1, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    .line 610
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;

    .end local v1    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    move v2, p3

    move v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;-><init>(IIDI)V

    .line 612
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIII)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v4, 0x5dc

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 524
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    .line 527
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIII)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x1c

    if-ne p2, v1, :cond_0

    .line 641
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3, p4, p5, p6}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;-><init>(IIII)V

    .line 643
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIIII)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 677
    const/4 v0, 0x0

    .line 678
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x18

    if-ne p2, v1, :cond_1

    .line 679
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    .line 683
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    .line 680
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_1
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 681
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIZ)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x17

    if-ne p2, v1, :cond_0

    .line 579
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3, p4, p5}, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;-><init>(IIZ)V

    .line 581
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILandroid/os/Looper;)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 191
    invoke-direct {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->addListenerAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v0

    .line 192
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 262
    const/16 v1, 0x30

    if-ne p2, v1, :cond_0

    .line 263
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    .line 266
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v1

    if-nez v1, :cond_2

    return v4

    .line 266
    :cond_1
    return v4

    .line 269
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v0

    .line 271
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    if-nez v0, :cond_3

    .line 272
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    .end local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;ZLjava/lang/String;)V

    .line 273
    .restart local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->initializeClientInfo()V

    .line 278
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 279
    const-string/jumbo v1, "SemContextManager"

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  .registerListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 281
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 282
    :catch_0
    move-exception v6

    .line 283
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemContextManager"

    const-string/jumbo v2, "RemoteException in registerListener: "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x0

    .line 361
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    .line 361
    :cond_0
    return v4

    .line 364
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v0

    .line 366
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    if-nez v0, :cond_2

    .line 367
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    .end local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;ZLjava/lang/String;)V

    .line 368
    .restart local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->initializeClientInfo()V

    .line 373
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 374
    const-string/jumbo v1, "SemContextManager"

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  .registerListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 376
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 377
    :catch_0
    move-exception v6

    .line 378
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemContextManager"

    const-string/jumbo v2, "RemoteException in registerListener: "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I[I)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_0

    .line 439
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>([I)V

    .line 441
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I[II)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # [I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x1e

    if-ne p2, v1, :cond_0

    .line 465
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3, p4}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;-><init>([II)V

    .line 468
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public requestHistoryData(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .prologue
    const/4 v3, 0x0

    .line 988
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 989
    :cond_0
    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    .line 990
    const/16 v1, 0x21

    if-eq p2, v1, :cond_1

    .line 991
    const/16 v1, 0x1a

    if-eq p2, v1, :cond_1

    .line 992
    const-string/jumbo v1, "SemContextManager"

    const-string/jumbo v2, "  .requestHistoryData : This service is not supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void

    .line 996
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->addListenerAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v6

    .line 998
    .local v6, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 999
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 998
    :cond_2
    return-void

    .line 1001
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v0

    .line 1002
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mIsHistoryDataListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 1004
    if-nez v0, :cond_4

    .line 1005
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    .end local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;ZLjava/lang/String;)V

    .line 1006
    .restart local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->initializeClientInfo()V

    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2, v6}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 1011
    const-string/jumbo v1, "SemContextManager"

    .line 1012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  .registerListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1013
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 1012
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1011
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :cond_4
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->requestHistoryData(Landroid/os/IBinder;I)V

    .line 1021
    const-string/jumbo v1, "SemContextManager"

    .line 1022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  .requestHistoryData : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1023
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 1022
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1021
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 987
    :goto_1
    return-void

    .line 1014
    :catch_0
    move-exception v7

    .line 1015
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemContextManager"

    const-string/jumbo v2, "RemoteException in registerListener: "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1024
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 1025
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemContextManager"

    const-string/jumbo v2, "RemoteException in requestHistoryData: "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .prologue
    .line 946
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 947
    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    .line 948
    const/16 v2, 0x19

    if-eq p2, v2, :cond_1

    .line 949
    const/16 v2, 0x1a

    if-eq p2, v2, :cond_1

    .line 950
    const/16 v2, 0x1d

    if-eq p2, v2, :cond_1

    .line 951
    const/16 v2, 0x28

    if-eq p2, v2, :cond_1

    .line 952
    const/16 v2, 0x32

    if-eq p2, v2, :cond_1

    .line 953
    const/16 v2, 0x33

    if-eq p2, v2, :cond_1

    .line 954
    const/16 v2, 0x34

    if-eq p2, v2, :cond_1

    .line 955
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .requestToUpdate : This service is not supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void

    .line 959
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v1

    .line 961
    .local v1, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    if-nez v1, :cond_2

    .line 962
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .requestToUpdate : SemContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return-void

    .line 967
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->requestToUpdate(Landroid/os/IBinder;I)V

    .line 968
    const-string/jumbo v2, "SemContextManager"

    .line 969
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .requestToUpdate : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 970
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    .line 969
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 968
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :goto_0
    return-void

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in requestToUpdate: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setClientInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientInfo"    # Ljava/lang/String;

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    .line 1191
    return-void
.end method

.method public setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 11
    .param p1, "service"    # I
    .param p2, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .prologue
    const/16 v10, 0x30

    const/4 v8, 0x0

    .line 1125
    iget-object v9, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    if-eqz v9, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v8

    .line 1126
    :cond_1
    const/4 v6, 0x0

    .line 1128
    .local v6, "res":Z
    if-ne p1, v10, :cond_2

    .line 1129
    invoke-virtual {p2, v10}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1133
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_0
    if-nez v0, :cond_3

    return v8

    .line 1131
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p2, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .restart local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 1135
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 1180
    .end local v6    # "res":Z
    :goto_1
    return v6

    .line 1137
    .restart local v6    # "res":Z
    :sswitch_0
    :try_start_0
    const-string/jumbo v9, "net_data"

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "gram_data"

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1139
    const-string/jumbo v9, "net_data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1140
    .local v5, "netData":[B
    const-string/jumbo v9, "gram_data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1141
    .local v2, "gramData":[B
    if-eqz v5, :cond_4

    if-nez v2, :cond_6

    :cond_4
    return v8

    .line 1138
    .end local v2    # "gramData":[B
    .end local v5    # "netData":[B
    :cond_5
    return v8

    .line 1142
    .restart local v2    # "gramData":[B
    .restart local v5    # "netData":[B
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/4 v10, 0x1

    invoke-interface {v9, v10, v5}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(I[B)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1143
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/4 v9, 0x2

    invoke-interface {v8, v9, v2}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(I[B)Z

    move-result v6

    .line 1144
    .local v6, "res":Z
    :goto_2
    goto :goto_1

    .local v6, "res":Z
    :cond_7
    move v6, v8

    .line 1142
    goto :goto_2

    .line 1146
    .end local v2    # "gramData":[B
    .end local v5    # "netData":[B
    :sswitch_1
    const-string/jumbo v9, "luminance_config_data"

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    return v8

    .line 1147
    :cond_8
    const-string/jumbo v9, "luminance_config_data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 1148
    .local v4, "luminanceConfigData":[B
    if-nez v4, :cond_9

    return v8

    .line 1149
    :cond_9
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 1150
    const/4 v9, 0x0

    .line 1149
    invoke-interface {v8, v9, v4}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(I[B)Z

    move-result v6

    .local v6, "res":Z
    goto :goto_1

    .line 1153
    .end local v4    # "luminanceConfigData":[B
    .local v6, "res":Z
    :sswitch_2
    const-string/jumbo v9, "interrupt_gyro"

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1154
    const-string/jumbo v9, "SemContextManager"

    const-string/jumbo v10, "Bundle is not contained key data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return v8

    .line 1157
    :cond_a
    const/4 v8, 0x1

    new-array v7, v8, [B

    .line 1158
    .local v7, "sysfsMode":[B
    const-string/jumbo v8, "interrupt_gyro"

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-byte v8, v8

    const/4 v9, 0x0

    aput-byte v8, v7, v9

    .line 1159
    const-string/jumbo v8, "SemContextManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sysfs data : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v10, v7, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 1161
    const/16 v9, 0x30

    .line 1160
    invoke-interface {v8, v9, v7}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(I[B)Z

    move-result v6

    .local v6, "res":Z
    goto/16 :goto_1

    .line 1164
    .end local v7    # "sysfsMode":[B
    .local v6, "res":Z
    :sswitch_3
    const-string/jumbo v9, "display_status"

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1165
    const-string/jumbo v9, "SemContextManager"

    const-string/jumbo v10, "Bundle is not contained key data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return v8

    .line 1168
    :cond_b
    const/4 v8, 0x1

    new-array v3, v8, [B

    .line 1169
    .local v3, "hallSensorStatus":[B
    const-string/jumbo v8, "display_status"

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-byte v8, v8

    const/4 v9, 0x0

    aput-byte v8, v3, v9

    .line 1170
    const-string/jumbo v8, "SemContextManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Hall Sensor Data : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v10, v3, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 1172
    const/16 v9, 0x2b

    .line 1171
    invoke-interface {v8, v9, v3}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .local v6, "res":Z
    goto/16 :goto_1

    .line 1177
    .end local v3    # "hallSensorStatus":[B
    .local v6, "res":Z
    :catch_0
    move-exception v1

    .line 1178
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "SemContextManager"

    const-string/jumbo v9, "RemoteException in initializeSemContextService: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1135
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x27 -> :sswitch_1
        0x2b -> :sswitch_3
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method public setReferenceData(I[B[B)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "data1"    # [B
    .param p3, "data2"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1084
    const/4 v0, 0x0

    .line 1085
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1086
    :cond_1
    const/16 v1, 0x10

    if-ne p1, v1, :cond_2

    .line 1087
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p2, p3}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;-><init>([B[B)V

    .line 1089
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;

    .prologue
    .line 692
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    :cond_0
    return-void

    .line 694
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "service$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 695
    .local v2, "service":Ljava/lang/Integer;
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v1

    .line 696
    .local v1, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    if-nez v1, :cond_4

    .line 691
    .end local v1    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    .end local v2    # "service":Ljava/lang/Integer;
    :cond_3
    :goto_1
    return-void

    .line 701
    .restart local v1    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    .restart local v2    # "service":Ljava/lang/Integer;
    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/samsung/android/hardware/context/ISemContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 702
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 703
    const-string/jumbo v4, "SemContextManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  .unregisterListener : listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SemContextManager"

    const-string/jumbo v5, "RemoteException in unregisterListener: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .prologue
    .line 720
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 722
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v1

    .line 723
    .local v1, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    if-nez v1, :cond_1

    .line 724
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .unregisterListener : SemContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return-void

    .line 729
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 730
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 732
    :cond_2
    const-string/jumbo v2, "SemContextManager"

    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 734
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    .line 733
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 732
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
