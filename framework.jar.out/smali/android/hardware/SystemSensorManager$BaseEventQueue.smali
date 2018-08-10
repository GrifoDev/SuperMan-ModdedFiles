.class abstract Landroid/hardware/SystemSensorManager$BaseEventQueue;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseEventQueue"
.end annotation


# static fields
.field protected static final OPERATING_MODE_DATA_INJECTION:I = 0x1

.field protected static final OPERATING_MODE_NORMAL:I


# instance fields
.field private final mActiveSensors:Landroid/util/SparseBooleanArray;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field protected final mManager:Landroid/hardware/SystemSensorManager;

.field protected final mSensorAccuracies:Landroid/util/SparseIntArray;

.field private nSensorEventQueue:J


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-nez p4, :cond_0

    const-string/jumbo p4, ""

    :cond_0
    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->-get2(Landroid/hardware/SystemSensorManager;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->-get0(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p4

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInitBaseEventQueue(JLjava/lang/ref/WeakReference;Landroid/os/MessageQueue;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    return-void
.end method

.method private disableSensor(Landroid/hardware/Sensor;)I
    .locals 4

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDisableSensor(JI)I

    move-result v0

    return v0
.end method

.method private dispose(Z)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_1
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDestroySensorEventQueue(J)V

    iput-wide v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    :cond_2
    return-void
.end method

.method private enableSensor(Landroid/hardware/Sensor;II)I
    .locals 4

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-static {v0, v1, v2, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeEnableSensor(JIII)I

    move-result v0

    return v0
.end method

.method private static native nativeDestroySensorEventQueue(J)V
.end method

.method private static native nativeDisableSensor(JI)I
.end method

.method private static native nativeEnableSensor(JIII)I
.end method

.method private static native nativeFlushSensor(J)I
.end method

.method private static native nativeInitBaseEventQueue(JLjava/lang/ref/WeakReference;Landroid/os/MessageQueue;Ljava/lang/String;ILjava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/hardware/SystemSensorManager$BaseEventQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeInjectSensorData(JI[FIJ)I
.end method


# virtual methods
.method public addSensor(Landroid/hardware/Sensor;II)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensorEvent(Landroid/hardware/Sensor;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;II)I

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    if-lez p3, :cond_2

    invoke-direct {p0, p1, p2, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;II)I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    return v2

    :cond_2
    return v3
.end method

.method protected abstract addSensorEvent(Landroid/hardware/Sensor;)V
.end method

.method protected dispatchAdditionalInfoEvent(III[F[I)V
    .locals 0

    return-void
.end method

.method protected abstract dispatchFlushCompleteEvent(I)V
.end method

.method protected abstract dispatchSensorEvent(I[FIJ)V
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flush()I
    .locals 4

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeFlushSensor(J)I

    move-result v0

    return v0
.end method

.method public hasSensors()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v2

    if-ltz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected injectSensorDataBase(I[FIJ)I
    .locals 8

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInjectSensorData(JI[FIJ)I

    move-result v0

    return v0
.end method

.method public removeAllSensors()Z
    .locals 5

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->-get1(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public removeSensor(Landroid/hardware/Sensor;Z)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    :cond_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
.end method

.method protected abstract removeSensorEvent(Landroid/hardware/Sensor;)V
.end method
