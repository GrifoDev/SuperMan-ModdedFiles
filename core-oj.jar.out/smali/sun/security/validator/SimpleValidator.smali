.class public final Lsun/security/validator/SimpleValidator;
.super Lsun/security/validator/Validator;
.source "SimpleValidator.java"


# static fields
.field private static final NSCT_CODE_SIGNING_CA:Ljava/lang/String; = "object_signing_ca"

.field private static final NSCT_SSL_CA:Ljava/lang/String; = "ssl_ca"

.field static final OBJID_NETSCAPE_CERT_TYPE:Lsun/security/util/ObjectIdentifier;

.field static final OID_BASIC_CONSTRAINTS:Ljava/lang/String; = "2.5.29.19"

.field static final OID_EKU_ANY_USAGE:Ljava/lang/String; = "2.5.29.37.0"

.field static final OID_EXTENDED_KEY_USAGE:Ljava/lang/String; = "2.5.29.37"

.field static final OID_KEY_USAGE:Ljava/lang/String; = "2.5.29.15"

.field static final OID_NETSCAPE_CERT_TYPE:Ljava/lang/String; = "2.16.840.1.113730.1.1"


# instance fields
.field private final trustedCerts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final trustedX500Principals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    sput-object v0, Lsun/security/validator/SimpleValidator;->OBJID_NETSCAPE_CERT_TYPE:Lsun/security/util/ObjectIdentifier;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v4, "Simple"

    invoke-direct {p0, v4, p1}, Lsun/security/validator/Validator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lsun/security/validator/SimpleValidator;->trustedCerts:Ljava/util/Collection;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    iget-object v4, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildTrustedChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v7, p1

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_1

    aget-object v1, p1, v2

    invoke-direct {p0, v1}, Lsun/security/validator/SimpleValidator;->getTrustedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lsun/security/validator/SimpleValidator;->CHAIN0:[Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/X509Certificate;

    return-object v7

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    aget-object v1, p1, v7

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    iget-object v7, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lsun/security/validator/SimpleValidator;->CHAIN0:[Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/X509Certificate;

    return-object v7

    :cond_2
    new-instance v7, Lsun/security/validator/ValidatorException;

    sget-object v8, Lsun/security/validator/ValidatorException;->T_NO_TRUST_ANCHOR:Ljava/lang/Object;

    invoke-direct {v7, v8}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;)V

    throw v7
.end method

.method private checkBasicConstraints(Ljava/security/cert/X509Certificate;Ljava/util/Set;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string/jumbo v1, "2.5.29.19"

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "End user tried to act as a CA"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_0
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_2

    if-gtz p3, :cond_1

    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "Violated path length constraints"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_1
    add-int/lit8 p3, p3, -0x1

    :cond_2
    if-le p3, v0, :cond_3

    move p3, v0

    :cond_3
    return p3
.end method

.method private checkExtensions(Ljava/security/cert/X509Certificate;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lsun/security/validator/SimpleValidator;->checkBasicConstraints(Ljava/security/cert/X509Certificate;Ljava/util/Set;I)I

    move-result v1

    invoke-direct {p0, p1, v0}, Lsun/security/validator/SimpleValidator;->checkKeyUsage(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    invoke-direct {p0, p1, v0}, Lsun/security/validator/SimpleValidator;->checkNetscapeCertType(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lsun/security/validator/ValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Certificate contains unknown critical extensions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v2, v3, v4, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v2

    :cond_1
    return v1
.end method

.method private checkKeyUsage(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
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

    const-string/jumbo v1, "2.5.29.15"

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v1, "2.5.29.37"

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "Wrong key usage: expected keyCertSign"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    :cond_1
    return-void
.end method

.method private checkNetscapeCertType(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
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

    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v1, "tls client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v1, "tls server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string/jumbo v0, "ssl_ca"

    invoke-static {p1, v0}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string/jumbo v1, "Invalid Netscape CertType extension for SSL CA certificate"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    :cond_2
    const-string/jumbo v0, "2.16.840.1.113730.1.1"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v1, "code signing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v1, "jce signing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const-string/jumbo v0, "object_signing_ca"

    invoke-static {p1, v0}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string/jumbo v1, "Invalid Netscape CertType extension for code signing CA certificate"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    :cond_5
    const-string/jumbo v0, "2.16.840.1.113730.1.1"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x1

    :try_start_0
    instance-of v9, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v9, :cond_0

    move-object v0, p0

    nop

    nop

    move-object v1, v0

    sget-object v7, Lsun/security/validator/SimpleValidator;->OBJID_NETSCAPE_CERT_TYPE:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v7}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v4

    check-cast v4, Lsun/security/x509/NetscapeCertTypeExtension;

    if-nez v4, :cond_2

    return v10

    :cond_0
    const-string/jumbo v9, "2.16.840.1.113730.1.1"

    invoke-virtual {p0, v9}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_1

    return v10

    :cond_1
    new-instance v6, Lsun/security/util/DerInputStream;

    invoke-direct {v6, v5}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v3

    new-instance v9, Lsun/security/util/DerValue;

    invoke-direct {v9, v3}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v9}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v9

    invoke-virtual {v9}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v3

    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension;

    invoke-direct {v4, v3}, Lsun/security/x509/NetscapeCertTypeExtension;-><init>([B)V

    :cond_2
    invoke-virtual {v4, p1}, Lsun/security/x509/NetscapeCertTypeExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    return v9

    :catch_0
    move-exception v2

    const/4 v9, 0x0

    return v9
.end method

.method private getTrustedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    iget-object v6, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    return-object v7

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v4

    :cond_3
    return-object v7
.end method


# virtual methods
.method engineValidate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/AlgorithmConstraints;",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v12, v0

    if-nez v12, :cond_1

    :cond_0
    new-instance v12, Ljava/security/cert/CertificateException;

    const-string/jumbo v13, "null or zero-length certificate chain"

    invoke-direct {v12, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    invoke-direct/range {p0 .. p1}, Lsun/security/validator/SimpleValidator;->buildTrustedChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    iget-object v5, p0, Lsun/security/validator/SimpleValidator;->validationDate:Ljava/util/Date;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    :cond_2
    new-instance v11, Lsun/security/provider/certpath/UntrustedChecker;

    invoke-direct {v11}, Lsun/security/provider/certpath/UntrustedChecker;-><init>()V

    new-instance v1, Ljava/security/cert/TrustAnchor;

    move-object/from16 v0, p1

    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    aget-object v12, p1, v12

    const/4 v13, 0x0

    invoke-direct {v1, v12, v13}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    new-instance v6, Lsun/security/provider/certpath/AlgorithmChecker;

    invoke-direct {v6, v1}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    new-instance v2, Lsun/security/provider/certpath/AlgorithmChecker;

    move-object/from16 v0, p3

    invoke-direct {v2, v1, v0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;)V

    :cond_3
    move-object/from16 v0, p1

    array-length v12, v0

    add-int/lit8 v10, v12, -0x1

    move-object/from16 v0, p1

    array-length v12, v0

    add-int/lit8 v8, v12, -0x2

    :goto_0
    if-ltz v8, :cond_8

    add-int/lit8 v12, v8, 0x1

    aget-object v9, p1, v12

    aget-object v3, p1, v8

    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Lsun/security/provider/certpath/UntrustedChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v6, v3, v12}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v2, v3, v12}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    iget-object v12, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v13, "code signing"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v13, "jce signing"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v3, v5}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    :cond_5
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    new-instance v12, Lsun/security/validator/ValidatorException;

    sget-object v13, Lsun/security/validator/ValidatorException;->T_NAME_CHAINING:Ljava/lang/Object;

    invoke-direct {v12, v13, v3}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v12

    :catch_0
    move-exception v4

    new-instance v12, Lsun/security/validator/ValidatorException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Untrusted certificate: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lsun/security/validator/ValidatorException;->T_UNTRUSTED_CERT:Ljava/lang/Object;

    invoke-direct {v12, v13, v14, v3, v4}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    throw v12

    :catch_1
    move-exception v4

    new-instance v12, Lsun/security/validator/ValidatorException;

    sget-object v13, Lsun/security/validator/ValidatorException;->T_ALGORITHM_DISABLED:Ljava/lang/Object;

    invoke-direct {v12, v13, v3, v4}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    throw v12

    :cond_6
    :try_start_2
    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v8, :cond_7

    invoke-direct {p0, v3, v10}, Lsun/security/validator/SimpleValidator;->checkExtensions(Ljava/security/cert/X509Certificate;I)I

    move-result v10

    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    :catch_2
    move-exception v7

    new-instance v12, Lsun/security/validator/ValidatorException;

    sget-object v13, Lsun/security/validator/ValidatorException;->T_SIGNATURE_ERROR:Ljava/lang/Object;

    invoke-direct {v12, v13, v3, v7}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    throw v12

    :cond_8
    return-object p1
.end method

.method public getTrustedCertificates()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/validator/SimpleValidator;->trustedCerts:Ljava/util/Collection;

    return-object v0
.end method
