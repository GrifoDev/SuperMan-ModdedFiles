.class Lcom/sec/android/cover/neoncover/NeonBrightnessController$1;
.super Ljava/lang/Object;
.source "NeonBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/NeonBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/neoncover/NeonBrightnessController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/neoncover/NeonBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

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

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->-get0()Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->-get0()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->-get0()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_0
    return-void
.end method
