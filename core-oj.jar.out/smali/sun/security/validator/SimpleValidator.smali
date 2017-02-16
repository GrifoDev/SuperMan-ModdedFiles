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

    .prologue
    .line 74
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    .line 73
    sput-object v0, Lsun/security/validator/SimpleValidator;->OBJID_NETSCAPE_CERT_TYPE:Lsun/security/util/ObjectIdentifier;

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .param p1, "variant"    # Ljava/lang/String;
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

    .prologue
    .line 98
    .local p2, "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const-string/jumbo v4, "Simple"

    invoke-direct {p0, v4, p1}, Lsun/security/validator/Validator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-object p2, p0, Lsun/security/validator/SimpleValidator;->trustedCerts:Ljava/util/Collection;

    .line 101
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 100
    iput-object v4, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    .line 102
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 103
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 104
    .local v3, "principal":Ljavax/security/auth/x500/X500Principal;
    iget-object v4, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 105
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-nez v2, :cond_0

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v4, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "principal":Ljavax/security/auth/x500/X500Principal;
    :cond_1
    return-void
.end method

.method private buildTrustedChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Ljava/util/ArrayList;

    array-length v7, p1

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v0, "c":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_1

    .line 363
    aget-object v1, p1, v2

    .line 364
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v1}, Lsun/security/validator/SimpleValidator;->getTrustedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 365
    .local v6, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_0

    .line 366
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v7, Lsun/security/validator/SimpleValidator;->CHAIN0:[Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/X509Certificate;

    return-object v7

    .line 369
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_1
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    aget-object v1, p1, v7

    .line 374
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 375
    .local v5, "subject":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 376
    .local v3, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 377
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz v4, :cond_2

    .line 378
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 379
    .restart local v6    # "trustedCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v7, Lsun/security/validator/SimpleValidator;->CHAIN0:[Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/X509Certificate;

    return-object v7

    .line 384
    .end local v6    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_2
    new-instance v7, Lsun/security/validator/ValidatorException;

    sget-object v8, Lsun/security/validator/ValidatorException;->T_NO_TRUST_ANCHOR:Ljava/lang/Object;

    invoke-direct {v7, v8}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;)V

    throw v7
.end method

.method private checkBasicConstraints(Ljava/security/cert/X509Certificate;Ljava/util/Set;I)I
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "maxPathLen"    # I
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

    .prologue
    .line 303
    .local p2, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "2.5.29.19"

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    .line 306
    .local v0, "constraints":I
    if-gez v0, :cond_0

    .line 307
    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "End user tried to act as a CA"

    .line 308
    sget-object v3, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    .line 307
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 313
    :cond_0
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 314
    if-gtz p3, :cond_1

    .line 315
    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "Violated path length constraints"

    .line 316
    sget-object v3, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    .line 315
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 319
    :cond_1
    add-int/lit8 p3, p3, -0x1

    .line 322
    :cond_2
    if-le p3, v0, :cond_3

    .line 323
    move p3, v0

    .line 326
    :cond_3
    return p3
.end method

.method private checkExtensions(Ljava/security/cert/X509Certificate;I)I
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "maxPathLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 218
    .local v0, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 224
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lsun/security/validator/SimpleValidator;->checkBasicConstraints(Ljava/security/cert/X509Certificate;Ljava/util/Set;I)I

    move-result v1

    .line 227
    .local v1, "pathLenConstraint":I
    invoke-direct {p0, p1, v0}, Lsun/security/validator/SimpleValidator;->checkKeyUsage(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    .line 230
    invoke-direct {p0, p1, v0}, Lsun/security/validator/SimpleValidator;->checkNetscapeCertType(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    .line 232
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    new-instance v2, Lsun/security/validator/ValidatorException;

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Certificate contains unknown critical extensions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    sget-object v4, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    .line 233
    invoke-direct {v2, v3, v4, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v2

    .line 238
    :cond_1
    return v1
.end method

.method private checkKeyUsage(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
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

    .prologue
    .line 336
    .local p2, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "2.5.29.15"

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 338
    const-string/jumbo v1, "2.5.29.37"

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 342
    .local v0, "keyUsageInfo":[Z
    if-eqz v0, :cond_1

    .line 344
    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    if-nez v1, :cond_1

    .line 345
    :cond_0
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 346
    const-string/jumbo v2, "Wrong key usage: expected keyCertSign"

    .line 347
    sget-object v3, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    .line 345
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 334
    :cond_1
    return-void
.end method

.method private checkNetscapeCertType(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
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

    .prologue
    .line 243
    .local p2, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v1, "tls client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v1, "tls server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 245
    if-eqz v0, :cond_3

    .line 247
    :cond_1
    const-string/jumbo v0, "ssl_ca"

    invoke-static {p1, v0}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    new-instance v0, Lsun/security/validator/ValidatorException;

    .line 249
    const-string/jumbo v1, "Invalid Netscape CertType extension for SSL CA certificate"

    .line 251
    sget-object v2, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    .line 248
    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 253
    :cond_2
    const-string/jumbo v0, "2.16.840.1.113730.1.1"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_3
    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v1, "code signing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 255
    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v1, "jce signing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 254
    if-eqz v0, :cond_6

    .line 256
    :cond_4
    const-string/jumbo v0, "object_signing_ca"

    invoke-static {p1, v0}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 257
    new-instance v0, Lsun/security/validator/ValidatorException;

    .line 258
    const-string/jumbo v1, "Invalid Netscape CertType extension for code signing CA certificate"

    .line 260
    sget-object v2, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    .line 257
    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 262
    :cond_5
    const-string/jumbo v0, "2.16.840.1.113730.1.1"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
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
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 275
    :try_start_0
    instance-of v9, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v9, :cond_0

    .line 276
    move-object v0, p0

    nop

    nop

    move-object v1, v0

    .line 277
    .local v1, "certImpl":Lsun/security/x509/X509CertImpl;
    sget-object v7, Lsun/security/validator/SimpleValidator;->OBJID_NETSCAPE_CERT_TYPE:Lsun/security/util/ObjectIdentifier;

    .line 278
    .local v7, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v1, v7}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v4

    check-cast v4, Lsun/security/x509/NetscapeCertTypeExtension;

    .line 279
    .local v4, "ext":Lsun/security/x509/NetscapeCertTypeExtension;
    if-nez v4, :cond_2

    .line 280
    return v10

    .line 283
    .end local v1    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v4    # "ext":Lsun/security/x509/NetscapeCertTypeExtension;
    .end local v7    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_0
    const-string/jumbo v9, "2.16.840.1.113730.1.1"

    invoke-virtual {p0, v9}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 284
    .local v5, "extVal":[B
    if-nez v5, :cond_1

    .line 285
    return v10

    .line 287
    :cond_1
    new-instance v6, Lsun/security/util/DerInputStream;

    invoke-direct {v6, v5}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 288
    .local v6, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v3

    .line 289
    .local v3, "encoded":[B
    new-instance v9, Lsun/security/util/DerValue;

    invoke-direct {v9, v3}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v9}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v9

    invoke-virtual {v9}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v3

    .line 291
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension;

    invoke-direct {v4, v3}, Lsun/security/x509/NetscapeCertTypeExtension;-><init>([B)V

    .line 293
    .end local v3    # "encoded":[B
    .end local v5    # "extVal":[B
    .end local v6    # "in":Lsun/security/util/DerInputStream;
    .restart local v4    # "ext":Lsun/security/x509/NetscapeCertTypeExtension;
    :cond_2
    invoke-virtual {v4, p1}, Lsun/security/x509/NetscapeCertTypeExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 294
    .local v8, "val":Ljava/lang/Boolean;
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    return v9

    .line 295
    .end local v4    # "ext":Lsun/security/x509/NetscapeCertTypeExtension;
    .end local v8    # "val":Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Ljava/io/IOException;
    const/4 v9, 0x0

    return v9
.end method

.method private getTrustedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v7, 0x0

    .line 394
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 395
    .local v2, "certSubjectName":Ljava/security/Principal;
    iget-object v6, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 396
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-nez v3, :cond_0

    .line 397
    return-object v7

    .line 400
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 401
    .local v0, "certIssuerName":Ljava/security/Principal;
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 403
    .local v1, "certPublicKey":Ljava/security/PublicKey;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "mycert$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 404
    .local v4, "mycert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 405
    return-object p1

    .line 407
    :cond_2
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 410
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 415
    return-object v4

    .line 417
    .end local v4    # "mycert":Ljava/security/cert/X509Certificate;
    :cond_3
    return-object v7
.end method


# virtual methods
.method engineValidate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .locals 15
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p4, "parameter"    # Ljava/lang/Object;
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

    .prologue
    .line 128
    .local p2, "otherCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v12, v0

    if-nez v12, :cond_1

    .line 129
    :cond_0
    new-instance v12, Ljava/security/cert/CertificateException;

    .line 130
    const-string/jumbo v13, "null or zero-length certificate chain"

    .line 129
    invoke-direct {v12, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 134
    :cond_1
    invoke-direct/range {p0 .. p1}, Lsun/security/validator/SimpleValidator;->buildTrustedChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    .line 136
    iget-object v5, p0, Lsun/security/validator/SimpleValidator;->validationDate:Ljava/util/Date;

    .line 137
    .local v5, "date":Ljava/util/Date;
    if-nez v5, :cond_2

    .line 138
    new-instance v5, Ljava/util/Date;

    .end local v5    # "date":Ljava/util/Date;
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 142
    .restart local v5    # "date":Ljava/util/Date;
    :cond_2
    new-instance v11, Lsun/security/provider/certpath/UntrustedChecker;

    invoke-direct {v11}, Lsun/security/provider/certpath/UntrustedChecker;-><init>()V

    .line 145
    .local v11, "untrustedChecker":Lsun/security/provider/certpath/UntrustedChecker;
    new-instance v1, Ljava/security/cert/TrustAnchor;

    move-object/from16 v0, p1

    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    aget-object v12, p1, v12

    const/4 v13, 0x0

    invoke-direct {v1, v12, v13}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 146
    .local v1, "anchor":Ljava/security/cert/TrustAnchor;
    new-instance v6, Lsun/security/provider/certpath/AlgorithmChecker;

    invoke-direct {v6, v1}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    .line 149
    .local v6, "defaultAlgChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    const/4 v2, 0x0

    .line 150
    .local v2, "appAlgChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    if-eqz p3, :cond_3

    .line 151
    new-instance v2, Lsun/security/provider/certpath/AlgorithmChecker;

    .end local v2    # "appAlgChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    move-object/from16 v0, p3

    invoke-direct {v2, v1, v0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;)V

    .line 156
    :cond_3
    move-object/from16 v0, p1

    array-length v12, v0

    add-int/lit8 v10, v12, -0x1

    .line 157
    .local v10, "maxPathLength":I
    move-object/from16 v0, p1

    array-length v12, v0

    add-int/lit8 v8, v12, -0x2

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_8

    .line 158
    add-int/lit8 v12, v8, 0x1

    aget-object v9, p1, v12

    .line 159
    .local v9, "issuerCert":Ljava/security/cert/X509Certificate;
    aget-object v3, p1, v8

    .line 165
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Lsun/security/provider/certpath/UntrustedChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v6, v3, v12}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    .line 177
    if-eqz v2, :cond_4

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v2, v3, v12}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :cond_4
    iget-object v12, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v13, "code signing"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 187
    iget-object v12, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    const-string/jumbo v13, "jce signing"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 188
    invoke-virtual {v3, v5}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 192
    :cond_5
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    .line 193
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    .line 192
    invoke-virtual {v12, v13}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 194
    new-instance v12, Lsun/security/validator/ValidatorException;

    .line 195
    sget-object v13, Lsun/security/validator/ValidatorException;->T_NAME_CHAINING:Ljava/lang/Object;

    .line 194
    invoke-direct {v12, v13, v3}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v12

    .line 166
    :catch_0
    move-exception v4

    .line 167
    .local v4, "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v12, Lsun/security/validator/ValidatorException;

    .line 168
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

    .line 169
    sget-object v14, Lsun/security/validator/ValidatorException;->T_UNTRUSTED_CERT:Ljava/lang/Object;

    .line 167
    invoke-direct {v12, v13, v14, v3, v4}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    throw v12

    .line 180
    .end local v4    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :catch_1
    move-exception v4

    .line 181
    .restart local v4    # "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v12, Lsun/security/validator/ValidatorException;

    .line 182
    sget-object v13, Lsun/security/validator/ValidatorException;->T_ALGORITHM_DISABLED:Ljava/lang/Object;

    .line 181
    invoke-direct {v12, v13, v3, v4}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    throw v12

    .line 200
    .end local v4    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :cond_6
    :try_start_2
    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 207
    if-eqz v8, :cond_7

    .line 208
    invoke-direct {p0, v3, v10}, Lsun/security/validator/SimpleValidator;->checkExtensions(Ljava/security/cert/X509Certificate;I)I

    move-result v10

    .line 157
    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    .line 201
    :catch_2
    move-exception v7

    .line 202
    .local v7, "e":Ljava/security/GeneralSecurityException;
    new-instance v12, Lsun/security/validator/ValidatorException;

    .line 203
    sget-object v13, Lsun/security/validator/ValidatorException;->T_SIGNATURE_ERROR:Ljava/lang/Object;

    .line 202
    invoke-direct {v12, v13, v3, v7}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    throw v12

    .line 212
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "e":Ljava/security/GeneralSecurityException;
    .end local v9    # "issuerCert":Ljava/security/cert/X509Certificate;
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

    .prologue
    .line 116
    iget-object v0, p0, Lsun/security/validator/SimpleValidator;->trustedCerts:Ljava/util/Collection;

    return-object v0
.end method
