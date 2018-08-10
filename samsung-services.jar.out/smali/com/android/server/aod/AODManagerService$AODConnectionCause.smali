.class final enum Lcom/android/server/aod/AODManagerService$AODConnectionCause;
.super Ljava/lang/Enum;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AODConnectionCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/aod/AODManagerService$AODConnectionCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/aod/AODManagerService$AODConnectionCause;

.field public static final enum AODCONNECTION_STARTAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

.field public static final enum AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

.field public static final enum AODCONNECTION_UPDATE_CALENDAR_DATA:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

.field public static final enum AODCONNECTION_UPDATE_NOTIFICATION_KEYS:Lcom/android/server/aod/AODManagerService$AODConnectionCause;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    const-string/jumbo v1, "AODCONNECTION_STARTAOD"

    invoke-direct {v0, v1, v2}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STARTAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    new-instance v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    const-string/jumbo v1, "AODCONNECTION_STOPAOD"

    invoke-direct {v0, v1, v3}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    new-instance v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    const-string/jumbo v1, "AODCONNECTION_UPDATE_NOTIFICATION_KEYS"

    invoke-direct {v0, v1, v4}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_NOTIFICATION_KEYS:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    new-instance v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    const-string/jumbo v1, "AODCONNECTION_UPDATE_CALENDAR_DATA"

    invoke-direct {v0, v1, v5}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_CALENDAR_DATA:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    sget-object v1, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STARTAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_NOTIFICATION_KEYS:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_CALENDAR_DATA:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->$VALUES:[Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getType(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)Lcom/android/server/aod/AODManagerService$AODConnectionCause;
    .locals 2

    invoke-static {}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->values()[Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->ordinal()I

    move-result v1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/aod/AODManagerService$AODConnectionCause;
    .locals 1

    const-class v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    return-object v0
.end method

.method public static values()[Lcom/android/server/aod/AODManagerService$AODConnectionCause;
    .locals 1

    sget-object v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->$VALUES:[Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    return-object v0
.end method
