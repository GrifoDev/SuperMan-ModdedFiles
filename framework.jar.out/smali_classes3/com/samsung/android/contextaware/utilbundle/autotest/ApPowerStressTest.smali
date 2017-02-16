.class Lcom/samsung/android/contextaware/utilbundle/autotest/ApPowerStressTest;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;
.source "ApPowerStressTest.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "delayTime"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;-><init>(I)V

    .line 36
    return-void
.end method

.method private getPacket(B)[B
    .locals 3
    .param p1, "status"    # B

    .prologue
    .line 71
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 73
    .local v0, "packet":[B
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_NOTI:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v1, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 74
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v1, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 75
    const/4 v1, 0x2

    aput-byte p1, v0, v1

    .line 77
    return-object v0
.end method


# virtual methods
.method protected final getPacket(I)[B
    .locals 2
    .param p1, "service"    # I

    .prologue
    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 51
    packed-switch p1, :pswitch_data_0

    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 53
    :pswitch_0
    const/16 v0, -0x2f

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/ApPowerStressTest;->getPacket(B)[B

    move-result-object v0

    return-object v0

    .line 55
    :pswitch_1
    const/16 v0, -0x2e

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/ApPowerStressTest;->getPacket(B)[B

    move-result-object v0

    return-object v0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
