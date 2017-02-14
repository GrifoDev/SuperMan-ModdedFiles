.class final enum Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;
.super Ljava/lang/Enum;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NWD_SERVICE_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

.field public static final enum STARTED:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

.field public static final enum STARTING:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

.field public static final enum STOPPED:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

.field public static final enum STOPPING:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

.field public static final enum UNKNOWN:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->UNKNOWN:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    const-string/jumbo v1, "STARTING"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->STARTING:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    const-string/jumbo v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->STARTED:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    const-string/jumbo v1, "STOPPING"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->STOPPING:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    const-string/jumbo v1, "STOPPED"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->STOPPED:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    sget-object v1, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->UNKNOWN:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->STARTING:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->STARTED:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->STOPPING:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->STOPPED:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->$VALUES:[Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;
    .locals 1

    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->$VALUES:[Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    return-object v0
.end method
