.class Lmickles/app/mpressure/mPressure$2;
.super Ljava/lang/Object;
.source "mPressure.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmickles/app/mpressure/mPressure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmickles/app/mpressure/mPressure;


# direct methods
.method constructor <init>(Lmickles/app/mpressure/mPressure;)V
    .locals 0

    iput-object p1, p0, Lmickles/app/mpressure/mPressure$2;->this$0:Lmickles/app/mpressure/mPressure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$2;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lmickles/app/mpressure/mPressure;->pressureF:F

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$2;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v0, v0, Lmickles/app/mpressure/mPressure;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmickles/app/mpressure/mPressure$2;->this$0:Lmickles/app/mpressure/mPressure;

    iget-object v1, v1, Lmickles/app/mpressure/mPressure;->listenerPressure:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lmickles/app/mpressure/mPressure$2;->this$0:Lmickles/app/mpressure/mPressure;

    iput v2, v0, Lmickles/app/mpressure/mPressure;->sensorRegistered:I

    return-void
.end method
