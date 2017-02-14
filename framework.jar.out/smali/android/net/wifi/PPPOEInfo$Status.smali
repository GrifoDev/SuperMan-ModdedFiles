.class public final enum Landroid/net/wifi/PPPOEInfo$Status;
.super Ljava/lang/Enum;
.source "PPPOEInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PPPOEInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/PPPOEInfo$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/PPPOEInfo$Status;

.field public static final enum CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

.field public static final enum OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

.field public static final enum ONLINE:Landroid/net/wifi/PPPOEInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/net/wifi/PPPOEInfo$Status;

    const-string/jumbo v1, "OFFLINE"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/PPPOEInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    new-instance v0, Landroid/net/wifi/PPPOEInfo$Status;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/PPPOEInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    new-instance v0, Landroid/net/wifi/PPPOEInfo$Status;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/PPPOEInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    aput-object v1, v0, v4

    sput-object v0, Landroid/net/wifi/PPPOEInfo$Status;->$VALUES:[Landroid/net/wifi/PPPOEInfo$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/PPPOEInfo$Status;
    .locals 1

    const-class v0, Landroid/net/wifi/PPPOEInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/PPPOEInfo$Status;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/PPPOEInfo$Status;
    .locals 1

    sget-object v0, Landroid/net/wifi/PPPOEInfo$Status;->$VALUES:[Landroid/net/wifi/PPPOEInfo$Status;

    return-object v0
.end method
