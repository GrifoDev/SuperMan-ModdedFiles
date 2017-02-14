.class final Lcom/sec/dtl/launcher/GyroForShadow$2;
.super Ljava/lang/Thread;
.source "GyroForShadow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/dtl/launcher/GyroForShadow;->startSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    # getter for: Lcom/sec/dtl/launcher/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$000()Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/dtl/launcher/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$000()Landroid/hardware/SensorManager;

    move-result-object v0

    # getter for: Lcom/sec/dtl/launcher/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$100()Landroid/hardware/SensorEventListener;

    move-result-object v1

    # getter for: Lcom/sec/dtl/launcher/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$000()Landroid/hardware/SensorManager;

    move-result-object v2

    const v3, 0x1002b

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method
