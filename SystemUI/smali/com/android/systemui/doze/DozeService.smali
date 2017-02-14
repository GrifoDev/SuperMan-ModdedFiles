.class public Lcom/android/systemui/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeService$1;,
        Lcom/android/systemui/doze/DozeService$2;,
        Lcom/android/systemui/doze/DozeService$ProximityCheck;,
        Lcom/android/systemui/doze/DozeService$TriggerSensor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverRegistered:Z

.field private mCarMode:Z

.field private final mContext:Landroid/content/Context;

.field private mDisplayStateSupported:Z

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDreaming:Z

.field private mEarliestPulseDueToLight:J

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/doze/DozeHost;

.field private final mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private mLastScheduleResetTime:J

.field private mNotificationLightOn:Z

.field private mNotificationPulseTime:J

.field private mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveActive:Z

.field private mPulsing:Z

.field private mScheduleResetsRemaining:I

.field private mSensors:Landroid/hardware/SensorManager;

.field private mSigMotionSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

.field private final mTag:Ljava/lang/String;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSensors:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/doze/DozeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/doze/DozeService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/doze/DozeService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeService$TriggerSensor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/doze/DozeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/doze/DozeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/doze/DozeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/doze/DozeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/doze/DozeService;->triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/doze/DozeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/systemui/doze/DozeService;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/DozeService;->updateNotificationPulse(J)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishForCarMode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishToSavePower()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/doze/DozeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->requestPulse(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/doze/DozeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->rescheduleNotificationPulse(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->resetNotificationResets()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->turnDisplayOff()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->turnDisplayOn()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->updateNotificationPulseDueToLight()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "DozeService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    const-string/jumbo v0, "DozeService.%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    iput-object p0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/doze/DozeService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeService$1;-><init>(Lcom/android/systemui/doze/DozeService;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/doze/DozeService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeService$2;-><init>(Lcom/android/systemui/doze/DozeService;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "new DozeService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDebug(Z)V

    return-void
.end method

.method private continuePulsing(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    new-instance v1, Lcom/android/systemui/doze/DozeService$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozeService$5;-><init>(Lcom/android/systemui/doze/DozeService;)V

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/doze/DozeHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    return-void
.end method

.method private finishForCarMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Exiting ambient mode, not allowed in car mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    return-void
.end method

.method private finishToSavePower()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Exiting ambient mode due to low power battery saver"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    return-void
.end method

.method private listenForBroadcasts(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.systemui.doze.pulse"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.systemui.doze.notification_pulse"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    goto :goto_0
.end method

.method private listenForNotifications(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->resetNotificationResets()V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isNotificationLightOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->updateNotificationPulseDueToLight()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    goto :goto_0
.end method

.method private listenForPulseSignals(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listenForPulseSignals: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSigMotionSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->setListening(Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->listenForBroadcasts(Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->listenForNotifications(Z)V

    return-void
.end method

.method private notificationPulseIntent(J)Landroid/app/PendingIntent;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.systemui.doze.notification_pulse"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "instance"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private requestPulse(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getProxCheckBeforePulse()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupPerformsProxCheck()Z

    move-result v7

    :goto_1
    if-eqz v7, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V

    :cond_3
    new-instance v1, Lcom/android/systemui/doze/DozeService$4;

    move-object v2, p0

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/doze/DozeService$4;-><init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService;JIZ)V

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeService$4;->check()V

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private rescheduleNotificationPulse(Z)V
    .locals 13

    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "rescheduleNotificationPulse predicate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v10, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/doze/DozeService;->notificationPulseIntent(J)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v10, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    if-nez p1, :cond_2

    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v11, "  don\'t reschedule: predicate is false"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseSchedule()Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    move-result-object v5

    if-nez v5, :cond_4

    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v11, "  don\'t reschedule: schedule is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    invoke-virtual {v5, v6, v7, v10, v11}, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->getNextTime(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_6

    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  don\'t reschedule: time is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    sub-long v0, v8, v6

    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-gtz v10, :cond_8

    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  don\'t reschedule: delta is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    iget-wide v10, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    sub-long v2, v8, v10

    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Scheduling pulse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/doze/DozeService;->notificationPulseIntent(J)Landroid/app/PendingIntent;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v8, v9, v11}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private resetNotificationResets()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "resetNotificationResets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseScheduleResets()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    return-void
.end method

.method private static triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x2c

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TriggerEvent["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Landroid/hardware/TriggerEvent;->timestamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/TriggerEvent;->values:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private turnDisplayOff()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Display off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDozeScreenState(I)V

    return-void
.end method

.method private turnDisplayOn()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Display on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDisplayStateSupported:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDozeScreenState(I)V

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateNotificationPulse(J)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v3, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNotificationPulse notificationTimeMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnNotifications()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget v3, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    if-gtz v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v4, "No more schedule resets remaining"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseDuration(Z)I

    move-result v3

    int-to-long v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-ltz v3, :cond_7

    const/4 v2, 0x1

    :goto_0
    iget-wide v4, p0, Lcom/android/systemui/doze/DozeService;->mLastScheduleResetTime:J

    sub-long v4, p1, v4

    cmp-long v3, v4, v0

    if-ltz v3, :cond_8

    iget v3, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    iput-wide p1, p0, Lcom/android/systemui/doze/DozeService;->mLastScheduleResetTime:J

    :cond_4
    sget-boolean v3, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mScheduleResetsRemaining = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-wide p1, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    if-eqz v2, :cond_6

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/android/systemui/doze/DozeLog;->traceNotificationPulse(J)V

    invoke-direct {p0, v7}, Lcom/android/systemui/doze/DozeService;->requestPulse(I)V

    :cond_6
    invoke-direct {p0, v7}, Lcom/android/systemui/doze/DozeService;->rescheduleNotificationPulse(Z)V

    return-void

    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    if-nez v2, :cond_4

    sget-boolean v3, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v4, "Recently updated, not resetting schedule"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private updateNotificationPulseDueToLight()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/doze/DozeService;->mEarliestPulseDueToLight:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/doze/DozeService;->updateNotificationPulse(J)V

    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string/jumbo v0, "  mDreaming: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mPulsing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mWakeLock: held="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mHost: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mBroadcastReceiverRegistered: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mSigMotionSensor: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSigMotionSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mPickupSensor:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mDisplayStateSupported: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDisplayStateSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mNotificationLightOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mPowerSaveActive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mCarMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mNotificationPulseTime: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "  mScheduleResetsRemaining: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    return-void
.end method

.method public onCreate()V
    .locals 8

    const/4 v7, 0x1

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/SystemUIApplication;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/SystemUIApplication;

    const-class v0, Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {v6, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-nez v0, :cond_2

    const-string/jumbo v0, "DozeService"

    const-string/jumbo v1, "No doze service host found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/systemui/doze/DozeService;->setWindowless(Z)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSensors:Landroid/hardware/SensorManager;

    new-instance v0, Lcom/android/systemui/doze/DozeService$TriggerSensor;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnSigMotion()Z

    move-result v4

    const/16 v2, 0x11

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeService$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeService;IZZI)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSigMotionSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    new-instance v0, Lcom/android/systemui/doze/DozeService$TriggerSensor;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnPickup()Z

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnPickup()Z

    move-result v4

    const/16 v2, 0x19

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeService$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeService;IZZI)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "DozeService"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDisplayStateSupported:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->turnDisplayOff()V

    return-void
.end method

.method public onDreamingStarted()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDreamingStarted canDoze="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->canDoze()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mPowerSaveActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mCarMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishToSavePower()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishForCarMode()V

    return-void

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeService;->rescheduleNotificationPulse(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/doze/DozeService;->mEarliestPulseDueToLight:J

    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeService;->listenForPulseSignals(Z)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    new-instance v1, Lcom/android/systemui/doze/DozeService$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozeService$3;-><init>(Lcom/android/systemui/doze/DozeService;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->startDozing(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDreamingStopped()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDreamingStopped isDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->isDozing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    invoke-direct {p0, v3}, Lcom/android/systemui/doze/DozeService;->listenForPulseSignals(Z)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->stopDozing()V

    return-void
.end method
