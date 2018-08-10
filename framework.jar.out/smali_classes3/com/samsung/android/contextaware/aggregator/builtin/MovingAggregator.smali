.class public Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "MovingAggregator.java"


# static fields
.field public static final PEDESTRIAN_MOVE:I = 0x0

.field public static final PEDESTRIAN_STOP:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VEHICLE_MOVE:I = 0x2

.field public static final VEHICLE_STOP:I = 0x3


# instance fields
.field private mOldMode:I

.field private mOldMove:I

.field private mOldTransMethod:I


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method

.method private notifyMovingContext(III)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyObserver()V

    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    iput p3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    return-void
.end method

.method private updateMovingMode(I)I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updatePedestrianStatus(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v3, "PedestrianStatus"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    const/4 v0, -0x1

    const/4 v2, -0x1

    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->updateMovingMode(I)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->notifyMovingContext(III)V

    return-void

    :pswitch_0
    const/4 v0, -0x1

    const/4 v2, -0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    const/4 v2, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updatePedometerData(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "StepStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->updateMovingMode(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->notifyMovingContext(III)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    const/4 v1, -0x1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clear()V

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyObserver()V

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "move"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "transMethod"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "mode"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method protected final initializeAggregator()V
    .locals 3

    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->setPropertyValue(ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->updatePedestrianStatus(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->updatePedometerData(Landroid/os/Bundle;)V

    goto :goto_0
.end method
