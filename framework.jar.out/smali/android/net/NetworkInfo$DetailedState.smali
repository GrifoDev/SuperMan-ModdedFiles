.class public final enum Landroid/net/NetworkInfo$DetailedState;
.super Ljava/lang/Enum;
.source "NetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailedState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/NetworkInfo$DetailedState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/NetworkInfo$DetailedState;

.field public static final enum AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum BLOCKED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum CONNECTED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum CONNECTING:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum FAILED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum IDLE:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum SCANNING:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v3}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    .line 62
    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 63
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "SCANNING"

    invoke-direct {v0, v1, v4}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    .line 64
    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    .line 65
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v5}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    .line 66
    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 67
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "AUTHENTICATING"

    invoke-direct {v0, v1, v6}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    .line 68
    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 69
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "OBTAINING_IPADDR"

    invoke-direct {v0, v1, v7}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    .line 70
    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    .line 71
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    .line 72
    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 73
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "SUSPENDED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    .line 74
    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    .line 75
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "DISCONNECTING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    .line 76
    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 77
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "DISCONNECTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    .line 78
    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 79
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "FAILED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    .line 80
    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 81
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "BLOCKED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    .line 82
    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    .line 83
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "VERIFYING_POOR_LINK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    .line 84
    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    .line 85
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "CAPTIVE_PORTAL_CHECK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    .line 86
    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    .line 60
    const/16 v0, 0xd

    new-array v0, v0, [Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    aput-object v1, v0, v7

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->$VALUES:[Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public static values()[Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->$VALUES:[Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method
