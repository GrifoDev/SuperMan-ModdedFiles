.class Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;
.source "SensorHubOperationDebugging.java"


# instance fields
.field private final mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;-><init>(I)V

    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    return-void
.end method


# virtual methods
.method protected final doDebugging([B)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    array-length v2, p1

    int-to-short v2, v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->SendSensorHubData(I[B)I

    move-result v0

    if-gtz v0, :cond_1

    const-string/jumbo v1, "fail to send cmd to SensorHub"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "success to send cmd to SensorHub"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
