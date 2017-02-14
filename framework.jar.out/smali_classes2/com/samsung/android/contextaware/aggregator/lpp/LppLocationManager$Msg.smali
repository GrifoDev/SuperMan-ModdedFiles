.class final enum Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;
.super Ljava/lang/Enum;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Msg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum CHECK_GPS_WIFI:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum GPS_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum GPS_BATCH_ENDED:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum GPS_BATCH_STARTED:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum GPS_NOT_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum GPS_PASSIVE_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum LOC_FOUND_BATCH:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum LOC_FOUND_GPS:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum LOC_FOUND_NETWORK:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum LOC_FOUND_PASSIVE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum LOC_MGR_RETRY:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum LOC_REQ:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum LOC_REQ_GPS_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum LOC_REQ_NLP_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum PASSIVE_INACTIVE_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum START:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum STATIONARY:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum VEHICLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

.field public static final enum WALK:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->START:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "STATIONARY"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->STATIONARY:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "WALK"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->WALK:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "VEHICLE"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->VEHICLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "LOC_REQ"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "LOC_REQ_GPS_TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ_GPS_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "LOC_REQ_NLP_TIMEOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ_NLP_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "LOC_FOUND_GPS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_GPS:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "LOC_FOUND_NETWORK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_NETWORK:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "LOC_FOUND_BATCH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_BATCH:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "LOC_FOUND_PASSIVE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_PASSIVE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "LOC_MGR_RETRY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_MGR_RETRY:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "PASSIVE_INACTIVE_TIMEOUT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->PASSIVE_INACTIVE_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "GPS_BATCH_STARTED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_STARTED:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "GPS_BATCH_ENDED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_ENDED:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "GPS_BATCH_TIMEOUT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "GPS_AVAILABLE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "GPS_PASSIVE_AVAILABLE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_PASSIVE_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "GPS_NOT_AVAILABLE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_NOT_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "CHECK_GPS_WIFI"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->CHECK_GPS_WIFI:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const-string/jumbo v1, "STOP"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->START:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->STATIONARY:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->WALK:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->VEHICLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ_GPS_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ_NLP_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_GPS:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_NETWORK:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_BATCH:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_PASSIVE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_MGR_RETRY:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->PASSIVE_INACTIVE_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_STARTED:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_ENDED:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_PASSIVE_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_NOT_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->CHECK_GPS_WIFI:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->$VALUES:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->$VALUES:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    return-object v0
.end method
