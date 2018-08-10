.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SensorStatusCheckRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;
    }
.end annotation


# instance fields
.field private mMode:F


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner;->mMode:F

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SENSOR_STATUS_CHECK:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Status"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "XAxis"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "YAxis"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "ZAxis"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    const/16 v0, 0x3b

    return v0
.end method

.method public getParseSyntaxTable()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;",
            ">;>;"
        }
    .end annotation

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->Status:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;)B

    move-result v5

    aget-object v5, v1, v5

    invoke-direct {v3, v4, v6, v7, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->XAxis:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;)B

    move-result v5

    aget-object v5, v1, v5

    invoke-direct {v3, v4, v6, v7, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->YAxis:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;)B

    move-result v5

    aget-object v5, v1, v5

    invoke-direct {v3, v4, v6, v7, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->ZAxis:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;)B

    move-result v5

    aget-object v5, v1, v5

    invoke-direct {v3, v4, v6, v7, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method
