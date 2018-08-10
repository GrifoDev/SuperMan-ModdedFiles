.class public Landroid/hardware/scontext/SContextManager;
.super Lcom/samsung/android/hardware/context/SemContextManager;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    return-void
.end method

.method private addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Landroid/hardware/scontext/SContextAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Landroid/hardware/scontext/SContextApproachAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextApproachAttribute;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>()V

    goto :goto_0

    :sswitch_6
    new-instance v0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>()V

    goto :goto_0

    :sswitch_7
    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>()V

    goto :goto_0

    :sswitch_8
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>()V

    goto :goto_0

    :sswitch_9
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>()V

    goto :goto_0

    :sswitch_a
    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>()V

    goto :goto_0

    :sswitch_b
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>()V

    goto :goto_0

    :sswitch_c
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>()V

    goto :goto_0

    :sswitch_d
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>()V

    goto :goto_0

    :sswitch_e
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>()V

    goto :goto_0

    :sswitch_f
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>()V

    goto :goto_0

    :sswitch_10
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>()V

    goto :goto_0

    :sswitch_11
    new-instance v0, Landroid/hardware/scontext/SContextExerciseAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextExerciseAttribute;-><init>()V

    goto :goto_0

    :sswitch_12
    new-instance v0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;-><init>()V

    goto :goto_0

    :sswitch_13
    new-instance v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;-><init>()V

    goto :goto_0

    :sswitch_14
    new-instance v0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;-><init>()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x6 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xc -> :sswitch_6
        0x17 -> :sswitch_7
        0x18 -> :sswitch_8
        0x1b -> :sswitch_9
        0x1c -> :sswitch_a
        0x1d -> :sswitch_b
        0x1e -> :sswitch_c
        0x21 -> :sswitch_d
        0x23 -> :sswitch_e
        0x24 -> :sswitch_f
        0x27 -> :sswitch_10
        0x28 -> :sswitch_11
        0x2f -> :sswitch_12
        0x33 -> :sswitch_13
        0x35 -> :sswitch_14
    .end sparse-switch
.end method

.method private checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v7}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v6

    if-nez v4, :cond_0

    const-string/jumbo v7, "SContextManager"

    const-string/jumbo v8, "Buffer is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSContextChanged() : event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_0
    const-string/jumbo v7, "SContextManager"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :sswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getPedometerContext()Landroid/hardware/scontext/SContextPedometer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/scontext/SContextPedometer;->getMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getStepLevelMonitorContext()Landroid/hardware/scontext/SContextStepLevelMonitor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/scontext/SContextStepLevelMonitor;->getMode()I

    move-result v7

    if-ne v7, v9, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getActivityBatchContext()Landroid/hardware/scontext/SContextActivityBatch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextActivityBatch;->getMode()I

    move-result v7

    if-ne v7, v9, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Angle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_3
        0x1a -> :sswitch_2
        0x21 -> :sswitch_1
    .end sparse-switch
.end method

.method private checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v1, "SContextManager"

    const-string/jumbo v2, "Listener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    return v0
.end method

.method private getAvailableServiceMap()Ljava/util/HashMap;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-object v4

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    :cond_3
    return-object v2
.end method


# virtual methods
.method public changeParameters(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1

    :cond_1
    const/16 v2, 0x21

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    goto :goto_0
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    return v6
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    const/4 v1, 0x1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    return v6
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    if-eq p2, v2, :cond_3

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v1, "SContextManager"

    const-string/jumbo v2, "  .changeParameters : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    const/16 v1, 0x21

    if-eq p2, v1, :cond_3

    const/16 v1, 0x23

    if-eq p2, v1, :cond_3

    const/16 v1, 0x27

    if-eq p2, v1, :cond_3

    const/16 v1, 0x2f

    if-eq p2, v1, :cond_3

    const/16 v1, 0x33

    if-eq p2, v1, :cond_3

    const/16 v1, 0x35

    if-eq p2, v1, :cond_3

    return v3

    :cond_5
    invoke-super {p0, v0, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    return v3
.end method

.method public getFeatureLevel(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getFeatureLevel(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initializeSContextService(Landroid/hardware/scontext/SContextListener;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v1, "SContextManager"

    const-string/jumbo v2, "  .initializeSContextService : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->initializeSemContextService(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    return-void
.end method

.method public isAvailableService(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1

    :cond_1
    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    if-ne p2, v2, :cond_3

    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>(I)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x21

    if-ne p2, v2, :cond_4

    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x24

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>(I)V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    return v6
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v2, 0x8

    if-ne p2, v2, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>(II)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1

    :cond_1
    const/16 v2, 0xc

    if-ne p2, v2, :cond_2

    new-instance v0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>(II)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x1d

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>(II)V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne p2, v2, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>(IIDI)V

    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIII)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x5dc

    const/4 v0, 0x0

    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    move v1, p3

    move v2, p4

    move v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    return v6
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v2, 0x1c

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>(IIII)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIIII)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ne p2, v1, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    return v6

    :cond_1
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIZ)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v2, 0x17

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    invoke-direct {v0, p3, p4, p5}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>(IIZ)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x30

    if-ne p2, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v0

    return v0

    :cond_0
    if-nez p3, :cond_1

    return v3

    :cond_1
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    :cond_3
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-direct {v1, p0, p1, v4, v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    invoke-super {p0, v1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .registerListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_5
    return v3
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    if-nez p3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-direct {v0, p0, p1, p4, v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    invoke-super {p0, v0, p2, p3, p4}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SContextManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  .registerListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_4
    return v2
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Looper;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[I)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v2, 0x1b

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>([I)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[II)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v2, 0x1e

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>([II)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public requestHistoryData(Landroid/hardware/scontext/SContextListener;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, 0x21

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_1

    const-string/jumbo v2, "SContextManager"

    const-string/jumbo v3, "  .requestHistoryData : This service is not supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    if-nez v1, :cond_5

    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v3, v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    invoke-super {p0, v1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->requestHistoryData(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    return-void
.end method

.method public requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/16 v1, 0x19

    if-eq p2, v1, :cond_1

    const/16 v1, 0x1a

    if-eq p2, v1, :cond_1

    const/16 v1, 0x1d

    if-eq p2, v1, :cond_1

    const/16 v1, 0x28

    if-eq p2, v1, :cond_1

    const/16 v1, 0x32

    if-eq p2, v1, :cond_1

    const/16 v1, 0x33

    if-eq p2, v1, :cond_1

    const/16 v1, 0x34

    if-eq p2, v1, :cond_1

    const-string/jumbo v1, "SContextManager"

    const-string/jumbo v2, "  .requestToUpdate : This service is not supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v1, "SContextManager"

    const-string/jumbo v2, "  .requestToUpdate : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    return-void
.end method

.method public setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v0

    return v0
.end method

.method public setReferenceData(I[B[B)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return v1

    :cond_1
    const/16 v2, 0x10

    if-ne p1, v2, :cond_2

    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    invoke-direct {v0, p2, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>([B[B)V

    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-super {p0, v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  .unregisterListener : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "SContextManager"

    const-string/jumbo v2, "  .unregisterListener : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const-string/jumbo v1, "SContextManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  .unregisterListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
