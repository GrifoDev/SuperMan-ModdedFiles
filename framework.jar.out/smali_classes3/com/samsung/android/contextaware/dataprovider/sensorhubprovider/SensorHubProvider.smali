.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.super Lcom/samsung/android/contextaware/dataprovider/DataProvider;
.source "SensorHubProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubCmdProtocol;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubRequest;


# static fields
.field private static final synthetic -com-samsung-android-contextaware-dataprovider-sensorhubprovider-SensorHubSyntax$DATATYPESwitchesValues:[I = null

.field public static final I2C_COMM_ERROR:I = -0x5

.field public static final NOT_RECEIVE_ACK:I = -0xb


# instance fields
.field private mFaultDetectionResult:I

.field private final mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-samsung-android-contextaware-dataprovider-sensorhubprovider-SensorHubSyntax$DATATYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->-com-samsung-android-contextaware-dataprovider-sensorhubprovider-SensorHubSyntax$DATATYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->-com-samsung-android-contextaware-dataprovider-sensorhubprovider-SensorHubSyntax$DATATYPESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BOOLEAN:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE2:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE3:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT2:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_5
    :try_start_6
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT3:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    :try_start_7
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    :try_start_9
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER3:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->LONG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_a
    :try_start_b
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->MESSAGE_TYPE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    :try_start_c
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->REPEATLIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->-com-samsung-android-contextaware-dataprovider-sensorhubprovider-SensorHubSyntax$DATATYPESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1

    :catch_d
    move-exception v1

    goto/16 :goto_0
.end method

.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method protected final addRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected final checkFaultDetectionResult()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->clear()V

    return-void
.end method

.method public disable()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToUnregisterLib()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    return-void

    :cond_1
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    return-void
.end method

.method protected final disableForRestore()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToRegisterLib()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    return-void

    :cond_1
    array-length v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForEnable()B

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    return-void
.end method

.method protected final enableForRestore()V
    .locals 0

    return-void
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Action"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected getDataPacketToRegisterLib()[B
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method protected getDataPacketToUnregisterLib()[B
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract getInstLibType()B
.end method

.method protected abstract getInstructionForDisable()B
.end method

.method protected abstract getInstructionForEnable()B
.end method

.method protected getParseSyntaxTable()Ljava/util/ArrayList;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final initializeManager()V
    .locals 0

    return-void
.end method

.method public parse([BI)I
    .locals 34

    move/from16 v24, p2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getParseSyntaxTable()Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_12

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-eqz v27, :cond_12

    const/16 v22, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->MESSAGE_TYPE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v27, p2

    add-int/lit8 v27, v27, -0x1

    if-gez v27, :cond_0

    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v27, -0x1

    return v27

    :cond_0
    add-int/lit8 v24, p2, 0x1

    aget-byte v15, p1, p2

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->messageType()B

    move-result v27

    move/from16 v0, v27

    if-ne v0, v15, :cond_1

    move-object/from16 v22, v12

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v28

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    :cond_2
    if-nez v22, :cond_4

    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v27, -0x1

    return v27

    :cond_3
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    :cond_4
    const/4 v4, 0x0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v27, v24

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->size()B

    move-result v28

    sub-int v27, v27, v28

    if-gez v27, :cond_6

    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v27, -0x1

    return v27

    :cond_6
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->-getcom-samsung-android-contextaware-dataprovider-sensorhubprovider-SensorHubSyntax$DATATYPESwitchesValues()[I

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_0

    :goto_0
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "DataSize"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_7

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "DataCount"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    :cond_7
    move/from16 v4, v23

    :cond_8
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->repeatList()Ljava/util/ArrayList;

    move-result-object v20

    if-eqz v20, :cond_5

    const/16 v26, 0x0

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->-getcom-samsung-android-contextaware-dataprovider-sensorhubprovider-SensorHubSyntax$DATATYPESwitchesValues()[I

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_1

    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->size()B

    move-result v27

    add-int v26, v26, v27

    goto :goto_1

    :pswitch_0
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v28

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v27, p1, v24

    if-nez v27, :cond_9

    const/16 v27, 0x0

    :goto_3
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    move/from16 v24, v25

    goto :goto_0

    :cond_9
    const/16 v27, 0x1

    goto :goto_3

    :pswitch_1
    add-int/lit8 v25, v24, 0x1

    aget-byte v23, p1, v24

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    div-int v29, v23, v29

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move/from16 v24, v25

    goto/16 :goto_0

    :pswitch_2
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    div-int v29, v23, v29

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    div-int v29, v29, v30

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move/from16 v24, v25

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "TimeStamp"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v29

    const/16 v30, 0x8

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    aput-byte v31, v30, v32

    const/16 v31, 0x0

    const/16 v32, 0x1

    aput-byte v31, v30, v32

    const/16 v31, 0x0

    const/16 v32, 0x2

    aput-byte v31, v30, v32

    const/16 v31, 0x0

    const/16 v32, 0x3

    aput-byte v31, v30, v32

    add-int/lit8 v25, v24, 0x1

    aget-byte v31, p1, v24

    const/16 v32, 0x4

    aput-byte v31, v30, v32

    add-int/lit8 v24, v25, 0x1

    aget-byte v31, p1, v25

    const/16 v32, 0x5

    aput-byte v31, v30, v32

    add-int/lit8 v25, v24, 0x1

    aget-byte v31, p1, v24

    const/16 v32, 0x6

    aput-byte v31, v30, v32

    add-int/lit8 v24, v25, 0x1

    aget-byte v31, p1, v25

    const/16 v32, 0x7

    aput-byte v31, v30, v32

    invoke-static/range {v30 .. v30}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_a
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    div-int v29, v29, v30

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x4

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x5

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x6

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x7

    aput-byte v30, v29, v31

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v30

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v32, v0

    div-long v30, v30, v32

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_6
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    goto/16 :goto_0

    :pswitch_7
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    move/from16 v24, v25

    goto/16 :goto_0

    :pswitch_8
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    goto/16 :goto_0

    :pswitch_9
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v32

    div-double v30, v30, v32

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    goto/16 :goto_0

    :pswitch_a
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v32

    div-double v30, v30, v32

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move/from16 v24, v25

    goto/16 :goto_0

    :pswitch_b
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    aget-byte v30, p1, v24

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    aget-byte v30, p1, v25

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v32

    div-double v30, v30, v32

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "TimeStampArray"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    new-array v0, v4, [J

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_b
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    new-array v0, v4, [I

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    new-array v0, v4, [J

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    new-array v0, v4, [F

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    new-array v0, v4, [D

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v27, v24

    mul-int v28, v26, v4

    sub-int v27, v27, v28

    if-gez v27, :cond_d

    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v27, -0x1

    return v27

    :cond_d
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v4, :cond_10

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->-getcom-samsung-android-contextaware-dataprovider-sensorhubprovider-SensorHubSyntax$DATATYPESwitchesValues()[I

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_2

    goto :goto_5

    :pswitch_10
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    add-int/lit8 v25, v24, 0x1

    aget-byte v27, p1, v24

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    div-int v27, v27, v28

    aput v27, v10, v11

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v24, v25

    goto :goto_5

    :pswitch_11
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    div-int v27, v27, v28

    aput v27, v10, v11

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    div-int v27, v27, v28

    aput v27, v10, v11

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v24, v25

    goto/16 :goto_5

    :pswitch_13
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "TimeStampArray"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [J

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v27

    const/16 v28, 0x8

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput-byte v29, v28, v30

    const/16 v29, 0x0

    const/16 v30, 0x1

    aput-byte v29, v28, v30

    const/16 v29, 0x0

    const/16 v30, 0x2

    aput-byte v29, v28, v30

    const/16 v29, 0x0

    const/16 v30, 0x3

    aput-byte v29, v28, v30

    add-int/lit8 v25, v24, 0x1

    aget-byte v29, p1, v24

    const/16 v30, 0x4

    aput-byte v29, v28, v30

    add-int/lit8 v24, v25, 0x1

    aget-byte v29, p1, v25

    const/16 v30, 0x5

    aput-byte v29, v28, v30

    add-int/lit8 v25, v24, 0x1

    aget-byte v29, p1, v24

    const/16 v30, 0x6

    aput-byte v29, v28, v30

    add-int/lit8 v24, v25, 0x1

    aget-byte v29, p1, v25

    const/16 v30, 0x7

    aput-byte v29, v28, v30

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v28

    aput-wide v28, v14, v11

    goto/16 :goto_5

    :cond_e
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    div-int v27, v27, v28

    aput v27, v10, v11

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_14
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [J

    const/16 v27, 0x8

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x4

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x5

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x6

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x7

    aput-byte v28, v27, v29

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    div-long v28, v28, v30

    aput-wide v28, v14, v11

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_15
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    aput v27, v7, v11

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_16
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    aput v27, v7, v11

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v24, v25

    goto/16 :goto_5

    :pswitch_17
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    aput v27, v7, v11

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_18
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    div-double v28, v28, v30

    aput-wide v28, v6, v11

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_19
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    div-double v28, v28, v30

    aput-wide v28, v6, v11

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v24, v25

    goto/16 :goto_5

    :pswitch_1a
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    div-double v28, v28, v30

    aput-wide v28, v6, v11

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    :cond_10
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->-getcom-samsung-android-contextaware-dataprovider-sensorhubprovider-SensorHubSyntax$DATATYPESwitchesValues()[I

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_3

    goto :goto_6

    :pswitch_1b
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "TimeStampArray"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [J

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    goto :goto_6

    :cond_11
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [I

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    goto :goto_6

    :pswitch_1c
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [J

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    goto/16 :goto_6

    :pswitch_1d
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [F

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    goto/16 :goto_6

    :pswitch_1e
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [D

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    goto/16 :goto_6

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    aget-object v16, v27, v28

    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_13

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v27, p2

    add-int/lit8 v27, v27, -0x1

    if-gez v27, :cond_14

    :cond_13
    const/16 v27, -0x1

    return v27

    :cond_14
    add-int/lit8 v24, p2, 0x1

    aget-byte v5, p1, p2

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    :cond_15
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->notifyObserver()V

    return v24

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_c
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_10
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_13
        :pswitch_12
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public final parseForRequestType([BI)I
    .locals 6

    const/4 v5, -0x1

    move v3, p2

    array-length v4, p1

    sub-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_0

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v5

    :cond_0
    add-int/lit8 v3, p2, 0x1

    aget-byte v2, p1, p2

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v5

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    invoke-interface {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->getRequestType()I

    move-result v4

    if-ne v2, v4, :cond_3

    invoke-interface {v0, p1, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->parse([BI)I

    move-result v3

    :cond_4
    return v3
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method protected final removeRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected final reset()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final sendCmdToSensorHub(BB[B)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 v2, 0x1

    aput-byte p2, v1, v2

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    return-void
.end method

.method protected final sendCommonValueToSensorHub(B[B)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/16 v3, -0x3f

    aput-byte v3, v2, v4

    aput-byte p1, v2, v5

    invoke-virtual {v1, p2, v2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v4

    :cond_0
    return v5
.end method

.method protected final sendPropertyValueToSensorHub(BBB[B)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [B

    const/16 v3, -0x3f

    aput-byte v3, v2, v4

    aput-byte p1, v2, v5

    const/4 v3, 0x2

    aput-byte p2, v2, v3

    const/4 v3, 0x3

    aput-byte p3, v2, v3

    invoke-virtual {v1, p4, v2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v4

    :cond_0
    return v5
.end method

.method protected final sendPropertyValueToSensorHub(BB[B)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    const/16 v3, -0x3f

    aput-byte v3, v2, v4

    aput-byte p1, v2, v5

    const/4 v3, 0x2

    aput-byte p2, v2, v3

    invoke-virtual {v1, p3, v2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v4

    :cond_0
    return v5
.end method

.method protected final terminateManager()V
    .locals 0

    return-void
.end method
