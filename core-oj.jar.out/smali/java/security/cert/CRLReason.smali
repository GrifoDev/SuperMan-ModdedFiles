.class public final enum Ljava/security/cert/CRLReason;
.super Ljava/lang/Enum;
.source "CRLReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/security/cert/CRLReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/security/cert/CRLReason;

.field public static final enum AA_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

.field public static final enum CA_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

.field public static final enum CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

.field public static final enum KEY_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

.field public static final enum REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

.field public static final enum SUPERSEDED:Ljava/security/cert/CRLReason;

.field public static final enum UNSPECIFIED:Ljava/security/cert/CRLReason;

.field public static final enum UNUSED:Ljava/security/cert/CRLReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string/jumbo v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v3}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    .line 44
    sput-object v0, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    .line 46
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string/jumbo v1, "KEY_COMPROMISE"

    invoke-direct {v0, v1, v4}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    .line 51
    sput-object v0, Ljava/security/cert/CRLReason;->KEY_COMPROMISE:Ljava/security/cert/CRLReason;

    .line 53
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string/jumbo v1, "CA_COMPROMISE"

    invoke-direct {v0, v1, v5}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    .line 58
    sput-object v0, Ljava/security/cert/CRLReason;->CA_COMPROMISE:Ljava/security/cert/CRLReason;

    .line 60
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string/jumbo v1, "AFFILIATION_CHANGED"

    invoke-direct {v0, v1, v6}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    .line 64
    sput-object v0, Ljava/security/cert/CRLReason;->AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

    .line 66
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string/jumbo v1, "SUPERSEDED"

    invoke-direct {v0, v1, v7}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v0, Ljava/security/cert/CRLReason;->SUPERSEDED:Ljava/security/cert/CRLReason;

    .line 71
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string/jumbo v1, "CESSATION_OF_OPERATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    .line 74
    sput-object v0, Ljava/security/cert/CRLReason;->CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

    .line 76
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string/jumbo v1, "CERTIFICATE_HOLD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v0, Ljava/security/cert/CRLReason;->CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

    .line 81
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string/jumbo v1, "UNUSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    .line 84
    sput-object v0, Ljava/security/cert/CRLReason;->UNUSED:Ljava/security/cert/CRLReason;

    .line 86
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string/jumbo v1, "REMOVE_FROM_CRL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v0, Ljava/security/cert/CRLReason;->REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

    .line 92
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string/jumbo v1, "PRIVILEGE_WITHDRAWN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    .line 96
    sput-object v0, Ljava/security/cert/CRLReason;->PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

    .line 98
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string/jumbo v1, "AA_COMPROMISE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    .line 103
    sput-object v0, Ljava/security/cert/CRLReason;->AA_COMPROMISE:Ljava/security/cert/CRLReason;

    .line 39
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/security/cert/CRLReason;

    sget-object v1, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    aput-object v1, v0, v3

    sget-object v1, Ljava/security/cert/CRLReason;->KEY_COMPROMISE:Ljava/security/cert/CRLReason;

    aput-object v1, v0, v4

    sget-object v1, Ljava/security/cert/CRLReason;->CA_COMPROMISE:Ljava/security/cert/CRLReason;

    aput-object v1, v0, v5

    sget-object v1, Ljava/security/cert/CRLReason;->AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

    aput-object v1, v0, v6

    sget-object v1, Ljava/security/cert/CRLReason;->SUPERSEDED:Ljava/security/cert/CRLReason;

    aput-object v1, v0, v7

    sget-object v1, Ljava/security/cert/CRLReason;->CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/security/cert/CRLReason;->CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/security/cert/CRLReason;->UNUSED:Ljava/security/cert/CRLReason;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/security/cert/CRLReason;->REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/security/cert/CRLReason;->PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Ljava/security/cert/CRLReason;->AA_COMPROMISE:Ljava/security/cert/CRLReason;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Ljava/security/cert/CRLReason;->$VALUES:[Ljava/security/cert/CRLReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/security/cert/CRLReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Ljava/security/cert/CRLReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method public static values()[Ljava/security/cert/CRLReason;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Ljava/security/cert/CRLReason;->$VALUES:[Ljava/security/cert/CRLReason;

    return-object v0
.end method
