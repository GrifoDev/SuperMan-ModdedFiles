.class final enum Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$3;
.super Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
.source "SensorHubParserConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;)V

    return-void
.end method


# virtual methods
.method protected final createObj(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_SENSORHUB_DEBUG_MSG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubDebugMsgParser;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubDebugMsgParser;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$3;->registerParser(Ljava/lang/String;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V

    return-void
.end method
