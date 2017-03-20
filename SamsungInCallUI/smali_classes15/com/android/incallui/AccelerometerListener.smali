.class public Lcom/android/incallui/AccelerometerListener;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"


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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lcom/android/incallui/AccelerometerListener$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AccelerometerListener$1;-><init>(Lcom/android/incallui/AccelerometerListener;)V

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 148
    new-instance v0, Lcom/android/incallui/AccelerometerListener$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/AccelerometerListener$2;-><init>(Lcom/android/incallui/AccelerometerListener;)V

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    .line 69
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 70
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/AccelerometerListener;DDD)V
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AccelerometerListener;
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D

    .prologue
    .line 33
    invoke-direct/range {p0 .. p6}, Lcom/android/incallui/AccelerometerListener;->onSensorEvent(DDD)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/AccelerometerListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AccelerometerListener;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/AccelerometerListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AccelerometerListener;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/AccelerometerListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AccelerometerListener;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/AccelerometerListener;)Lcom/android/incallui/AccelerometerListener$OrientationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AccelerometerListener;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mListener:Lcom/android/incallui/AccelerometerListener$OrientationListener;

    return-object v0
.end method

.method private onSensorEvent(DDD)V
    .locals 13
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 125
    const-wide/16 v8, 0x0

    cmpl-double v5, p1, v8

    if-eqz v5, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v5, p3, v8

    if-eqz v5, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v5, p5, v8

    if-nez v5, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    mul-double v8, p1, p1

    mul-double v10, p3, p3

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 130
    .local v6, "xy":D
    move-wide/from16 v0, p5

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 132
    .local v2, "angle":D
    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v8, v2

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double v2, v8, v10

    .line 133
    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    cmpl-double v5, v2, v8

    if-lez v5, :cond_2

    const/4 v4, 0x1

    .line 135
    .local v4, "orientation":I
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/incallui/AccelerometerListener;->setOrientation(I)V

    goto :goto_0

    .line 133
    .end local v4    # "orientation":I
    :cond_2
    const/4 v4, 0x2

    goto :goto_1
.end method

.method private setOrientation(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget v2, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    if-ne v2, p1, :cond_0

    .line 96
    monitor-exit p0

    .line 118
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget v2, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    if-eq v2, p1, :cond_2

    .line 107
    iput p1, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    .line 108
    iget-object v2, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 110
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/16 v0, 0x64

    .line 112
    .local v0, "delay":I
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 117
    .end local v0    # "delay":I
    .end local v1    # "m":Landroid/os/Message;
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 110
    .restart local v1    # "m":Landroid/os/Message;
    :cond_1
    const/16 v0, 0x1f4

    goto :goto_1

    .line 115
    .end local v1    # "m":Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public enable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 78
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

    .line 79
    monitor-enter p0

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    .line 83
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/incallui/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 89
    :goto_0
    monitor-exit p0

    .line 90
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/android/incallui/AccelerometerListener$OrientationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/AccelerometerListener$OrientationListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/incallui/AccelerometerListener;->mListener:Lcom/android/incallui/AccelerometerListener$OrientationListener;

    .line 75
    return-void
.end method
