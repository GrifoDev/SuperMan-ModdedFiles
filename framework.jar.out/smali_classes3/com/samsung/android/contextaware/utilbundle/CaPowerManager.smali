.class public Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
.super Ljava/lang/Object;
.source "CaPowerManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IApPowerObservable;
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;,
        Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;
    }
.end annotation


# static fields
.field private static final AP_IS_SLEEP:I = 0x1003

.field private static final AP_IS_WAKEUP:I = 0x1004

.field private static final LOG_CONTEXT_NULL:I = 0x1001

.field private static final LOG_INTENT_NULL:I = 0x1002

.field private static final POWER_IS_CONNECTED:I = 0x1005

.field private static final POWER_IS_DISCONNECTED:I = 0x1006

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;


# instance fields
.field private mAPWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/IApPowerObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 116
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 66
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendApStatusToSensorHub(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 212
    new-array v0, v4, [B

    .line 213
    .local v0, "dataPacket":[B
    int-to-byte v2, p1

    aput-byte v2, v0, v3

    .line 214
    const/4 v2, 0x1

    aput-byte v3, v0, v2

    .line 216
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v2

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v1

    .line 220
    .local v1, "result":I
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 221
    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void

    .line 216
    nop

    :array_0
    .array-data 1
        -0x4ct
        0xdt
    .end array-data
.end method


# virtual methods
.method public final acquireAPWakeLock()V
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 230
    const-string/jumbo v1, "mContext is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 231
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    .line 235
    const-string/jumbo v2, "power"

    .line 234
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 237
    .local v0, "pm":Landroid/os/PowerManager;
    if-nez v0, :cond_1

    .line 238
    const-string/jumbo v1, "pm is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 239
    return-void

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    const-string/jumbo v1, "WakeLock is already held."

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 244
    return-void

    .line 247
    :cond_2
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 250
    const-string/jumbo v1, "CA_WAKELOCK"

    .line 249
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 252
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 228
    return-void
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    const-string/jumbo v4, "Context is null"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 80
    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    .line 86
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    .line 85
    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "apSleepIntent":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    .line 88
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    .line 87
    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "apWakeupIntent":Landroid/content/IntentFilter;
    new-instance v2, Landroid/content/IntentFilter;

    .line 90
    const-string/jumbo v4, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 89
    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, "powConnectedIntent":Landroid/content/IntentFilter;
    new-instance v3, Landroid/content/IntentFilter;

    .line 92
    const-string/jumbo v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 91
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, "powDisconnectedIntent":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    iget-object v4, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    iget-object v4, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    iget-object v4, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method public final isScreenOn()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 322
    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 323
    const-string/jumbo v3, "mContext is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 324
    return v4

    .line 327
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 328
    .local v2, "window":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 329
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    .line 331
    .local v1, "screenStatus":I
    if-ne v1, v3, :cond_1

    .line 332
    const-string/jumbo v5, "Screen Off."

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 337
    :goto_0
    if-eq v1, v3, :cond_2

    :goto_1
    return v3

    .line 334
    :cond_1
    const-string/jumbo v5, "Screen On."

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 337
    goto :goto_1
.end method

.method public final notifyApPowerObserver(IJ)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "timeStamp"    # J

    .prologue
    .line 306
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/IApPowerObserver;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/IApPowerObserver;

    .line 309
    .local v1, "observer":Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    if-eqz v1, :cond_0

    .line 310
    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IApPowerObserver;->initializePreparedSubCollection()V

    .line 311
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/contextaware/manager/IApPowerObserver;->updateApPowerStatus(IJ)V

    goto :goto_0

    .line 305
    .end local v1    # "observer":Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    :cond_1
    return-void
.end method

.method public final registerApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/IApPowerObserver;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    return-void
.end method

.method public final releaseAPWakeLock()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 267
    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 258
    return-void

    .line 260
    :cond_0
    const-string/jumbo v0, "WakeLock is not held."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public final terminateManager()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    :cond_0
    return-void
.end method

.method public final unregisterApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/IApPowerObserver;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    return-void
.end method
