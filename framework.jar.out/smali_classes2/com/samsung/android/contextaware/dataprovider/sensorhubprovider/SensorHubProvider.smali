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

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE2:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE3:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT2:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_5
    :try_start_6
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT3:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    :try_start_7
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    :try_start_9
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER3:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->LONG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_a
    :try_start_b
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->MESSAGE_TYPE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    :try_start_c
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->REPEATLIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

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
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    return-void
.end method


# virtual methods
.method protected final addRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1
    .param p1, "parser"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final checkFaultDetectionResult()Z
    .locals 2

    .prologue
    .line 769
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

    .prologue
    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    .line 139
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->clear()V

    .line 137
    return-void
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToUnregisterLib()[B

    move-result-object v0

    .line 121
    .local v0, "dataPacket":[B
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    .line 124
    return-void

    .line 122
    :cond_1
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    .line 119
    return-void
.end method

.method protected final disableForRestore()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToRegisterLib()[B

    move-result-object v0

    .line 103
    .local v0, "dataPacket":[B
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    .line 106
    return-void

    .line 104
    :cond_1
    array-length v1, v0

    if-lez v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForEnable()B

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    .line 101
    return-void
.end method

.method protected final enableForRestore()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 781
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Action"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected getDataPacketToRegisterLib()[B
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method protected getDataPacketToUnregisterLib()[B
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 751
    const/4 v0, 0x1

    .line 753
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    const/4 v0, 0x0

    .line 760
    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 759
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 756
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

    .prologue
    .line 791
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final initializeManager()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public parse([BI)I
    .locals 34
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 204
    move/from16 v24, p2

    .line 206
    .local v24, "tmpNext":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getParseSyntaxTable()Ljava/util/ArrayList;

    move-result-object v21

    .line 208
    .local v21, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    if-eqz v21, :cond_12

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-eqz v27, :cond_12

    .line 211
    const/16 v22, 0x0

    .line 214
    .local v22, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
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

    .line 217
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v27, p2

    add-int/lit8 v27, v27, -0x1

    if-gez v27, :cond_0

    .line 218
    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 219
    const/16 v27, -0x1

    return v27

    .line 222
    :cond_0
    add-int/lit8 v24, p2, 0x1

    aget-byte v15, p1, p2

    .line 224
    .local v15, "mType":I
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "k$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 225
    .local v12, "k":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->messageType()B

    move-result v27

    move/from16 v0, v27

    if-ne v0, v15, :cond_1

    .line 226
    move-object/from16 v22, v12

    .line 227
    .local v22, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
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

    .line 232
    .end local v12    # "k":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v22    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    :cond_2
    if-nez v22, :cond_4

    .line 233
    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 234
    const/16 v27, -0x1

    return v27

    .line 238
    .end local v13    # "k$iterator":Ljava/util/Iterator;
    .end local v15    # "mType":I
    .local v22, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    :cond_3
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    check-cast v22, Ljava/util/ArrayList;

    .line 242
    :cond_4
    const/4 v4, 0x0

    .line 243
    .local v4, "arraySize":I
    const/16 v23, 0x0

    .line 244
    .local v23, "temp":I
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    .line 246
    .local v8, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v27, v24

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->size()B

    move-result v28

    sub-int v27, v27, v28

    if-gez v27, :cond_6

    .line 247
    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 248
    const/16 v27, -0x1

    return v27

    .line 251
    :cond_6
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->-getcom-samsung-android-contextaware-dataprovider-sensorhubprovider-SensorHubSyntax$DATATYPESwitchesValues()[I

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_0

    .line 353
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

    .line 354
    :cond_7
    move/from16 v4, v23

    .line 357
    :cond_8
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->repeatList()Ljava/util/ArrayList;

    move-result-object v20

    .line 358
    .local v20, "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    if-eqz v20, :cond_5

    .line 359
    const/16 v26, 0x0

    .line 360
    .local v26, "totalSize":I
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 363
    .local v17, "objMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "r$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    .line 364
    .local v18, "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->-getcom-samsung-android-contextaware-dataprovider-sensorhubprovider-SensorHubSyntax$DATATYPESwitchesValues()[I

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_1

    .line 392
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->size()B

    move-result v27

    add-int v26, v26, v27

    goto :goto_1

    .line 254
    .end local v17    # "objMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .end local v19    # "r$iterator":Ljava/util/Iterator;
    .end local v20    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v26    # "totalSize":I
    :pswitch_0
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v28

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v29

    .line 255
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .local v25, "tmpNext":I
    aget-byte v27, p1, v24

    if-nez v27, :cond_9

    const/16 v27, 0x0

    .line 254
    :goto_3
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    move/from16 v24, v25

    .line 257
    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    goto :goto_0

    .line 255
    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    :cond_9
    const/16 v27, 0x1

    goto :goto_3

    .line 260
    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    :pswitch_1
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v23, p1, v24

    .line 261
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

    .line 262
    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    goto/16 :goto_0

    .line 265
    :pswitch_2
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 266
    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    .line 267
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    .line 265
    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    .line 269
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

    .line 273
    :pswitch_3
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 274
    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    .line 275
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    .line 273
    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    .line 276
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    .line 273
    div-int v29, v29, v30

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move/from16 v24, v25

    .line 277
    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    goto/16 :goto_0

    .line 280
    :pswitch_4
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "TimeStamp"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 281
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    .line 282
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    .line 283
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v29

    .line 284
    const/16 v30, 0x8

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 285
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

    .line 286
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v31, p1, v24

    const/16 v32, 0x4

    aput-byte v31, v30, v32

    .line 287
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v31, p1, v25

    const/16 v32, 0x5

    aput-byte v31, v30, v32

    .line 288
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v31, p1, v24

    const/16 v32, 0x6

    aput-byte v31, v30, v32

    .line 289
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v31, p1, v25

    const/16 v32, 0x7

    aput-byte v31, v30, v32

    .line 284
    invoke-static/range {v30 .. v30}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v30

    .line 283
    invoke-virtual/range {v29 .. v31}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v30

    .line 281
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 294
    :cond_a
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 295
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    .line 296
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    .line 294
    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    .line 297
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    .line 294
    div-int v29, v29, v30

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 302
    :pswitch_5
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 303
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    .line 304
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    .line 305
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x4

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x5

    aput-byte v30, v29, v31

    .line 306
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x6

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x7

    aput-byte v30, v29, v31

    .line 302
    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v30

    .line 307
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v32, v0

    .line 302
    div-long v30, v30, v32

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 311
    :pswitch_6
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 312
    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    .line 313
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    .line 311
    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    .line 314
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    .line 311
    div-float v29, v29, v30

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 318
    :pswitch_7
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 319
    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    .line 320
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    .line 318
    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    .line 321
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    .line 318
    div-float v29, v29, v30

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    move/from16 v24, v25

    .line 322
    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    goto/16 :goto_0

    .line 325
    :pswitch_8
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 326
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    .line 327
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    .line 325
    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    .line 328
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    .line 325
    div-float v29, v29, v30

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 332
    :pswitch_9
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 333
    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    .line 334
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    .line 332
    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    .line 335
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v32

    .line 332
    div-double v30, v30, v32

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 339
    :pswitch_a
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 340
    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    .line 341
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    .line 339
    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    .line 342
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v32

    .line 339
    div-double v30, v30, v32

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move/from16 v24, v25

    .line 343
    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    goto/16 :goto_0

    .line 346
    :pswitch_b
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 347
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x0

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x1

    aput-byte v30, v29, v31

    .line 348
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v30, p1, v24

    const/16 v31, 0x2

    aput-byte v30, v29, v31

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v30, p1, v25

    const/16 v31, 0x3

    aput-byte v30, v29, v31

    .line 346
    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    .line 349
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v32

    .line 346
    div-double v30, v30, v32

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 369
    .restart local v17    # "objMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .restart local v19    # "r$iterator":Ljava/util/Iterator;
    .restart local v20    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v26    # "totalSize":I
    :pswitch_c
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "TimeStampArray"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 370
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    new-array v0, v4, [J

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 372
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

    .line 377
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

    .line 383
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

    .line 389
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

    .line 397
    .end local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    :cond_c
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v27, v24

    mul-int v28, v26, v4

    sub-int v27, v27, v28

    if-gez v27, :cond_d

    .line 398
    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 399
    const/16 v27, -0x1

    return v27

    .line 402
    :cond_d
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    if-ge v11, v4, :cond_10

    .line 404
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    .line 410
    .restart local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->-getcom-samsung-android-contextaware-dataprovider-sensorhubprovider-SensorHubSyntax$DATATYPESwitchesValues()[I

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_2

    goto :goto_5

    .line 413
    :pswitch_10
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 414
    .local v10, "intArray":[I
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v27, p1, v24

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    div-int v27, v27, v28

    aput v27, v10, v11

    .line 415
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v24, v25

    .line 416
    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    goto :goto_5

    .line 419
    .end local v10    # "intArray":[I
    :pswitch_11
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 420
    .restart local v10    # "intArray":[I
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 421
    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    .line 422
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    .line 420
    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    .line 423
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    .line 420
    div-int v27, v27, v28

    aput v27, v10, v11

    .line 424
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 428
    .end local v10    # "intArray":[I
    :pswitch_12
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 429
    .restart local v10    # "intArray":[I
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 430
    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    .line 431
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    .line 429
    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    .line 432
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    .line 429
    div-int v27, v27, v28

    aput v27, v10, v11

    .line 433
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v24, v25

    .line 434
    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    goto/16 :goto_5

    .line 437
    .end local v10    # "intArray":[I
    :pswitch_13
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "TimeStampArray"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 438
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [J

    .line 439
    .local v14, "longArray":[J
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v27

    .line 440
    const/16 v28, 0x8

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    .line 441
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

    .line 442
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v29, p1, v24

    const/16 v30, 0x4

    aput-byte v29, v28, v30

    .line 443
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v29, p1, v25

    const/16 v30, 0x5

    aput-byte v29, v28, v30

    .line 444
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v29, p1, v24

    const/16 v30, 0x6

    aput-byte v29, v28, v30

    .line 445
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v29, p1, v25

    const/16 v30, 0x7

    aput-byte v29, v28, v30

    .line 440
    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v28

    .line 439
    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v28

    aput-wide v28, v14, v11

    goto/16 :goto_5

    .line 449
    .end local v14    # "longArray":[J
    :cond_e
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 450
    .restart local v10    # "intArray":[I
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 451
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    .line 452
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    .line 450
    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    .line 453
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    .line 450
    div-int v27, v27, v28

    aput v27, v10, v11

    .line 454
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 459
    .end local v10    # "intArray":[I
    :pswitch_14
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [J

    .line 460
    .restart local v14    # "longArray":[J
    const/16 v27, 0x8

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 461
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    .line 462
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    .line 463
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x4

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x5

    aput-byte v28, v27, v29

    .line 464
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x6

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x7

    aput-byte v28, v27, v29

    .line 460
    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v28

    .line 465
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 460
    div-long v28, v28, v30

    aput-wide v28, v14, v11

    .line 466
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 470
    .end local v14    # "longArray":[J
    :pswitch_15
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    .line 471
    .local v7, "floatArray":[F
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 472
    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    .line 473
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    .line 471
    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 474
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    .line 471
    div-float v27, v27, v28

    aput v27, v7, v11

    .line 475
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 479
    .end local v7    # "floatArray":[F
    :pswitch_16
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    .line 480
    .restart local v7    # "floatArray":[F
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 481
    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    .line 482
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    .line 480
    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 483
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    .line 480
    div-float v27, v27, v28

    aput v27, v7, v11

    .line 484
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v24, v25

    .line 485
    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    goto/16 :goto_5

    .line 488
    .end local v7    # "floatArray":[F
    :pswitch_17
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    .line 489
    .restart local v7    # "floatArray":[F
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 490
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    .line 491
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    .line 489
    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 492
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    .line 489
    div-float v27, v27, v28

    aput v27, v7, v11

    .line 493
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 497
    .end local v7    # "floatArray":[F
    :pswitch_18
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 498
    .local v6, "doubleArray":[D
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 499
    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    .line 500
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    .line 498
    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    .line 501
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    .line 498
    div-double v28, v28, v30

    aput-wide v28, v6, v11

    .line 502
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 506
    .end local v6    # "doubleArray":[D
    :pswitch_19
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 507
    .restart local v6    # "doubleArray":[D
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 508
    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    .line 509
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    .line 507
    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    .line 510
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    .line 507
    div-double v28, v28, v30

    aput-wide v28, v6, v11

    .line 511
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v24, v25

    .line 512
    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    goto/16 :goto_5

    .line 515
    .end local v6    # "doubleArray":[D
    :pswitch_1a
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 516
    .restart local v6    # "doubleArray":[D
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 517
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x0

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x1

    aput-byte v28, v27, v29

    .line 518
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v24

    const/16 v29, 0x2

    aput-byte v28, v27, v29

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v24    # "tmpNext":I
    aget-byte v28, p1, v25

    const/16 v29, 0x3

    aput-byte v28, v27, v29

    .line 516
    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    .line 519
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    .line 516
    div-double v28, v28, v30

    aput-wide v28, v6, v11

    .line 520
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 402
    .end local v6    # "doubleArray":[D
    .end local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 529
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

    .line 531
    .restart local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->-getcom-samsung-android-contextaware-dataprovider-sensorhubprovider-SensorHubSyntax$DATATYPESwitchesValues()[I

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_3

    goto :goto_6

    .line 536
    :pswitch_1b
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "TimeStampArray"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 537
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

    .line 539
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

    .line 544
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

    .line 550
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

    .line 556
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

    .line 569
    .end local v4    # "arraySize":I
    .end local v8    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .end local v9    # "i$iterator":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v17    # "objMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .end local v19    # "r$iterator":Ljava/util/Iterator;
    .end local v20    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v23    # "temp":I
    .end local v26    # "totalSize":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    aget-object v16, v27, v28

    .line 571
    .local v16, "name":Ljava/lang/String;
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

    .line 572
    :cond_13
    const/16 v27, -0x1

    return v27

    .line 575
    :cond_14
    add-int/lit8 v24, p2, 0x1

    aget-byte v5, p1, p2

    .line 576
    .local v5, "data":I
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 579
    .end local v5    # "data":I
    .end local v16    # "name":Ljava/lang/String;
    :cond_15
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->notifyObserver()V

    .line 581
    return v24

    .line 251
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

    .line 364
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

    .line 410
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

    .line 531
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
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v5, -0x1

    .line 688
    move v3, p2

    .line 690
    .local v3, "tmpNext":I
    array-length v4, p1

    sub-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_0

    .line 691
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 692
    return v5

    .line 695
    :cond_0
    add-int/lit8 v3, p2, 0x1

    aget-byte v2, p1, p2

    .line 697
    .local v2, "requestType":I
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 699
    :cond_1
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    .line 698
    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 701
    return v5

    .line 704
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "parser$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    .line 705
    .local v0, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;
    invoke-interface {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->getRequestType()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 706
    invoke-interface {v0, p1, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->parse([BI)I

    move-result v3

    .line 711
    .end local v0    # "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;
    :cond_4
    return v3
.end method

.method public final pause()V
    .locals 0

    .prologue
    .line 720
    return-void
.end method

.method protected final removeRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1
    .param p1, "parser"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 813
    :cond_0
    return-void
.end method

.method protected final reset()V
    .locals 0

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 738
    return-void
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 729
    return-void
.end method

.method public final sendCmdToSensorHub(BB[B)V
    .locals 3
    .param p1, "inst"    # B
    .param p2, "type"    # B
    .param p3, "data"    # [B

    .prologue
    .line 191
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 192
    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 v2, 0x1

    aput-byte p2, v1, v2

    .line 191
    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    .line 190
    return-void
.end method

.method protected final sendCommonValueToSensorHub(B[B)Z
    .locals 6
    .param p1, "type"    # B
    .param p2, "data"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 620
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [B

    .line 621
    const/16 v3, -0x3f

    aput-byte v3, v2, v4

    aput-byte p1, v2, v5

    .line 620
    invoke-virtual {v1, p2, v2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 622
    .local v0, "result":I
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 623
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 624
    return v4

    .line 627
    :cond_0
    return v5
.end method

.method protected final sendPropertyValueToSensorHub(BBB[B)Z
    .locals 6
    .param p1, "category"    # B
    .param p2, "libType"    # B
    .param p3, "dataType"    # B
    .param p4, "data"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 669
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 670
    const/16 v3, -0x3f

    aput-byte v3, v2, v4

    aput-byte p1, v2, v5

    .line 671
    const/4 v3, 0x2

    aput-byte p2, v2, v3

    const/4 v3, 0x3

    aput-byte p3, v2, v3

    .line 669
    invoke-virtual {v1, p4, v2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 672
    .local v0, "result":I
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 673
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 674
    return v4

    .line 677
    :cond_0
    return v5
.end method

.method protected final sendPropertyValueToSensorHub(BB[B)Z
    .locals 6
    .param p1, "libType"    # B
    .param p2, "dataType"    # B
    .param p3, "data"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 643
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    .line 644
    const/16 v3, -0x3f

    aput-byte v3, v2, v4

    aput-byte p1, v2, v5

    .line 645
    const/4 v3, 0x2

    aput-byte p2, v2, v3

    .line 643
    invoke-virtual {v1, p3, v2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 646
    .local v0, "result":I
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 647
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 648
    return v4

    .line 651
    :cond_0
    return v5
.end method

.method protected final terminateManager()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
