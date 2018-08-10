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
        Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;,
        Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$3;
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
.field private isScreenOff:Z

.field private isScreenOn:Z

.field private mAPWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mContext:Landroid/content/Context;

.field private mDM:Landroid/hardware/display/DisplayManager;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

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
.method static synthetic -get0(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOff:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOn:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mDM:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOff:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOff:Z

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOn:Z

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendApStatusToSensorHub(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    new-array v0, v4, [B

    int-to-byte v2, p1

    aput-byte v2, v0, v3

    const/4 v2, 0x1

    aput-byte v3, v0, v2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v2

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    return-void

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

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string/jumbo v1, "mContext is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_1

    const-string/jumbo v1, "pm is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WakeLock is already held."

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    const-string/jumbo v1, "CA_WAKELOCK"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v2, "Context is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mDM:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mDM:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final isScreenOn()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    const-string/jumbo v3, "mContext is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v4

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    if-ne v1, v3, :cond_2

    const-string/jumbo v5, "Screen Off."

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eq v1, v3, :cond_3

    :goto_1
    return v3

    :cond_2
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    const-string/jumbo v5, "Screen On."

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public final notifyApPowerObserver(IJ)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/IApPowerObserver;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IApPowerObserver;->initializePreparedSubCollection()V

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/contextaware/manager/IApPowerObserver;->updateApPowerStatus(IJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final registerApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final releaseAPWakeLock()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "WakeLock is not held."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public final terminateManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public final unregisterApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
