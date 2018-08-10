.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeParser;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
.source "LibTypeParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse([BI)I
    .locals 10

    const/4 v4, 0x0

    const/4 v9, -0x1

    move v3, p2

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v0, v5, v4

    array-length v7, p1

    sub-int/2addr v7, p2

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_0

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v9

    :cond_0
    aget-byte v7, p1, p2

    iget-byte v8, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    if-eq v7, v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v9

    :cond_2
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;

    move-result-object v4

    iget-byte v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->getCode(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->containsParser(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;

    move-result-object v4

    iget-byte v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->getCode(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PARSER_NOT_EXIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-ne v3, p2, :cond_7

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v9

    :cond_4
    add-int/lit8 v3, p2, 0x1

    invoke-interface {v1, p1, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v3

    goto :goto_1

    :cond_5
    iget-byte v4, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_ENVIRONMENT_SENSOR:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    iget-byte v5, v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    if-ne v4, v5, :cond_6

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    move-result-object v4

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->parse([BI)I

    move-result v3

    goto :goto_1

    :cond_6
    add-int/lit8 v3, p2, 0x1

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v3

    goto :goto_1

    :cond_7
    return v3
.end method
