.class abstract Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ProximityCheck"
.end annotation


# instance fields
.field private mFinished:Z

.field private mMaxRange:F

.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method private constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mFinished:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->-get2(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->-get3(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->-get1(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeSensors;->setDisableSensorsInterferingWithProximity(Z)V

    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->onProximityResult(I)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->-get4(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/util/wakelock/WakeLock;->release()V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mFinished:Z

    return-void
.end method


# virtual methods
.method public check()V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->-get3(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-nez v2, :cond_2

    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DozeTriggers"

    const-string/jumbo v1, "ProxCheck: No sensor found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->-get1(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/systemui/doze/DozeSensors;->setDisableSensorsInterferingWithProximity(Z)V

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mMaxRange:F

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->-get3(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->-get2(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;

    move-result-object v5

    const/4 v3, 0x3

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->-get2(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->-get4(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire()V

    iput-boolean v6, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected abstract onProximityResult(I)V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DozeTriggers"

    const-string/jumbo v2, "ProxCheck: Event has no values!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "DozeTriggers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ProxCheck: Event: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mMaxRange:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mMaxRange:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    goto :goto_2
.end method

.method public run()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DozeTriggers"

    const-string/jumbo v1, "ProxCheck: No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    return-void
.end method
