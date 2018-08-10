.class public Lcom/sec/android/cover/neoncover/NeonBrightnessController;
.super Ljava/lang/Object;
.source "NeonBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/neoncover/NeonBrightnessController$1;,
        Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;,
        Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;
    }
.end annotation


# static fields
.field private static final synthetic -com-sec-android-cover-neoncover-NeonBrightnessController$BrightnessSateSwitchesValues:[I

.field private static final LUX_QUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/android/cover/neoncover/NeonBrightnessController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;

.field private mLightListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mState:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;


# direct methods
.method static synthetic -get0()Ljava/util/Queue;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->LUX_QUE:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getcom-sec-android-cover-neoncover-NeonBrightnessController$BrightnessSateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->-com-sec-android-cover-neoncover-NeonBrightnessController$BrightnessSateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->-com-sec-android-cover-neoncover-NeonBrightnessController$BrightnessSateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->values()[Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->BRIGHT:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->DARK:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->NONE:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->-com-sec-android-cover-neoncover-NeonBrightnessController$BrightnessSateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->LUX_QUE:Ljava/util/Queue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$1;-><init>(Lcom/sec/android/cover/neoncover/NeonBrightnessController;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mLightListener:Landroid/hardware/SensorEventListener;

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->NONE:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mState:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->initDialogs()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;
    .locals 2

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->sInstance:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->sInstance:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->sInstance:Lcom/sec/android/cover/neoncover/NeonBrightnessController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initDialogs()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mDialog:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mDialog:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;

    :cond_0
    return-void
.end method

.method private startMeasurement()V
    .locals 4

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mLightListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private stopMeasurement()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->stopMeasurement()V

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->NONE:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->setBrightnessState(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mDialog:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;

    return-void
.end method

.method public getBrightnessState()Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mState:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    return-object v0
.end method

.method public setBrightnessState(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mDialog:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->initDialogs()V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mState:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->-getcom-sec-android-cover-neoncover-NeonBrightnessController$BrightnessSateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mDialog:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mDialog:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;

    invoke-virtual {v0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mDialog:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;

    invoke-virtual {v0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->mDialog:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->show(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateCoverState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->startMeasurement()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->stopMeasurement()V

    goto :goto_0
.end method
