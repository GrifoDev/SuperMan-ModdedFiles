.class public final enum Ljava/security/cert/PKIXReason;
.super Ljava/lang/Enum;
.source "PKIXReason.java"

# interfaces
.implements Ljava/security/cert/CertPathValidatorException$Reason;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/security/cert/PKIXReason;",
        ">;",
        "Ljava/security/cert/CertPathValidatorException$Reason;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/security/cert/PKIXReason;

.field public static final enum INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

.field public static final enum INVALID_NAME:Ljava/security/cert/PKIXReason;

.field public static final enum INVALID_POLICY:Ljava/security/cert/PKIXReason;

.field public static final enum NAME_CHAINING:Ljava/security/cert/PKIXReason;

.field public static final enum NOT_CA_CERT:Ljava/security/cert/PKIXReason;

.field public static final enum NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

.field public static final enum PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

.field public static final enum UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string/jumbo v1, "NAME_CHAINING"

    invoke-direct {v0, v1, v3}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v0, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    .line 42
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string/jumbo v1, "INVALID_KEY_USAGE"

    invoke-direct {v0, v1, v4}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    .line 45
    sput-object v0, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    .line 47
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string/jumbo v1, "INVALID_POLICY"

    invoke-direct {v0, v1, v5}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v0, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    .line 52
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string/jumbo v1, "NO_TRUST_ANCHOR"

    invoke-direct {v0, v1, v6}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    .line 55
    sput-object v0, Ljava/security/cert/PKIXReason;->NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

    .line 57
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string/jumbo v1, "UNRECOGNIZED_CRIT_EXT"

    invoke-direct {v0, v1, v7}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    .line 61
    sput-object v0, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    .line 63
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string/jumbo v1, "NOT_CA_CERT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    .line 66
    sput-object v0, Ljava/security/cert/PKIXReason;->NOT_CA_CERT:Ljava/security/cert/PKIXReason;

    .line 68
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string/jumbo v1, "PATH_TOO_LONG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    .line 71
    sput-object v0, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    .line 73
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string/jumbo v1, "INVALID_NAME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    .line 76
    sput-object v0, Ljava/security/cert/PKIXReason;->INVALID_NAME:Ljava/security/cert/PKIXReason;

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/security/cert/PKIXReason;

    sget-object v1, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    aput-object v1, v0, v3

    sget-object v1, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    aput-object v1, v0, v4

    sget-object v1, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    aput-object v1, v0, v5

    sget-object v1, Ljava/security/cert/PKIXReason;->NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

    aput-object v1, v0, v6

    sget-object v1, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    aput-object v1, v0, v7

    sget-object v1, Ljava/security/cert/PKIXReason;->NOT_CA_CERT:Ljava/security/cert/PKIXReason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/security/cert/PKIXReason;->INVALID_NAME:Ljava/security/cert/PKIXReason;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Ljava/security/cert/PKIXReason;->$VALUES:[Ljava/security/cert/PKIXReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/security/cert/PKIXReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Ljava/security/cert/PKIXReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXReason;

    return-object v0
.end method

.method public static values()[Ljava/security/cert/PKIXReason;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Ljava/security/cert/PKIXReason;->$VALUES:[Ljava/security/cert/PKIXReason;

    return-object v0
.end method
