.class final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;
.super Ljava/lang/Enum;
.source "DevicePhysicalContextMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

.field public static final enum AODReason:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

.field public static final enum AODStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

.field public static final enum VersionDay:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

.field public static final enum VersionMonth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

.field public static final enum VersionRevision:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

.field public static final enum VersionYear:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;


# instance fields
.field private val:B


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B
    .locals 1

    iget-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->val:B

    return v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const-string/jumbo v1, "AODStatus"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const-string/jumbo v1, "VersionYear"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionYear:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const-string/jumbo v1, "VersionMonth"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionMonth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const-string/jumbo v1, "VersionDay"

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionDay:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const-string/jumbo v1, "VersionRevision"

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionRevision:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const-string/jumbo v1, "AODReason"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODReason:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionYear:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionMonth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionDay:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionRevision:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODReason:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->val:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    return-object v0
.end method
