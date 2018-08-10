.class final Landroid/hardware/LegacySensorManager;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/LegacySensorManager$LegacyListener;,
        Landroid/hardware/LegacySensorManager$LmsFilter;
    }
.end annotation


# static fields
.field private static sInitialized:Z

.field private static sRotation:I

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private final mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/LegacySensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/hardware/LegacySensorManager;->sRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const-class v2, Landroid/hardware/SensorManager;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Landroid/hardware/LegacySensorManager;->sInitialized:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;

    sget-object v1, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v3, Landroid/hardware/LegacySensorManager$1;

    invoke-direct {v3, p0}, Landroid/hardware/LegacySensorManager$1;-><init>(Landroid/hardware/LegacySensorManager;)V

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v1

    sput v1, Landroid/hardware/LegacySensorManager;->sRotation:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getRotation()I
    .locals 2

    const-class v0, Landroid/hardware/SensorManager;

    monitor-enter v0

    :try_start_0
    sget v1, Landroid/hardware/LegacySensorManager;->sRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static onRotationChanged(I)V
    .locals 2

    const-class v0, Landroid/hardware/SensorManager;

    monitor-enter v0

    :try_start_0
    sput p0, Landroid/hardware/LegacySensorManager;->sRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .locals 5

    const/4 v1, 0x0

    and-int v3, p4, p1

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/LegacySensorManager$LegacyListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/LegacySensorManager$LegacyListener;

    invoke-direct {v0, p3}, Landroid/hardware/LegacySensorManager$LegacyListener;-><init>(Landroid/hardware/SensorListener;)V

    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->registerSensor(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v0, v2, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit v4

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .locals 4

    and-int v2, p4, p1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/LegacySensorManager$LegacyListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->unregisterSensor(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasSensors()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public getSensors()I
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    or-int/lit8 v3, v3, 0x2

    goto :goto_0

    :pswitch_1
    or-int/lit8 v3, v3, 0x8

    goto :goto_0

    :pswitch_2
    or-int/lit16 v3, v3, 0x81

    goto :goto_0

    :cond_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 11

    const/4 v10, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v9, 0x0

    :goto_0
    const/16 v4, 0x8

    move-object v3, p0

    move v5, v1

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const/16 v4, 0x80

    move-object v3, p0

    move v5, v10

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    move-object v1, p0

    move v3, v10

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    const/4 v1, 0x4

    const/4 v2, 0x7

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_4
    return v9

    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x1

    goto :goto_4
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v2, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    const/16 v0, 0x8

    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    const/16 v0, 0x80

    invoke-direct {p0, v0, v3, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    invoke-direct {p0, v1, v3, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    const/4 v0, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    return-void
.end method
