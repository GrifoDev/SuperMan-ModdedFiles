.class public Lcom/android/systemui/doze/DozeSensors;
.super Ljava/lang/Object;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeSensors$1;,
        Lcom/android/systemui/doze/DozeSensors$Callback;,
        Lcom/android/systemui/doze/DozeSensors$ProxSensor;,
        Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

.field private final mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mHandler:Landroid/os/Handler;

.field private final mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private final mProxCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/doze/DozeSensors;)[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/doze/DozeSensors;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/hardware/SensorManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/internal/hardware/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/doze/DozeSensors$Callback;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/doze/DozeSensors$1;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/doze/DozeSensors$1;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeSensors;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object p4, p0, Lcom/android/systemui/doze/DozeSensors;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iput-object p5, p0, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    iput-object p7, p0, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x3

    new-array v6, v0, [Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    new-instance v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZI)V

    const/4 v1, 0x0

    aput-object v0, v6, v1

    new-instance v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const-string/jumbo v3, "doze_pulse_on_pick_up"

    invoke-virtual {p4}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v4

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v1, 0x1

    aput-object v0, v6, v1

    new-instance v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    invoke-virtual {p4}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    const-string/jumbo v3, "doze_pulse_on_double_tap"

    const/4 v4, 0x1

    const/4 v5, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZI)V

    const/4 v1, 0x2

    aput-object v0, v6, v1

    iput-object v6, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    new-instance v0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    iput-object p6, p0, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    return-void
.end method

.method private findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v5

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_2
    return-object v5
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    const-string/jumbo v4, "Sensor: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUserSwitched()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListener()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reregisterAllSensors()V
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setDisableSensorsInterferingWithProximity(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setDisabled(Z)V

    return-void
.end method

.method public setListening(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->registerSettingsObserver(Landroid/database/ContentObserver;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method

.method public setProxListening(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->setRegistered(Z)V

    return-void
.end method
