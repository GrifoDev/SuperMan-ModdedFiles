.class public final enum Ljava/security/cert/CertPathValidatorException$BasicReason;
.super Ljava/lang/Enum;
.source "CertPathValidatorException.java"

# interfaces
.implements Ljava/security/cert/CertPathValidatorException$Reason;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/cert/CertPathValidatorException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BasicReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/security/cert/CertPathValidatorException$BasicReason;",
        ">;",
        "Ljava/security/cert/CertPathValidatorException$Reason;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum INVALID_SIGNATURE:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string/jumbo v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v3}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    .line 264
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 266
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string/jumbo v1, "EXPIRED"

    invoke-direct {v0, v1, v4}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    .line 269
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 271
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string/jumbo v1, "NOT_YET_VALID"

    invoke-direct {v0, v1, v5}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    .line 274
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 276
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string/jumbo v1, "REVOKED"

    invoke-direct {v0, v1, v6}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    .line 279
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 281
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string/jumbo v1, "UNDETERMINED_REVOCATION_STATUS"

    invoke-direct {v0, v1, v7}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    .line 284
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 286
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string/jumbo v1, "INVALID_SIGNATURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    .line 289
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->INVALID_SIGNATURE:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 291
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string/jumbo v1, "ALGORITHM_CONSTRAINED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    .line 294
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 260
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/security/cert/CertPathValidatorException$BasicReason;

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    aput-object v1, v0, v3

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    aput-object v1, v0, v4

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

    aput-object v1, v0, v5

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    aput-object v1, v0, v6

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    aput-object v1, v0, v7

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->INVALID_SIGNATURE:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->$VALUES:[Ljava/security/cert/CertPathValidatorException$BasicReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/security/cert/CertPathValidatorException$BasicReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 260
    const-class v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    return-object v0
.end method

.method public static values()[Ljava/security/cert/CertPathValidatorException$BasicReason;
    .locals 1

    .prologue
    .line 260
    sget-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->$VALUES:[Ljava/security/cert/CertPathValidatorException$BasicReason;

    return-object v0
.end method
