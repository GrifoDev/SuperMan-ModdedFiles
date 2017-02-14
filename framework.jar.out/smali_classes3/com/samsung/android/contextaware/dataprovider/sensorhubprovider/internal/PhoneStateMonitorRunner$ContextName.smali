.class final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;
.super Ljava/lang/Enum;
.source "PhoneStateMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

.field public static final enum Embower:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

.field public static final enum FinalLcdOff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

.field public static final enum LcdDirect:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

.field public static final enum LcdOffInference:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

.field public static final enum LcdOffRecommend:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

.field public static final enum Movement:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

.field public static final enum TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;


# instance fields
.field private val:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->val:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    const-string/jumbo v1, "Movement"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->Movement:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    const-string/jumbo v1, "LcdDirect"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdDirect:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    const-string/jumbo v1, "Embower"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->Embower:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    const-string/jumbo v1, "FinalLcdOff"

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->FinalLcdOff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    const-string/jumbo v1, "LcdOffInference"

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdOffInference:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    const-string/jumbo v1, "LcdOffRecommend"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdOffRecommend:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    const-string/jumbo v1, "TimeStamp"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->Movement:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdDirect:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->Embower:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->FinalLcdOff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdOffInference:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdOffRecommend:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->val:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    return-object v0
.end method
