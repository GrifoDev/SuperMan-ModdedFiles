.class abstract enum Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
.super Ljava/lang/Enum;
.source "SensorHubParserConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "SensorHubNonLibParserList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$1;,
        Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$2;,
        Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

.field public static final enum ORIENTATION:Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

.field public static final enum POWER_RESET:Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

.field public static final enum SENSORHUB_DEBUG_MSG:Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$1;

    const-string/jumbo v1, "ORIENTATION"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_PARSER_NONLIB_ORIENTATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->ORIENTATION:Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$2;

    const-string/jumbo v1, "POWER_RESET"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_PARSER_NOTI_POWER_RESET:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->POWER_RESET:Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$3;

    const-string/jumbo v1, "SENSORHUB_DEBUG_MSG"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_PARSER_SENSORHUB_DEBUG_MSG:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->SENSORHUB_DEBUG_MSG:Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->ORIENTATION:Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->POWER_RESET:Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->SENSORHUB_DEBUG_MSG:Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->$VALUES:[Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->$VALUES:[Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    return-object v0
.end method


# virtual methods
.method protected abstract createObj(Landroid/content/Context;)V
.end method

.method protected final registerParser(Ljava/lang/String;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getLibParser()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->registerParser(Ljava/lang/String;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V

    :cond_0
    return-void
.end method
