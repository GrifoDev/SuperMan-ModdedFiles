.class Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;
.source "CaOperationDebugging.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final doDebugging([B)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseForScenarioTesting([B)V

    return-void
.end method
