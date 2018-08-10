.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;
.source "SensorHubModeHandler.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;-><init>()V

    return-void
.end method

.method private isDuplicatedMode(I)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v1, v6, v5

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v2, p1

    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v2, v8, :cond_0

    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_0
    iget-byte v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v2, p1

    iget-byte v8, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v2, v8, :cond_1

    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    if-le v0, v3, :cond_3

    :goto_3
    return v3

    :cond_3
    move v3, v4

    goto :goto_3
.end method

.method private parse([BILjava/lang/String;)I
    .locals 4

    const/4 v3, -0x1

    move v1, p2

    invoke-super {p0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-super {p0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v1

    return v1
.end method

.method private parseDuplicatedMode(I[BI)I
    .locals 10

    const/4 v9, -0x1

    move v3, p3

    move v2, p3

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v0, v5, v4

    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v7, v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v7, p1

    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v7, v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-byte v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v7, p1

    iget-byte v8, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v7, v8, :cond_0

    iget-byte v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    invoke-virtual {p0, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v9

    :cond_2
    invoke-direct {p0, p2, p3, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parse([BILjava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_3
    if-ne v3, p3, :cond_4

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v9

    :cond_4
    return v3
.end method


# virtual methods
.method protected abstract getModeList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected final getParserKey(I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    iget-byte v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-eq p1, v5, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method protected final isRunning()Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getModeList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_1
    return v3
.end method

.method public final parse([BI)I
    .locals 10

    const/4 v4, 0x0

    const/4 v9, -0x1

    move v3, p2

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap()Z

    move-result v5

    if-nez v5, :cond_0

    return v9

    :cond_0
    array-length v5, p1

    sub-int/2addr v5, p2

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_1

    return v9

    :cond_1
    add-int/lit8 v3, p2, 0x1

    aget-byte v2, p1, p2

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->isDuplicatedMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v2, p1, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parseDuplicatedMode(I[BI)I

    move-result v4

    return v4

    :cond_2
    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v0, v5, v4

    iget-byte v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v7, v2

    iget-byte v8, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v7, v8, :cond_4

    invoke-virtual {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_5

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v9

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v3, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parse([BILjava/lang/String;)I

    move-result v4

    return v4
.end method
