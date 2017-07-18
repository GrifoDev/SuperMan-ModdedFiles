.class public final Lsun/security/validator/PKIXValidator;
.super Lsun/security/validator/Validator;
.source "PKIXValidator.java"


# static fields
.field private static final TRY_VALIDATOR:Z = true

.field private static final checkTLSRevocation:Z


# instance fields
.field private certPathLength:I

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private final parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

.field private final plugin:Z

.field private final trustedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final trustedSubjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsun/security/action/GetBooleanAction;

    const-string/jumbo v1, "com.sun.net.ssl.checkRevocation"

    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lsun/security/validator/PKIXValidator;->checkTLSRevocation:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 9

    const-string/jumbo v7, "PKIX"

    invoke-direct {p0, v7, p1}, Lsun/security/validator/Validator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x1

    iput v7, p0, Lsun/security/validator/PKIXValidator;->certPathLength:I

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lsun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    :goto_2
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :try_start_0
    const-string/jumbo v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v7, "plugin code signing"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lsun/security/validator/PKIXValidator;->plugin:Z

    return-void

    :catch_0
    move-exception v5

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Internal error"

    invoke-direct {v7, v8, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 10
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

    const/4 v8, 0x0

    const-string/jumbo v7, "PKIX"

    invoke-direct {p0, v7, p1}, Lsun/security/validator/Validator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x1

    iput v7, p0, Lsun/security/validator/PKIXValidator;->certPathLength:I

    instance-of v7, p2, Ljava/util/Set;

    if-eqz v7, :cond_0

    move-object v7, p2

    check-cast v7, Ljava/util/Set;

    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    :goto_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    new-instance v7, Ljava/security/cert/TrustAnchor;

    invoke-direct {v7, v0, v8}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v7, Ljava/security/cert/PKIXBuilderParameters;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V

    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Lsun/security/validator/PKIXValidator;->setDefaultParameters(Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    :goto_3
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v3

    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    invoke-interface {v7, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    :try_start_1
    const-string/jumbo v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v7, "plugin code signing"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lsun/security/validator/PKIXValidator;->plugin:Z

    return-void

    :catch_1
    move-exception v4

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Internal error"

    invoke-direct {v7, v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private doBuild([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/PKIXBuilderParameters;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p3}, Lsun/security/validator/PKIXValidator;->setDate(Ljava/security/cert/PKIXBuilderParameters;)V

    new-instance v4, Ljava/security/cert/X509CertSelector;

    invoke-direct {v4}, Ljava/security/cert/X509CertSelector;-><init>()V

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v4, v6}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p3, v4}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string/jumbo v6, "Collection"

    new-instance v7, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v7, v1}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {v6, v7}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    const-string/jumbo v6, "PKIX"

    invoke-static {v6}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {v3}, Ljava/security/cert/PKIXCertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v6

    invoke-virtual {v3}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v7

    invoke-static {v6, v7}, Lsun/security/validator/PKIXValidator;->toArray(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;)[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v2

    new-instance v6, Lsun/security/validator/ValidatorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PKIX path building failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private doValidate([Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p2}, Lsun/security/validator/PKIXValidator;->setDate(Ljava/security/cert/PKIXBuilderParameters;)V

    const-string/jumbo v4, "PKIX"

    invoke-static {v4}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v3

    iget-object v4, p0, Lsun/security/validator/PKIXValidator;->factory:Ljava/security/cert/CertificateFactory;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v1

    array-length v4, p1

    iput v4, p0, Lsun/security/validator/PKIXValidator;->certPathLength:I

    invoke-virtual {v3, v1, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v4

    invoke-static {v1, v4}, Lsun/security/validator/PKIXValidator;->toArray(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;)[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    new-instance v4, Lsun/security/validator/ValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PKIX path validation failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private isSignatureValid(Ljava/util/List;Ljava/security/cert/X509Certificate;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    iget-boolean v3, p0, Lsun/security/validator/PKIXValidator;->plugin:Z

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;

    :try_start_0
    invoke-virtual {p2, v1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    return v3

    :cond_1
    return v4
.end method

.method private setDate(Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 1

    iget-object v0, p0, Lsun/security/validator/PKIXValidator;->validationDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method private setDefaultParameters(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "tls server"

    if-eq p1, v0, :cond_0

    const-string/jumbo v0, "tls client"

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lsun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    sget-boolean v1, Lsun/security/validator/PKIXValidator;->checkTLSRevocation:Z

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lsun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    goto :goto_0
.end method

.method private static toArray(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;)[Ljava/security/cert/X509Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Lsun/security/validator/ValidatorException;

    const-string/jumbo v4, "TrustAnchor must be specified as certificate"

    invoke-direct {v3, v4}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-object v2, v0, v3

    return-object v0
.end method


# virtual methods
.method engineValidate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .locals 17
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

    array-length v14, v0

    if-nez v14, :cond_1

    :cond_0
    new-instance v14, Ljava/security/cert/CertificateException;

    const-string/jumbo v15, "null or zero-length certificate chain"

    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v14}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/PKIXBuilderParameters;

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    new-instance v3, Lsun/security/provider/certpath/AlgorithmChecker;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/AlgorithmConstraints;)V

    invoke-virtual {v11, v3}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    :cond_2
    const/4 v12, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v6, v14, :cond_8

    aget-object v4, p1, v6

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    if-eqz v6, :cond_3

    invoke-virtual {v5, v12}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    invoke-interface {v14, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    invoke-interface {v14, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_4
    if-nez v6, :cond_6

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/security/cert/X509Certificate;

    const/4 v15, 0x0

    aget-object v15, p1, v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    return-object v14

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lsun/security/validator/PKIXValidator;->doBuild([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    move-result-object v14

    return-object v14

    :cond_6
    new-array v10, v6, [Ljava/security/cert/X509Certificate;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v10, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lsun/security/validator/PKIXValidator;->doValidate([Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    move-result-object v14

    return-object v14

    :cond_7
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-object v9, p1, v14

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    invoke-interface {v14, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9}, Lsun/security/validator/PKIXValidator;->isSignatureValid(Ljava/util/List;Ljava/security/cert/X509Certificate;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lsun/security/validator/PKIXValidator;->doValidate([Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    move-result-object v14

    return-object v14

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lsun/security/validator/PKIXValidator;->plugin:Z

    if-eqz v14, :cond_b

    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x1

    if-le v14, v15, :cond_a

    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    new-array v10, v14, [Ljava/security/cert/X509Certificate;

    array-length v14, v10

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v10, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v14, Ljava/security/cert/TrustAnchor;

    move-object/from16 v0, p1

    array-length v15, v0

    add-int/lit8 v15, v15, -0x1

    aget-object v15, p1, v15

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-static {v14}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/security/cert/PKIXParameters;->setTrustAnchors(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lsun/security/validator/PKIXValidator;->doValidate([Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    :cond_a
    new-instance v14, Lsun/security/validator/ValidatorException;

    sget-object v15, Lsun/security/validator/ValidatorException;->T_NO_TRUST_ANCHOR:Ljava/lang/Object;

    invoke-direct {v14, v15}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;)V

    throw v14

    :catch_0
    move-exception v7

    new-instance v14, Ljava/security/cert/CertificateException;

    invoke-direct {v14, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lsun/security/validator/PKIXValidator;->doBuild([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    move-result-object v14

    return-object v14
.end method

.method public getCertPathLength()I
    .locals 1

    iget v0, p0, Lsun/security/validator/PKIXValidator;->certPathLength:I

    return v0
.end method

.method public getParameters()Ljava/security/cert/PKIXBuilderParameters;
    .locals 1

    iget-object v0, p0, Lsun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    return-object v0
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

    iget-object v0, p0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    return-object v0
.end method
