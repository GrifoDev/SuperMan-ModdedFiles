.class public Lcom/android/incallui/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/android/incallui/AccelerometerListener$OrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;
    }
.end annotation


# static fields
.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field private static final TAG:Ljava/lang/String;

.field public static mIsProximityCloseDistance:Z


# instance fields
.field private final mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private mDialpadVisible:Z

.field private mFromRcsShare:Z

.field private mIsHardKeyboardOpen:Z

.field private mIsPhoneOffhook:Z

.field private mIsPrevVideoCall:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private final mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mSamsungAudioManager:Landroid/media/AudioManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUiShowing:Z

.field private mWasScreenOff:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;Lcom/android/incallui/AccelerometerListener;)V
    .locals 4

    const/16 v3, 0x20

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPrevVideoCall:Z

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mWasScreenOff:Z

    new-instance v0, Lcom/android/incallui/ProximitySensor$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/ProximitySensor$1;-><init>(Lcom/android/incallui/ProximitySensor;)V

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityListener:Landroid/hardware/SensorEventListener;

    const-string v0, "ProximitySensor : getSystemService(Context.POWER_SERVICE) start"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "ProximitySensor : getSystemService(Context.POWER_SERVICE) end"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_0
    const-string v0, "ProximitySensor : getSystemService(Context.SENSOR_SERVICE) start"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v0, "ProximitySensor : getSystemService(Context.SENSOR_SERVICE) end"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximitySensor:Landroid/hardware/Sensor;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mSamsungAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    const-string v1, "Device does not support proximity wake lock."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/incallui/ProximitySensor;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/ProximitySensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mWasScreenOff:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/ProximitySensor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mWasScreenOff:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/ProximitySensor;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/ProximitySensor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method private turnOnProximitySensor()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Acquiring proximity wake lock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Proximity wake lock already acquired"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized updateProximitySensorMode()V
    .locals 14

    const/4 v10, 0x0

    const/4 v9, 0x1

    monitor-enter p0

    :try_start_0
    const-string v11, "support_tphone"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v11, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v11}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    const/4 v11, 0x4

    if-eq v11, v0, :cond_1

    const/16 v11, 0x8

    if-eq v11, v0, :cond_1

    const/4 v11, 0x2

    if-ne v11, v0, :cond_7

    :cond_1
    move v8, v9

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isAliveVideoCall()Z

    move-result v3

    or-int/2addr v8, v3

    if-eqz v8, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isForegroundVideoCallType : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_2
    if-nez v8, :cond_3

    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->isCallForwardingState()Z

    move-result v1

    or-int/2addr v8, v1

    if-eqz v8, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isCallForwardingState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_3
    iget-object v11, p0, Lcom/android/incallui/ProximitySensor;->mSamsungAudioManager:Landroid/media/AudioManager;

    if-eqz v11, :cond_4

    if-nez v8, :cond_4

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isWIFIDisplayOn()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v11, p0, Lcom/android/incallui/ProximitySensor;->mSamsungAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->semIsSplitSoundRunning()Z

    move-result v5

    or-int/2addr v8, v5

    if-eqz v8, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isWIFIDisplayOn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isSplitSoundRunning : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_4
    if-nez v8, :cond_5

    iget-boolean v11, p0, Lcom/android/incallui/ProximitySensor;->mFromRcsShare:Z

    or-int/2addr v8, v11

    if-eqz v8, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mFromRcsShare: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/incallui/ProximitySensor;->mFromRcsShare:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "screenonImmediately: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v12

    const-string v13, "keybrd"

    iget-boolean v11, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    if-eqz v11, :cond_8

    move v11, v9

    :goto_2
    invoke-virtual {v12, v13, v11}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v12

    const-string v13, "dpad"

    iget-boolean v11, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v11, :cond_9

    move v11, v9

    :goto_3
    invoke-virtual {v12, v13, v11}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v12

    const-string v13, "offhook"

    iget-boolean v11, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v11, :cond_a

    move v11, v9

    :goto_4
    invoke-virtual {v12, v13, v11}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v11

    const-string v12, "ui"

    iget-boolean v13, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-eqz v13, :cond_b

    :goto_5
    invoke-virtual {v11, v12, v9}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v9

    const-string v10, "aud"

    invoke-static {v0}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isHmtDocked()Z

    move-result v4

    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v9, :cond_c

    if-nez v2, :cond_6

    if-eqz v4, :cond_c

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCoverClosed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isHmtDocked: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v9, "Turning off proximity sensor"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/incallui/ProximitySensor;->turnOffProximitySensor(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_7
    move v8, v10

    goto/16 :goto_1

    :cond_8
    move v11, v10

    goto/16 :goto_2

    :cond_9
    move v11, v10

    goto :goto_3

    :cond_a
    move v11, v10

    goto :goto_4

    :cond_b
    move v9, v10

    goto :goto_5

    :cond_c
    :try_start_2
    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v9, :cond_d

    if-nez v8, :cond_d

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "Turning on proximity sensor"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->turnOnProximitySensor()V

    goto/16 :goto_0

    :cond_d
    const-string v9, "Turning off proximity sensor"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v8}, Lcom/android/incallui/ProximitySensor;->turnOffProximitySensor(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public forceUpdateProximitySensorMode()V
    .locals 2

    const-string v0, "forceUpdateProximitySensorMode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public isScreenReallyOff()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioMode(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCoverStateChanged(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onDialpadVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method onDisplayStateChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDisplayOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHmtStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onInCallShowing(Z)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 0

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, p2, :cond_0

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, p2, :cond_5

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_1
    move v0, v3

    :goto_0
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v4, p2, :cond_2

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v4, p2, :cond_2

    if-eqz v0, :cond_6

    :cond_2
    move v1, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-ne v1, v3, :cond_3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/incallui/ProximitySensor;->mIsPrevVideoCall:Z

    if-eq v3, v4, :cond_4

    :cond_3
    iput-boolean v1, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsPrevVideoCall:Z

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    iput-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mWasScreenOff:Z

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public onSupportedAudioMode(I)V
    .locals 0

    return-void
.end method

.method public orientationChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public setFromRcsShare(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mFromRcsShare:Z

    return-void
.end method

.method public tearDown()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "tearDown"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mWasScreenOff:Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/ProximitySensor;->turnOffProximitySensor(Z)V

    return-void
.end method

.method public turnOffProximitySensor(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Releasing proximity wake lock"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/incallui/ProximitySensor;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "Proximity wake lock already released"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
