.class public final enum Lsun/net/www/protocol/http/AuthScheme;
.super Ljava/lang/Enum;
.source "AuthScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/net/www/protocol/http/AuthScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/net/www/protocol/http/AuthScheme;

.field public static final enum BASIC:Lsun/net/www/protocol/http/AuthScheme;

.field public static final enum DIGEST:Lsun/net/www/protocol/http/AuthScheme;

.field public static final enum KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

.field public static final enum NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

.field public static final enum NTLM:Lsun/net/www/protocol/http/AuthScheme;

.field public static final enum UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lsun/net/www/protocol/http/AuthScheme;

    const-string/jumbo v1, "BASIC"

    invoke-direct {v0, v1, v3}, Lsun/net/www/protocol/http/AuthScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    new-instance v0, Lsun/net/www/protocol/http/AuthScheme;

    const-string/jumbo v1, "DIGEST"

    invoke-direct {v0, v1, v4}, Lsun/net/www/protocol/http/AuthScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    new-instance v0, Lsun/net/www/protocol/http/AuthScheme;

    const-string/jumbo v1, "NTLM"

    invoke-direct {v0, v1, v5}, Lsun/net/www/protocol/http/AuthScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    new-instance v0, Lsun/net/www/protocol/http/AuthScheme;

    const-string/jumbo v1, "NEGOTIATE"

    invoke-direct {v0, v1, v6}, Lsun/net/www/protocol/http/AuthScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    new-instance v0, Lsun/net/www/protocol/http/AuthScheme;

    const-string/jumbo v1, "KERBEROS"

    invoke-direct {v0, v1, v7}, Lsun/net/www/protocol/http/AuthScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    new-instance v0, Lsun/net/www/protocol/http/AuthScheme;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsun/net/www/protocol/http/AuthScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;

    const/4 v0, 0x6

    new-array v0, v0, [Lsun/net/www/protocol/http/AuthScheme;

    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    aput-object v1, v0, v3

    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    aput-object v1, v0, v4

    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    aput-object v1, v0, v5

    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    aput-object v1, v0, v6

    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    aput-object v1, v0, v7

    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lsun/net/www/protocol/http/AuthScheme;->$VALUES:[Lsun/net/www/protocol/http/AuthScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/net/www/protocol/http/AuthScheme;
    .locals 1

    const-class v0, Lsun/net/www/protocol/http/AuthScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/net/www/protocol/http/AuthScheme;

    return-object v0
.end method

.method public static values()[Lsun/net/www/protocol/http/AuthScheme;
    .locals 1

    sget-object v0, Lsun/net/www/protocol/http/AuthScheme;->$VALUES:[Lsun/net/www/protocol/http/AuthScheme;

    return-object v0
.end method
