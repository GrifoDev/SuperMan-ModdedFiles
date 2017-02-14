.class public final enum Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;
.super Ljava/lang/Enum;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TunnelState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

.field public static final enum NONE:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

.field public static final enum SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

.field public static final enum TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->NONE:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    new-instance v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    const-string/jumbo v1, "SETUP"

    invoke-direct {v0, v1, v3}, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    new-instance v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    const-string/jumbo v1, "TUNNELING"

    invoke-direct {v0, v1, v4}, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    const/4 v0, 0x3

    new-array v0, v0, [Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->NONE:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    aput-object v1, v0, v3

    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    aput-object v1, v0, v4

    sput-object v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->$VALUES:[Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;
    .locals 1

    const-class v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    return-object v0
.end method

.method public static values()[Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;
    .locals 1

    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->$VALUES:[Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    return-object v0
.end method
