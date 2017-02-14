.class final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;
.super Ljava/lang/Enum;
.source "ExerciseRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

.field public static final enum Altitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

.field public static final enum DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

.field public static final enum GpsStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

.field public static final enum Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

.field public static final enum Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

.field public static final enum PedoDistanceDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

.field public static final enum PedoSpeed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

.field public static final enum Pressure:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

.field public static final enum Speed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

.field public static final enum StepCountDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

.field public static final enum TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;


# instance fields
.field private val:B


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B
    .locals 1

    iget-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B

    return v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const-string/jumbo v1, "TimeStamp"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const-string/jumbo v1, "DataCount"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const-string/jumbo v1, "Latitude"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const-string/jumbo v1, "Longitude"

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const-string/jumbo v1, "Altitude"

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Altitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const-string/jumbo v1, "Pressure"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Pressure:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const-string/jumbo v1, "StepCountDiff"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->StepCountDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const-string/jumbo v1, "PedoDistanceDiff"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoDistanceDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const-string/jumbo v1, "PedoSpeed"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoSpeed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const-string/jumbo v1, "Speed"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Speed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const-string/jumbo v1, "GpsStatus"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->GpsStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Altitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Pressure:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->StepCountDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoDistanceDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoSpeed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Speed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->GpsStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    return-object v0
.end method
