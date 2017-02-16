.class final enum Lsun/security/provider/certpath/RevocationChecker$Mode;
.super Ljava/lang/Enum;
.source "RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/RevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/provider/certpath/RevocationChecker$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/provider/certpath/RevocationChecker$Mode;

.field public static final enum ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

.field public static final enum ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

.field public static final enum PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

.field public static final enum PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    const-string/jumbo v1, "PREFER_OCSP"

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/RevocationChecker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    const-string/jumbo v1, "PREFER_CRLS"

    invoke-direct {v0, v1, v3}, Lsun/security/provider/certpath/RevocationChecker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    const-string/jumbo v1, "ONLY_CRLS"

    invoke-direct {v0, v1, v4}, Lsun/security/provider/certpath/RevocationChecker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    const-string/jumbo v1, "ONLY_OCSP"

    invoke-direct {v0, v1, v5}, Lsun/security/provider/certpath/RevocationChecker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    const/4 v0, 0x4

    new-array v0, v0, [Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    aput-object v1, v0, v5

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->$VALUES:[Lsun/security/provider/certpath/RevocationChecker$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/provider/certpath/RevocationChecker$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    return-object v0
.end method

.method public static values()[Lsun/security/provider/certpath/RevocationChecker$Mode;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->$VALUES:[Lsun/security/provider/certpath/RevocationChecker$Mode;

    return-object v0
.end method
