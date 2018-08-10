.class public final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
.super Ljava/lang/Enum;
.source "SensorHubParserProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

.field public static final enum BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

.field public static final enum EXTANDED_INTERRUPT_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

.field public static final enum INTERRUPT_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

.field public static final enum NORMAL_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;


# instance fields
.field public value:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    const-string/jumbo v1, "NORMAL_MODE"

    invoke-direct {v0, v1, v5, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->NORMAL_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    const-string/jumbo v1, "INTERRUPT_MODE"

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->INTERRUPT_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    const-string/jumbo v1, "BATCH_MODE"

    invoke-direct {v0, v1, v4, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    const-string/jumbo v1, "EXTANDED_INTERRUPT_MODE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->EXTANDED_INTERRUPT_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    new-array v0, v7, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->NORMAL_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->INTERRUPT_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->EXTANDED_INTERRUPT_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    return-object v0
.end method
