.class final Landroid/hardware/SystemSensorManager$InjectEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InjectEventQueue"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/SystemSensorManager$InjectEventQueue;->this$0:Landroid/hardware/SystemSensorManager;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 0

    return-void
.end method

.method protected dispatchFlushCompleteEvent(I)V
    .locals 0

    return-void
.end method

.method protected dispatchSensorEvent(I[FIJ)V
    .locals 0

    return-void
.end method

.method injectSensorData(I[FIJ)I
    .locals 2

    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorDataBase(I[FIJ)I

    move-result v0

    return v0
.end method

.method protected removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 0

    return-void
.end method
