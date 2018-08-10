.class abstract Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;
.source "InnerProcessStressTest.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected abstract getPacket(I)[B
.end method

.method public final run()V
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;->getDelayTime()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;->getPacket(I)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-byte v1, v2, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Packet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseForScenarioTesting([B)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->isStopTest()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
