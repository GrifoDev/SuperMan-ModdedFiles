.class public final enum Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
.super Ljava/lang/Enum;
.source "OCSP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/OCSP$RevocationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CertStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

.field public static final enum GOOD:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

.field public static final enum REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

.field public static final enum UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    new-instance v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    const-string/jumbo v1, "GOOD"

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->GOOD:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    new-instance v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    const-string/jumbo v1, "REVOKED"

    invoke-direct {v0, v1, v3}, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    new-instance v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    sget-object v1, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->GOOD:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    aput-object v1, v0, v3

    sget-object v1, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    aput-object v1, v0, v4

    sput-object v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->$VALUES:[Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 342
    const-class v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    return-object v0
.end method

.method public static values()[Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .locals 1

    .prologue
    .line 342
    sget-object v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->$VALUES:[Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    return-object v0
.end method
