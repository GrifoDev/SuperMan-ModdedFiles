.class Lsun/security/validator/EndEntityChecker;
.super Ljava/lang/Object;
.source "EndEntityChecker.java"


# static fields
.field private static final KU_KEY_AGREEMENT:I = 0x4

.field private static final KU_KEY_ENCIPHERMENT:I = 0x2

.field private static final KU_SERVER_ENCRYPTION:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KU_SERVER_KEY_AGREEMENT:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KU_SERVER_SIGNATURE:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KU_SIGNATURE:I = 0x0

.field private static final NSCT_CODE_SIGNING:Ljava/lang/String; = "object_signing"

.field private static final NSCT_SSL_CLIENT:Ljava/lang/String; = "ssl_client"

.field private static final NSCT_SSL_SERVER:Ljava/lang/String; = "ssl_server"

.field private static final OID_EKU_ANY_USAGE:Ljava/lang/String; = "2.5.29.37.0"

.field private static final OID_EKU_CODE_SIGNING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.3"

.field private static final OID_EKU_MS_SGC:Ljava/lang/String; = "1.3.6.1.4.1.311.10.3.3"

.field private static final OID_EKU_NS_SGC:Ljava/lang/String; = "2.16.840.1.113730.4.1"

.field private static final OID_EKU_TIME_STAMPING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.8"

.field private static final OID_EKU_TLS_CLIENT:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final OID_EKU_TLS_SERVER:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final OID_EXTENDED_KEY_USAGE:Ljava/lang/String; = "2.5.29.37"

.field private static final OID_SUBJECT_ALT_NAME:Ljava/lang/String; = "2.5.29.17"


# instance fields
.field private final type:Ljava/lang/String;

.field private final variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DHE_DSS"

    aput-object v1, v0, v3

    const-string/jumbo v1, "DHE_RSA"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ECDHE_ECDSA"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ECDHE_RSA"

    aput-object v1, v0, v6

    const-string/jumbo v1, "RSA_EXPORT"

    aput-object v1, v0, v7

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsun/security/validator/EndEntityChecker;->KU_SERVER_SIGNATURE:Ljava/util/Collection;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "RSA"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsun/security/validator/EndEntityChecker;->KU_SERVER_ENCRYPTION:Ljava/util/Collection;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "DH_DSS"

    aput-object v1, v0, v3

    const-string/jumbo v1, "DH_RSA"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ECDH_ECDSA"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ECDH_RSA"

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsun/security/validator/EndEntityChecker;->KU_SERVER_KEY_AGREEMENT:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/validator/EndEntityChecker;->type:Ljava/lang/String;

    iput-object p2, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    return-void
.end method

.method private checkCodeSigning(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "KeyUsage does not allow digital signatures"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_0
    const-string/jumbo v1, "1.3.6.1.5.5.7.3.3"

    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "Extended key usage does not permit use for code signing"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v2, "jce signing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "object_signing"

    invoke-static {p1, v1}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "Netscape cert type does not permit use for code signing"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_2
    const-string/jumbo v1, "2.16.840.1.113730.1.1"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3
    const-string/jumbo v1, "2.5.29.15"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v1, "2.5.29.37"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lsun/security/validator/EndEntityChecker;->checkRemainingExtensions(Ljava/util/Set;)V

    return-void
.end method

.method private checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v1, "2.5.29.37.0"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method private checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    array-length v1, v0

    if-le v1, p2, :cond_1

    aget-boolean v1, v0, p2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkRemainingExtensions(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string/jumbo v0, "2.5.29.19"

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v0, "2.5.29.17"

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate contains unsupported critical extensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkTLSClient(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "KeyUsage does not allow digital signatures"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_0
    const-string/jumbo v1, "1.3.6.1.5.5.7.3.2"

    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "Extended key usage does not permit use for TLS client authentication"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_1
    const-string/jumbo v1, "ssl_client"

    invoke-static {p1, v1}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "Netscape cert type does not permit use for SSL client"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_2
    const-string/jumbo v1, "2.5.29.15"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v1, "2.5.29.37"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v1, "2.16.840.1.113730.1.1"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lsun/security/validator/EndEntityChecker;->checkRemainingExtensions(Ljava/util/Set;)V

    return-void
.end method

.method private checkTLSServer(Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lsun/security/validator/EndEntityChecker;->KU_SERVER_ENCRYPTION:Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "KeyUsage does not allow key encipherment"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_0
    sget-object v1, Lsun/security/validator/EndEntityChecker;->KU_SERVER_SIGNATURE:Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "KeyUsage does not allow digital signatures"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_1
    sget-object v1, Lsun/security/validator/EndEntityChecker;->KU_SERVER_KEY_AGREEMENT:Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "KeyUsage does not allow key agreement"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown authType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v1, "1.3.6.1.5.5.7.3.1"

    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "1.3.6.1.4.1.311.10.3.3"

    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "2.16.840.1.113730.4.1"

    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "Extended key usage does not permit use for TLS server authentication"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_4
    const-string/jumbo v1, "ssl_server"

    invoke-static {p1, v1}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "Netscape cert type does not permit use for SSL server"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_5
    const-string/jumbo v1, "2.5.29.15"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v1, "2.5.29.37"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v1, "2.16.840.1.113730.1.1"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lsun/security/validator/EndEntityChecker;->checkRemainingExtensions(Ljava/util/Set;)V

    return-void
.end method

.method private checkTSAServer(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "KeyUsage does not allow digital signatures"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "Certificate does not contain an extended key usage extension required for a TSA server"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_1
    const-string/jumbo v1, "1.3.6.1.5.5.7.3.8"

    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "Extended key usage does not permit use for TSA server"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_2
    const-string/jumbo v1, "2.5.29.15"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v1, "2.5.29.37"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lsun/security/validator/EndEntityChecker;->checkRemainingExtensions(Ljava/util/Set;)V

    return-void
.end method

.method private getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/validator/EndEntityChecker;
    .locals 1

    new-instance v0, Lsun/security/validator/EndEntityChecker;

    invoke-direct {v0, p0, p1}, Lsun/security/validator/EndEntityChecker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method check(Ljava/security/cert/X509Certificate;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "tls server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lsun/security/validator/EndEntityChecker;->checkTLSServer(Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "tls client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkTLSClient(Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "code signing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkCodeSigning(Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "jce signing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkCodeSigning(Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "plugin code signing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkCodeSigning(Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "tsa server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkTSAServer(Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown variant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
