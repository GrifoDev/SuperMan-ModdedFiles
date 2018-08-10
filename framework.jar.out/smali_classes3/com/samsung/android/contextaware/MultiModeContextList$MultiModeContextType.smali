.class public abstract enum Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
.super Ljava/lang/Enum;
.source "MultiModeContextList.java"

# interfaces
.implements Lcom/samsung/android/contextaware/IParserHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/MultiModeContextList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "MultiModeContextType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$1;,
        Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$2;,
        Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;",
        ">;",
        "Lcom/samsung/android/contextaware/IParserHandler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

.field public static final enum SENSORHUB_RUNNER_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

.field public static final enum SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

.field public static final enum SENSORHUB_RUNNER_STEP_LEVEL_MONITOR:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$1;

    const-string/jumbo v1, "SENSORHUB_RUNNER_ACTIVITY_TRACKER"

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    new-instance v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$2;

    const-string/jumbo v1, "SENSORHUB_RUNNER_STEP_LEVEL_MONITOR"

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_STEP_LEVEL_MONITOR:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_STEP_LEVEL_MONITOR:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    new-instance v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$3;

    const-string/jumbo v1, "SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR"

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    sget-object v1, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_STEP_LEVEL_MONITOR:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->$VALUES:[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->$VALUES:[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getParserHandler()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
