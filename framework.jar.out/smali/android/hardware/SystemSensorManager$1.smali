.class Landroid/hardware/SystemSensorManager$1;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;

.field final synthetic val$addedList:Ljava/util/List;

.field final synthetic val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

.field final synthetic val$removedList:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/SystemSensorManager$1;->this$0:Landroid/hardware/SystemSensorManager;

    iput-object p2, p0, Landroid/hardware/SystemSensorManager$1;->val$addedList:Ljava/util/List;

    iput-object p3, p0, Landroid/hardware/SystemSensorManager$1;->val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

    iput-object p4, p0, Landroid/hardware/SystemSensorManager$1;->val$removedList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v2, p0, Landroid/hardware/SystemSensorManager$1;->val$addedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager$1;->val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager$DynamicSensorCallback;->onDynamicSensorConnected(Landroid/hardware/Sensor;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$1;->val$removedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager$1;->val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager$DynamicSensorCallback;->onDynamicSensorDisconnected(Landroid/hardware/Sensor;)V

    goto :goto_1

    :cond_1
    return-void
.end method
