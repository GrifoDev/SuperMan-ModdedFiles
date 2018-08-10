.class public Lcom/android/systemui/doze/DozeTriggers;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeTriggers$1;,
        Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;,
        Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-doze-DozeMachine$StateSwitchesValues:[I

.field private static final DEBUG:Z


# instance fields
.field private final mAllowPulseTriggers:Z

.field private final mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

.field private final mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

.field private final mHandler:Landroid/os/Handler;

.field private mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private final mMachine:Lcom/android/systemui/doze/DozeMachine;

.field private mNotificationPulseTime:J

.field private mPulsePending:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mUiModeManager:Landroid/app/UiModeManager;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/doze/DozeTriggers;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-object v0
.end method

.method private static synthetic -getcom-android-systemui-doze-DozeMachine$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/doze/DozeTriggers;->-com-android-systemui-doze-DozeMachine$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeTriggers;->-com-android-systemui-doze-DozeMachine$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/doze/DozeMachine$State;->values()[Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/systemui/doze/DozeTriggers;->-com-android-systemui-doze-DozeMachine$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/systemui/doze/DozeTriggers;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/doze/DozeTriggers;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->continuePulseRequest(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->onCarMode()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->onNotification()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->onPowerSave()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/doze/DozeTriggers;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/SensorManager;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Z)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;)V

    iput-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozeTriggers$1;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    iput-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iput-object p4, p0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iput-object p5, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object p6, p0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    new-instance v1, Lcom/android/systemui/doze/DozeSensors;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v7, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw;

    invoke-direct {v7, p0}, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw;-><init>(Ljava/lang/Object;)V

    new-instance v8, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw$1;-><init>(Ljava/lang/Object;)V

    move-object v2, p1

    move-object v4, p5

    move-object v5, p4

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/doze/DozeSensors;-><init>(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/UiModeManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    iput-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    return-void
.end method

.method private canPulse()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkTriggersAtInit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->onCarMode()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->onPowerSave()V

    :cond_1
    return-void
.end method

.method private continuePulseRequest(I)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->canPulse()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v3}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;ZLcom/android/systemui/doze/DozeMachine$State;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestPulse(I)V

    return-void
.end method

.method private onCarMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method

.method private onNotification()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DozeTriggers"

    const-string/jumbo v1, "requestNotificationPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZ)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->traceNotificationPulse(Landroid/content/Context;)V

    return-void
.end method

.method private onPowerSave()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method

.method private onProximityFar(Z)V
    .locals 4

    xor-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v1, v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DozeTriggers"

    const-string/jumbo v3, "Prox NEAR, ending pulse"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeLog;->tracePulseCanceledByProx(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v2, v3}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_1
    if-eqz p1, :cond_4

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v1, v2, :cond_4

    sget-boolean v2, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "DozeTriggers"

    const-string/jumbo v3, "Prox FAR, unpausing AOD"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v2, v3}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-eqz v0, :cond_3

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v1, v2, :cond_3

    sget-boolean v2, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "DozeTriggers"

    const-string/jumbo v3, "Prox NEAR, pausing AOD"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v2, v3}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_0
.end method

.method private onSensor(IZ)V
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZ)V

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    sub-long v0, v4, v6

    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupVibrationThreshold()I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/systemui/doze/DozeLog;->tracePickupPulse(Landroid/content/Context;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestPulse(IZ)V
    .locals 8

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->extendPulse()V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->canPulse()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v3}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;ZLcom/android/systemui/doze/DozeMachine$State;Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getProxCheckBeforePulse()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->continuePulseRequest(I)V

    return-void

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$2;

    move-object v2, p0

    move-object v3, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/doze/DozeTriggers$2;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers;JIZ)V

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeTriggers$2;->check()V

    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_doze_DozeTriggers-mthref-0(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/DozeTriggers;->onSensor(IZ)V

    return-void
.end method

.method synthetic -com_android_systemui_doze_DozeTriggers-mthref-1(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeTriggers;->onProximityFar(Z)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string/jumbo v0, " notificationPulseTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, " pulsePending="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "DozeSensors:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/doze/DozeTriggers;->-getcom-android-systemui-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->register(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->checkTriggersAtInit()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeSensors;->setListening(Z)V

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors;->reregisterAllSensors()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->unregister(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v1, v0}, Lcom/android/systemui/doze/DozeSensors;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v1, v0}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
