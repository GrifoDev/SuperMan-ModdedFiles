.class public final Lsun/security/provider/certpath/PKIXCertPathValidator;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidator.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method

.method private static validate(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lsun/security/provider/certpath/UntrustedChecker;

    invoke-direct {v4}, Lsun/security/provider/certpath/UntrustedChecker;-><init>()V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lsun/security/provider/certpath/AlgorithmChecker;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lsun/security/provider/certpath/KeyChecker;

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v5

    invoke-direct {v4, v13, v5}, Lsun/security/provider/certpath/KeyChecker;-><init>(ILjava/security/cert/CertSelector;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lsun/security/provider/certpath/ConstraintsChecker;

    invoke-direct {v4, v13}, Lsun/security/provider/certpath/ConstraintsChecker;-><init>(I)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    const-string/jumbo v4, "2.5.29.32.0"

    const-string/jumbo v5, "2.5.29.32.0"

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    new-instance v3, Lsun/security/provider/certpath/PolicyChecker;

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anyPolicyInhibited()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyQualifiersRejected()Z

    move-result v9

    move v5, v13

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Lsun/security/provider/certpath/PolicyChecker;-><init>(Ljava/util/Set;IZZZZLsun/security/provider/certpath/PolicyNodeImpl;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Lsun/security/provider/certpath/BasicChecker;

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v4, v5, v6}, Lsun/security/provider/certpath/BasicChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/util/Date;Ljava/lang/String;Z)V

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/cert/PKIXCertPathChecker;

    instance-of v4, v14, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v4, :cond_0

    if-eqz v17, :cond_1

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v5, "Only one PKIXRevocationChecker can be specified"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/16 v17, 0x1

    instance-of v4, v14, Lsun/security/provider/certpath/RevocationChecker;

    if-eqz v4, :cond_0

    check-cast v14, Lsun/security/provider/certpath/RevocationChecker;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->revocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v17, :cond_4

    :cond_3
    :goto_1
    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5, v12}, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/util/List;Ljava/util/List;)V

    new-instance v4, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v3}, Lsun/security/provider/certpath/PolicyChecker;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v5

    invoke-virtual {v11}, Lsun/security/provider/certpath/BasicChecker;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v4

    :cond_4
    new-instance v4, Lsun/security/provider/certpath/RevocationChecker;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lsun/security/provider/certpath/RevocationChecker;-><init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static validate(Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_0

    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "PKIXCertPathValidator.engineValidate()..."

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v15, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-direct {v15}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v15, v1}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setValidityPeriod(Ljava/util/Date;Ljava/util/Date;)V

    :try_start_0
    invoke-static {v12}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v13

    invoke-virtual {v13}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v1

    invoke-virtual {v15, v1}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->parseAuthorityKeyIdentifierExtension(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v16

    if-eqz v16, :cond_6

    if-eqz v15, :cond_3

    invoke-virtual/range {v15 .. v16}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_4

    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "YES - try this trustedCert"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "anchor.getTrustedCert().getSubjectX500Principal() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_4
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v7, v0}, Lsun/security/provider/certpath/PKIXCertPathValidator;->validate(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    return-object v1

    :cond_5
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2

    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "NO - don\'t try this trustedCert"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_4

    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "PKIXCertPathValidator.engineValidate(): anchor.getTrustedCert() == null"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v10

    move-object v14, v10

    goto :goto_1

    :cond_7
    if-eqz v14, :cond_8

    throw v14

    :cond_8
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Path does not chain with any of the trust anchors"

    sget-object v6, Ljava/security/cert/PKIXReason;->NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    :catch_1
    move-exception v11

    goto/16 :goto_0
.end method


# virtual methods
.method public engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .locals 1

    new-instance v0, Lsun/security/provider/certpath/RevocationChecker;

    invoke-direct {v0}, Lsun/security/provider/certpath/RevocationChecker;-><init>()V

    return-object v0
.end method

.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-static {p1, p2}, Lsun/security/provider/certpath/PKIX;->checkParams(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Lsun/security/provider/certpath/PKIX$ValidatorParams;

    move-result-object v0

    invoke-static {v0}, Lsun/security/provider/certpath/PKIXCertPathValidator;->validate(Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;

    move-result-object v1

    return-object v1
.end method
