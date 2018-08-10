.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/RequestLibTypeParser;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
.source "RequestLibTypeParser.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse([BI)I
    .locals 9

    const/4 v3, 0x0

    const/4 v8, -0x1

    move v2, p2

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    array-length v6, p1

    sub-int/2addr v6, p2

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_0

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v8

    :cond_0
    aget-byte v6, p1, p2

    iget-byte v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    if-eq v6, v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v8

    :cond_2
    check-cast v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubRequest;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubRequest;->parseForRequestType([BI)I

    move-result v2

    :cond_3
    return v2
.end method
