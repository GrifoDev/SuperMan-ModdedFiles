.class public final enum Ljava/net/StandardProtocolFamily;
.super Ljava/lang/Enum;
.source "StandardProtocolFamily.java"

# interfaces
.implements Ljava/net/ProtocolFamily;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/net/StandardProtocolFamily;",
        ">;",
        "Ljava/net/ProtocolFamily;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/net/StandardProtocolFamily;

.field public static final enum INET:Ljava/net/StandardProtocolFamily;

.field public static final enum INET6:Ljava/net/StandardProtocolFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/net/StandardProtocolFamily;

    const-string/jumbo v1, "INET"

    invoke-direct {v0, v1, v2}, Ljava/net/StandardProtocolFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    new-instance v0, Ljava/net/StandardProtocolFamily;

    const-string/jumbo v1, "INET6"

    invoke-direct {v0, v1, v3}, Ljava/net/StandardProtocolFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/StandardProtocolFamily;

    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    aput-object v1, v0, v2

    sget-object v1, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    aput-object v1, v0, v3

    sput-object v0, Ljava/net/StandardProtocolFamily;->$VALUES:[Ljava/net/StandardProtocolFamily;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/net/StandardProtocolFamily;
    .locals 1

    const-class v0, Ljava/net/StandardProtocolFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/net/StandardProtocolFamily;

    return-object v0
.end method

.method public static values()[Ljava/net/StandardProtocolFamily;
    .locals 1

    sget-object v0, Ljava/net/StandardProtocolFamily;->$VALUES:[Ljava/net/StandardProtocolFamily;

    return-object v0
.end method
