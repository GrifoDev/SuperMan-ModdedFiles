.class public Lcom/android/systemui/util/AsyncSensorManager;
.super Landroid/hardware/SensorManager;
.source "AsyncSensorManager.java"


# instance fields
.field final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mInner:Landroid/hardware/SensorManager;

.field private final mSensorCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "async_sensor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object p1, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mSensorCache:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 2

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->flush(Landroid/hardware/SensorEventListener;)Z

    move-result v0

    return v0
.end method

.method protected getFullDynamicSensorList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDynamicSensorList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mSensorCache:Ljava/util/List;

    return-object v0
.end method

.method protected initDataInjectionImpl(Z)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$-com_android_systemui_util_AsyncSensorManager_2518(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AsyncSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Registering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_util_AsyncSensorManager_3607(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_util_AsyncSensorManager_3803(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_util_AsyncSensorManager_3998(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AsyncSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Requesting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_util_AsyncSensorManager_4418(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AsyncSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Canceling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_util_AsyncSensorManager_5106(Landroid/hardware/SensorAdditionalInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_util_AsyncSensorManager_5307(Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method protected registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 8

    iget-object v7, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;

    move v1, p3

    move v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
