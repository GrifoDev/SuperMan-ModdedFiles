.class final enum Lsun/security/ssl/X509KeyManagerImpl$CheckType;
.super Ljava/lang/Enum;
.source "X509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CheckType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/ssl/X509KeyManagerImpl$CheckType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/ssl/X509KeyManagerImpl$CheckType;

.field public static final enum CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

.field public static final enum NONE:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

.field public static final enum SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;


# instance fields
.field final validEku:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    const-string/jumbo v1, "NONE"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->NONE:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    const-string/jumbo v1, "CLIENT"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "2.5.29.37.0"

    aput-object v4, v3, v5

    const-string/jumbo v4, "1.3.6.1.5.5.7.3.2"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v6, v2}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    const-string/jumbo v1, "SERVER"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "2.5.29.37.0"

    aput-object v4, v3, v5

    const-string/jumbo v4, "1.3.6.1.5.5.7.3.1"

    aput-object v4, v3, v6

    const-string/jumbo v4, "2.16.840.1.113730.4.1"

    aput-object v4, v3, v7

    const-string/jumbo v4, "1.3.6.1.4.1.311.10.3.3"

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v7, v2}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    new-array v0, v8, [Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->NONE:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    aput-object v1, v0, v5

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    aput-object v1, v0, v6

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    aput-object v1, v0, v7

    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->$VALUES:[Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->validEku:Ljava/util/Set;

    return-void
.end method

.method private static getBit([ZI)Z
    .locals 1

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-boolean v0, p0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/ssl/X509KeyManagerImpl$CheckType;
    .locals 1

    const-class v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    return-object v0
.end method

.method public static values()[Lsun/security/ssl/X509KeyManagerImpl$CheckType;
    .locals 1

    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->$VALUES:[Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    return-object v0
.end method


# virtual methods
.method check(Ljava/security/cert/X509Certificate;Ljava/util/Date;)Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    .locals 6

    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->NONE:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    if-ne p0, v5, :cond_0

    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v5

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->validEku:Ljava/util/Set;

    invoke-static {v5, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v5

    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->getBit([ZI)Z

    move-result v4

    const-string/jumbo v5, "RSA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_7

    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    if-eq p0, v5, :cond_2

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->getBit([ZI)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_2
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v5

    :cond_3
    const-string/jumbo v5, "DSA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v4, :cond_7

    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v5

    :cond_4
    const-string/jumbo v5, "DH"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    invoke-static {v3, v5}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->getBit([ZI)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v5

    :cond_5
    const-string/jumbo v5, "EC"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v4, :cond_6

    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v5

    :cond_6
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    if-ne p0, v5, :cond_7

    const/4 v5, 0x4

    invoke-static {v3, v5}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->getBit([ZI)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v2

    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v5

    :cond_7
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    :catch_1
    move-exception v2

    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXPIRED:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v5
.end method
