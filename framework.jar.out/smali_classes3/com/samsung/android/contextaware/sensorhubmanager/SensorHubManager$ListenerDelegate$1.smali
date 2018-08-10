.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;-><init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    invoke-static {v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->-get0(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;->onGetSensorHubData(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    iget-object v1, v1, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-get3(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->returnEvent(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;)V

    return-void
.end method
