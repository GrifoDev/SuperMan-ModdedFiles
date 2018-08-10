.class final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;
.super Ljava/lang/Enum;
.source "SLocationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum Accuracy:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum AccuracyArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum AltitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum BearingArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum DataArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum DataSequence:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum ErrorCode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum EventStatusArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum EventTypeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum FunctionType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum GeoFenceStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum LatitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum LongitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum SpeedArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum SuccessGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum TimestampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum TotalGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum TotalSequence:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

.field public static final enum Version:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;


# instance fields
.field private val:B


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B
    .locals 1

    iget-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B

    return v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "GeoFenceId"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "GeoFenceStatus"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "Latitude"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "Longitude"

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "TotalGpsCount"

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TotalGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "SuccessGpsCount"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->SuccessGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "Distance"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "Timestamp"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "Accuracy"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Accuracy:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "FunctionType"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->FunctionType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "ErrorCode"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->ErrorCode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "EventTypeArray"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->EventTypeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "EventStatusArray"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->EventStatusArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "DataArray"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "TimestampArray"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TimestampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "DataCount"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "LatitudeArray"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->LatitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "LongitudeArray"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->LongitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "AltitudeArray"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->AltitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "SpeedArray"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->SpeedArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "BearingArray"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->BearingArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "AccuracyArray"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->AccuracyArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "Version"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Version:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "DataSequence"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataSequence:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const-string/jumbo v1, "TotalSequence"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TotalSequence:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v0, 0x19

    new-array v0, v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TotalGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->SuccessGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Accuracy:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->FunctionType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->ErrorCode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->EventTypeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->EventStatusArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TimestampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->LatitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->LongitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->AltitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->SpeedArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->BearingArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->AccuracyArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Version:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataSequence:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TotalSequence:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    return-object v0
.end method
