.class public Lcom/android/incallui/AccelerometerListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AccelerometerListener$OrientationListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final HORIZONTAL_DEBOUNCE:I = 0x1f4

.field private static final ORIENTATION_CHANGED:I = 0x4d2

.field public static final ORIENTATION_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_UNKNOWN:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccelerometerListener"

.field private static final VDEBUG:Z = false

.field private static final VERTICAL_ANGLE:D = 50.0

.field private static final VERTICAL_DEBOUNCE:I = 0x64


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/incallui/AccelerometerListener$OrientationListener;

.field private mOrientation:I

.field private mPendingOrientation:I

.field private mSensor:Landroid/hardware/Sensor;

.field mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/AccelerometerListener$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AccelerometerListener$1;-><init>(Lcom/android/incallui/AccelerometerListener;)V

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/incallui/AccelerometerListener$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/AccelerometerListener$2;-><init>(Lcom/android/incallui/AccelerometerListener;)V

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/AccelerometerListener;DDD)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/incallui/AccelerometerListener;->onSensorEvent(DDD)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/AccelerometerListener;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/AccelerometerListener;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/AccelerometerListener;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/AccelerometerListener;)Lcom/android/incallui/AccelerometerListener$OrientationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mListener:Lcom/android/incallui/AccelerometerListener$OrientationListener;

    return-object v0
.end method

.method private onSensorEvent(DDD)V
    .locals 5

    const-wide/16 v2, 0x0

    cmpl-double v0, p1, v2

    if-eqz v0, :cond_0

    cmpl-double v0, p3, v2

    if-eqz v0, :cond_0

    cmpl-double v0, p5, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/incallui/AccelerometerListener;->setOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private setOrientation(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    if-ne v0, p1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0x64

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/16 v0, 0x1f4

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public enable(Z)V
    .locals 4

    const-string v0, "AccelerometerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/incallui/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/android/incallui/AccelerometerListener$OrientationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AccelerometerListener;->mListener:Lcom/android/incallui/AccelerometerListener$OrientationListener;

    return-void
.end method
