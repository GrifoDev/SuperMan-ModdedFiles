.class Lcom/android/incallui/ProximitySensor$1$1;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ProximitySensor$1;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/ProximitySensor$1;


# direct methods
.method constructor <init>(Lcom/android/incallui/ProximitySensor$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/incallui/ProximitySensor$1;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/incallui/ProximitySensor$1$1;->this$1:Lcom/android/incallui/ProximitySensor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$1$1;->this$1:Lcom/android/incallui/ProximitySensor$1;

    iget-object v0, v0, Lcom/android/incallui/ProximitySensor$1;->this$0:Lcom/android/incallui/ProximitySensor;

    # getter for: Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/incallui/ProximitySensor;->access$200(Lcom/android/incallui/ProximitySensor;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/ProximitySensor$1$1;->this$1:Lcom/android/incallui/ProximitySensor$1;

    iget-object v1, v1, Lcom/android/incallui/ProximitySensor$1;->this$0:Lcom/android/incallui/ProximitySensor;

    iget-object v1, v1, Lcom/android/incallui/ProximitySensor;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 405
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$1$1;->this$1:Lcom/android/incallui/ProximitySensor$1;

    iget-object v0, v0, Lcom/android/incallui/ProximitySensor$1;->this$0:Lcom/android/incallui/ProximitySensor;

    # invokes: Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V
    invoke-static {v0}, Lcom/android/incallui/ProximitySensor;->access$300(Lcom/android/incallui/ProximitySensor;)V

    .line 406
    return-void
.end method
