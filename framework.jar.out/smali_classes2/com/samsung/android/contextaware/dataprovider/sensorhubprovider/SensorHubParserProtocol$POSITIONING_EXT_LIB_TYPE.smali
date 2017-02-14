.class public final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;
.super Ljava/lang/Enum;
.source "SensorHubParserProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POSITIONING_EXT_LIB_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;

.field public static final enum POSITIONING_CURRENT_STATUS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;


# instance fields
.field protected value:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;

    const-string/jumbo v1, "POSITIONING_CURRENT_STATUS"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;->POSITIONING_CURRENT_STATUS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;

    new-array v0, v3, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;->POSITIONING_CURRENT_STATUS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;

    return-object v0
.end method
