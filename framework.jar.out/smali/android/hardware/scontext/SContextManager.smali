.class public Landroid/hardware/scontext/SContextManager;
.super Lcom/samsung/android/hardware/context/SemContextManager;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextManager"


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

.field private mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextEvent;)Z
    .locals 1
    .param p1, "scontextevent"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "mainLooper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;-><init>(Landroid/os/Looper;)V

    .line 114
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 118
    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 120
    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    .line 132
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 130
    return-void
.end method

.method private addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;
    .locals 1
    .param p1, "service"    # I

    .prologue
    .line 1218
    const/4 v0, 0x0

    .line 1219
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    sparse-switch p1, :sswitch_data_0

    .line 1305
    new-instance v0, Landroid/hardware/scontext/SContextAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 1308
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :goto_0
    return-object v0

    .line 1221
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_0
    new-instance v0, Landroid/hardware/scontext/SContextApproachAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextApproachAttribute;-><init>()V

    .line 1222
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1225
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_1
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>()V

    .line 1226
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1229
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_2
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>()V

    .line 1230
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1233
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_3
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>()V

    .line 1234
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1237
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_4
    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>()V

    .line 1238
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1241
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_5
    new-instance v0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>()V

    .line 1242
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1245
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_6
    new-instance v0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>()V

    .line 1246
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1249
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_7
    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>()V

    .line 1250
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1253
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_8
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>()V

    .line 1254
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1257
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_9
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>()V

    .line 1258
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1261
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_a
    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>()V

    .line 1262
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1265
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_b
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>()V

    .line 1266
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1269
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_c
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>()V

    .line 1270
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1273
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_d
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>()V

    .line 1274
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1277
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_e
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>()V

    .line 1278
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1281
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_f
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>()V

    .line 1282
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1285
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_10
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>()V

    .line 1286
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1289
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_11
    new-instance v0, Landroid/hardware/scontext/SContextExerciseAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextExerciseAttribute;-><init>()V

    .line 1290
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1293
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_12
    new-instance v0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;-><init>()V

    .line 1294
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1297
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_13
    new-instance v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;-><init>()V

    .line 1298
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1301
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_14
    new-instance v0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;-><init>()V

    .line 1302
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1219
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x6 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xc -> :sswitch_6
        0x17 -> :sswitch_7
        0x18 -> :sswitch_8
        0x1b -> :sswitch_9
        0x1c -> :sswitch_a
        0x1d -> :sswitch_b
        0x1e -> :sswitch_c
        0x21 -> :sswitch_d
        0x23 -> :sswitch_e
        0x24 -> :sswitch_f
        0x27 -> :sswitch_10
        0x28 -> :sswitch_11
        0x2f -> :sswitch_12
        0x33 -> :sswitch_13
        0x35 -> :sswitch_14
    .end sparse-switch
.end method

.method private checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z
    .locals 10
    .param p1, "scontextevent"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v9, 0x1

    .line 1312
    const/4 v3, 0x0

    .line 1313
    .local v3, "res":Z
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1314
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v7, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v7}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v6

    .line 1315
    .local v6, "type":I
    if-nez v4, :cond_0

    .line 1316
    const-string/jumbo v7, "SContextManager"

    const-string/jumbo v8, "Buffer is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return v3

    .line 1319
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSContextChanged() : event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1320
    sparse-switch v6, :sswitch_data_0

    .line 1345
    :cond_1
    :goto_0
    const-string/jumbo v7, "SContextManager"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return v3

    .line 1322
    :sswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getPedometerContext()Landroid/hardware/scontext/SContextPedometer;

    move-result-object v2

    .line 1323
    .local v2, "pedometerContext":Landroid/hardware/scontext/SContextPedometer;
    invoke-virtual {v2}, Landroid/hardware/scontext/SContextPedometer;->getMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1324
    const/4 v3, 0x1

    goto :goto_0

    .line 1327
    .end local v2    # "pedometerContext":Landroid/hardware/scontext/SContextPedometer;
    :sswitch_1
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getStepLevelMonitorContext()Landroid/hardware/scontext/SContextStepLevelMonitor;

    move-result-object v5

    .line 1329
    .local v5, "stepLevelMonitorContext":Landroid/hardware/scontext/SContextStepLevelMonitor;
    invoke-virtual {v5}, Landroid/hardware/scontext/SContextStepLevelMonitor;->getMode()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 1330
    const/4 v3, 0x1

    goto :goto_0

    .line 1333
    .end local v5    # "stepLevelMonitorContext":Landroid/hardware/scontext/SContextStepLevelMonitor;
    :sswitch_2
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getActivityBatchContext()Landroid/hardware/scontext/SContextActivityBatch;

    move-result-object v0

    .line 1335
    .local v0, "activityBatchContext":Landroid/hardware/scontext/SContextActivityBatch;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextActivityBatch;->getMode()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 1336
    const/4 v3, 0x1

    goto :goto_0

    .line 1339
    .end local v0    # "activityBatchContext":Landroid/hardware/scontext/SContextActivityBatch;
    :sswitch_3
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object v1

    .line 1340
    .local v1, "autoRotation":Landroid/hardware/scontext/SContextAutoRotation;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Angle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1320
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_3
        0x1a -> :sswitch_2
        0x21 -> :sswitch_1
    .end sparse-switch
.end method

.method private checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 1207
    const/4 v0, 0x0

    .line 1208
    .local v0, "res":Z
    if-nez p1, :cond_0

    .line 1209
    const-string/jumbo v1, "SContextManager"

    const-string/jumbo v2, "Listener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    return v0

    .line 1212
    :cond_0
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    .line 1213
    .local v0, "res":Z
    return v0
.end method

.method private getAvailableServiceMap()Ljava/util/HashMap;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

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
    .line 1170
    const/4 v0, 0x0

    .line 1171
    .local v0, "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    return-object v0
.end method

.method private getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    const/4 v4, 0x0

    .line 1181
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1182
    :cond_0
    return-object v4

    .line 1185
    :cond_1
    const/4 v2, 0x0

    .line 1187
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .line 1190
    .local v0, "delegate":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1191
    move-object v2, v0

    .line 1196
    .end local v0    # "delegate":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .end local v2    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :cond_3
    return-object v2
.end method


# virtual methods
.method public changeParameters(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 954
    const/4 v0, 0x0

    .line 955
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 956
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(I)V

    .line 960
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 962
    .local v1, "res":Z
    return v1

    .line 957
    .end local v1    # "res":Z
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_1
    const/16 v2, 0x21

    if-ne p2, v2, :cond_0

    .line 958
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 929
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    .line 931
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 933
    .local v6, "res":Z
    return v6
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 899
    const/4 v0, 0x0

    .line 900
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 901
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .line 902
    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 901
    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    .line 904
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 906
    .local v6, "res":Z
    return v6
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 847
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 852
    return v3

    .line 848
    :cond_0
    return v3

    .line 855
    :cond_1
    if-eq p2, v2, :cond_2

    .line 856
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 864
    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    .line 866
    .local v0, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v0, :cond_4

    .line 867
    const-string/jumbo v1, "SContextManager"

    const-string/jumbo v2, "  .changeParameters : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return v3

    .line 857
    .end local v0    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :cond_3
    const/16 v1, 0x21

    if-eq p2, v1, :cond_2

    .line 858
    const/16 v1, 0x23

    if-eq p2, v1, :cond_2

    .line 859
    const/16 v1, 0x27

    if-eq p2, v1, :cond_2

    .line 860
    const/16 v1, 0x2f

    if-eq p2, v1, :cond_2

    .line 861
    const/16 v1, 0x33

    if-eq p2, v1, :cond_2

    .line 862
    const/16 v1, 0x35

    if-eq p2, v1, :cond_2

    .line 876
    return v3

    .line 870
    .restart local v0    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :cond_4
    invoke-super {p0, v0, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 871
    return v2

    .line 873
    :cond_5
    return v3
.end method

.method public getFeatureLevel(I)I
    .locals 1
    .param p1, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1083
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    invoke-super {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getFeatureLevel(I)I

    move-result v0

    return v0

    .line 1086
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initializeSContextService(Landroid/hardware/scontext/SContextListener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 790
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    .line 791
    :cond_0
    return-void

    .line 794
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    .line 796
    .local v0, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v0, :cond_2

    .line 797
    const-string/jumbo v1, "SContextManager"

    const-string/jumbo v2, "  .initializeSContextService : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return-void

    .line 801
    :cond_2
    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->initializeSemContextService(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 789
    return-void
.end method

.method public isAvailableService(I)Z
    .locals 1
    .param p1, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1069
    const/4 v0, 0x0

    .line 1070
    .local v0, "res":Z
    invoke-super {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    .line 1071
    .local v0, "res":Z
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 2
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    .line 148
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 150
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 416
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>(I)V

    .line 426
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 428
    .local v1, "res":Z
    return v1

    .line 417
    .end local v1    # "res":Z
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_1
    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    .line 418
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>(I)V

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 419
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_2
    const/16 v2, 0x10

    if-ne p2, v2, :cond_3

    .line 420
    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>(I)V

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 421
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_3
    const/16 v2, 0x21

    if-ne p2, v2, :cond_4

    .line 422
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 423
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_4
    const/16 v2, 0x24

    if-ne p2, v2, :cond_0

    .line 424
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>(I)V

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 569
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    .line 571
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 573
    .local v6, "res":Z
    return v6
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x8

    if-ne p2, v2, :cond_1

    .line 507
    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>(II)V

    .line 514
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 516
    .local v1, "res":Z
    return v1

    .line 508
    .end local v1    # "res":Z
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_1
    const/16 v2, 0xc

    if-ne p2, v2, :cond_2

    .line 509
    new-instance v0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>(II)V

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 510
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_2
    const/16 v2, 0x1d

    if-ne p2, v2, :cond_0

    .line 511
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>(II)V

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # D
    .param p7, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 629
    const/4 v1, 0x0

    .line 630
    .local v1, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x9

    if-ne p2, v2, :cond_0

    .line 631
    new-instance v1, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    .end local v1    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v2, p3

    move v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>(IIDI)V

    .line 633
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v0

    .line 635
    .local v0, "res":Z
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIII)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v4, 0x5dc

    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 541
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    .line 544
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 546
    .local v6, "res":Z
    return v6
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x1c

    if-ne p2, v2, :cond_0

    .line 664
    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4, p5, p6}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>(IIII)V

    .line 666
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 668
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIIII)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x18

    if-ne p2, v1, :cond_1

    .line 704
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    .line 708
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 710
    .local v6, "res":Z
    return v6

    .line 705
    .end local v6    # "res":Z
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_1
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 706
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIZ)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x17

    if-ne p2, v2, :cond_0

    .line 599
    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4, p5}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>(IIZ)V

    .line 601
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 603
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 252
    const/16 v2, 0x30

    if-ne p2, v2, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "res":Z
    invoke-virtual {p0, p2, p3}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v0

    .line 255
    .local v0, "res":Z
    return v0

    .line 258
    .end local v0    # "res":Z
    :cond_0
    if-nez p3, :cond_1

    .line 259
    return v3

    .line 261
    :cond_1
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v2

    if-nez v2, :cond_2

    .line 262
    return v3

    .line 266
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 267
    return v3

    .line 270
    :cond_3
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 272
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_4

    .line 273
    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-direct {v1, p0, p1, v4, v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    .line 274
    .restart local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    .line 278
    invoke-super {p0, v1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 279
    const-string/jumbo v2, "SContextManager"

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .registerListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 281
    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v2, 0x1

    return v2

    .line 284
    :cond_5
    return v3
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;
    .param p4, "looper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 362
    if-nez p3, :cond_0

    .line 363
    return v2

    .line 365
    :cond_0
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    return v2

    .line 370
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 371
    return v2

    .line 374
    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    .line 376
    .local v0, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v0, :cond_3

    .line 377
    new-instance v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v0    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-direct {v0, p0, p1, p4, v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    .line 378
    .restart local v0    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    .line 382
    invoke-super {p0, v0, p2, p3, p4}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 383
    const-string/jumbo v1, "SContextManager"

    .line 384
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

    .line 385
    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v1, 0x1

    return v1

    .line 388
    :cond_4
    return v2
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Looper;)Z
    .locals 2
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    .line 178
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    .line 180
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[I)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x1b

    if-ne p2, v2, :cond_0

    .line 450
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>([I)V

    .line 452
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 454
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[II)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # [I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x1e

    if-ne p2, v2, :cond_0

    .line 478
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>([II)V

    .line 481
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 483
    .local v1, "res":Z
    return v1
.end method

.method public requestHistoryData(Landroid/hardware/scontext/SContextListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1021
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1022
    return-void

    .line 1025
    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    .line 1026
    const/16 v2, 0x21

    if-eq p2, v2, :cond_1

    .line 1027
    const/16 v2, 0x1a

    if-eq p2, v2, :cond_1

    .line 1028
    const-string/jumbo v2, "SContextManager"

    const-string/jumbo v3, "  .requestHistoryData : This service is not supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    return-void

    .line 1032
    :cond_1
    const/4 v0, 0x0

    .line 1033
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    .line 1035
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    if-nez v0, :cond_2

    .line 1036
    return-void

    .line 1038
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1039
    return-void

    .line 1043
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1044
    return-void

    .line 1047
    :cond_4
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 1048
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    .line 1050
    if-nez v1, :cond_5

    .line 1051
    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v3, v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    .line 1052
    .restart local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    .line 1056
    invoke-super {p0, v1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->requestHistoryData(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 1020
    return-void
.end method

.method public requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 980
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 981
    return-void

    .line 984
    :cond_0
    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    .line 985
    const/16 v1, 0x19

    if-eq p2, v1, :cond_1

    .line 986
    const/16 v1, 0x1a

    if-eq p2, v1, :cond_1

    .line 987
    const/16 v1, 0x1d

    if-eq p2, v1, :cond_1

    .line 988
    const/16 v1, 0x28

    if-eq p2, v1, :cond_1

    .line 989
    const/16 v1, 0x32

    if-eq p2, v1, :cond_1

    .line 990
    const/16 v1, 0x33

    if-eq p2, v1, :cond_1

    .line 991
    const/16 v1, 0x34

    if-eq p2, v1, :cond_1

    .line 992
    const-string/jumbo v1, "SContextManager"

    const-string/jumbo v2, "  .requestToUpdate : This service is not supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void

    .line 996
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    .line 998
    .local v0, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v0, :cond_2

    .line 999
    const-string/jumbo v1, "SContextManager"

    const-string/jumbo v2, "  .requestToUpdate : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void

    .line 1003
    :cond_2
    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 979
    return-void
.end method

.method public setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 1
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1154
    const/4 v0, 0x0

    .line 1155
    .local v0, "res":Z
    if-nez p2, :cond_0

    .line 1156
    return v0

    .line 1159
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v0

    .line 1161
    .local v0, "res":Z
    return v0
.end method

.method public setReferenceData(I[B[B)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "data1"    # [B
    .param p3, "data2"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1107
    const/4 v1, 0x0

    .line 1108
    .local v1, "res":Z
    const/4 v0, 0x0

    .line 1109
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1110
    :cond_0
    return v1

    .line 1113
    :cond_1
    const/16 v2, 0x10

    if-ne p1, v2, :cond_2

    .line 1114
    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p2, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>([B[B)V

    .line 1116
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 1117
    .local v1, "res":Z
    return v1
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 721
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 722
    :cond_0
    return-void

    .line 725
    :cond_1
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 726
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 727
    .local v2, "service":I
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 728
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_3

    .line 720
    .end local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .end local v2    # "service":I
    :cond_2
    :goto_0
    return-void

    .line 731
    .restart local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v2    # "service":I
    :cond_3
    invoke-super {p0, v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 732
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 733
    const-string/jumbo v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  .unregisterListener : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 749
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    return-void

    .line 753
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    .line 755
    .local v0, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v0, :cond_1

    .line 756
    const-string/jumbo v1, "SContextManager"

    const-string/jumbo v2, "  .unregisterListener : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return-void

    .line 760
    :cond_1
    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 761
    const-string/jumbo v1, "SContextManager"

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  .unregisterListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 763
    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 761
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void
.end method
