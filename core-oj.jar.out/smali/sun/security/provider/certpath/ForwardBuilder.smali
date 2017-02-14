.class Lsun/security/provider/certpath/ForwardBuilder;
.super Lsun/security/provider/certpath/Builder;
.source "ForwardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;
    }
.end annotation


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

.field private caTargetSelector:Ljava/security/cert/X509CertSelector;

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private eeSelector:Ljava/security/cert/X509CertSelector;

.field private searchAllCertStores:Z

.field trustAnchor:Ljava/security/cert/TrustAnchor;

.field private final trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

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

.field private final trustedSubjectDNs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lsun/security/util/Debug;
    .locals 1

    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor <init>(Lsun/security/provider/certpath/PKIX$BuilderParams;Z)V
    .locals 5

    invoke-direct {p0, p1}, Lsun/security/provider/certpath/Builder;-><init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;

    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    invoke-direct {v3, v4}, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;-><init>(Ljava/util/Set;)V

    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->comparator:Ljava/util/Comparator;

    iput-boolean p2, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    return-void
.end method

.method private getCerts(Lsun/security/x509/AuthorityInfoAccessExtension;Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/AuthorityInfoAccessExtension;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    sget-boolean v6, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    if-nez v6, :cond_0

    return v7

    :cond_0
    invoke-virtual {p1}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    return v7

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AccessDescription;

    invoke-static {v0}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;

    move-result-object v4

    if-eqz v4, :cond_3

    :try_start_0
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-virtual {v4, v6}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    iget-boolean v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_3

    const/4 v6, 0x1

    return v6

    :catch_0
    move-exception v5

    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_3

    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v7, "exception getting certs from CertStore:"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    return v3
.end method

.method private getMatchingCACerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/ForwardState;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, -0x1

    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_0

    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v8, "ForwardBuilder.getMatchingCACerts()..."

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v7}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    move-result v7

    const/4 v8, -0x2

    if-ne v7, v8, :cond_1

    return-void

    :cond_1
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_2

    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v8, "ForwardBuilder.getMatchingCACerts(): ca is target"

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    if-nez v7, :cond_3

    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v7}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509CertSelector;

    iput-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    invoke-virtual {p0}, Lsun/security/provider/certpath/Builder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    :cond_3
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    :goto_0
    invoke-virtual {v4, v10}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_5

    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v8, "ForwardBuilder.getMatchingCACerts: found matching trust anchor"

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_5
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    if-nez v7, :cond_4

    return-void

    :cond_6
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    if-nez v7, :cond_7

    new-instance v7, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-direct {v7}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    iput-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-virtual {p0}, Lsun/security/provider/certpath/Builder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    :cond_7
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v8, p1, Lsun/security/provider/certpath/ForwardState;->issuerDN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v7, v8}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v8, p1, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    invoke-static {v7, v8}, Lsun/security/provider/certpath/CertPathHelper;->setPathToNames(Ljava/security/cert/X509CertSelector;Ljava/util/Set;)V

    iget-object v7, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v7}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v1

    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-virtual {v7, v1}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->parseAuthorityKeyIdentifierExtension(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V

    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v8, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v8}, Lsun/security/x509/X509CertImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v8

    iget-object v9, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setValidityPeriod(Ljava/util/Date;Ljava/util/Date;)V

    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    goto :goto_0

    :cond_8
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    iget v7, p1, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    invoke-virtual {v4, v7}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$BuilderParams;->maxPathLength()I

    move-result v7

    if-ne v7, v10, :cond_d

    :cond_9
    :goto_1
    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    invoke-virtual {p0, v4, p2, p3, v7}, Lsun/security/provider/certpath/Builder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    if-eqz v7, :cond_e

    :cond_a
    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v7

    if-nez v7, :cond_b

    sget-boolean v7, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    if-eqz v7, :cond_b

    iget-object v7, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v7}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v0, p3}, Lsun/security/provider/certpath/ForwardBuilder;->getCerts(Lsun/security/x509/AuthorityInfoAccessExtension;Ljava/util/Collection;)Z

    :cond_b
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_c

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v7

    sub-int v3, v7, v2

    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ForwardBuilder.getMatchingCACerts: found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " CA certs"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$BuilderParams;->maxPathLength()I

    move-result v7

    iget v8, p1, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    if-le v7, v8, :cond_a

    goto :goto_1

    :cond_e
    return-void
.end method

.method private getMatchingEECerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/ForwardState;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "ForwardBuilder.getMatchingEECerts()..."

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    if-nez v0, :cond_2

    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CertSelector;

    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    invoke-virtual {p0}, Lsun/security/provider/certpath/Builder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    :cond_2
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    iget-boolean v1, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    invoke-virtual {p0, v0, p2, p3, v1}, Lsun/security/provider/certpath/Builder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    return-void
.end method


# virtual methods
.method addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    sget-object v2, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "ForwardBuilder.getMatchingCerts()..."

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    move-object v1, p1

    check-cast v1, Lsun/security/provider/certpath/ForwardState;

    new-instance v0, Ljava/util/TreeSet;

    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, p2, v0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingEECerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V

    :cond_1
    invoke-direct {p0, v1, p2, v0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingCACerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method isPathCompleted(Ljava/security/cert/X509Certificate;)Z
    .locals 9

    const/4 v8, 0x1

    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return v8

    :cond_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return v8

    :cond_2
    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return v8

    :cond_3
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_0

    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v7, "ForwardBuilder.isPathCompleted() invalid DSA key found"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_0

    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v7, "ForwardBuilder.isPathCompleted() unexpected exception"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    return v6
.end method

.method removeFinalCertFromPath(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    return-void
.end method

.method verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ForwardBuilder.verifyCert(SN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n  Issuer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n  Subject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v10, p2

    check-cast v10, Lsun/security/provider/certpath/ForwardState;

    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->untrustedChecker:Lsun/security/provider/certpath/UntrustedChecker;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lsun/security/provider/certpath/UntrustedChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1, v8}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_2

    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "loop detected!!"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "loop detected"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v13

    if-nez v13, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v13

    :cond_4
    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v6, p1, v13}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v6}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v6}, Ljava/security/cert/PKIXCertPathChecker;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-interface {v13, v12}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_7
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "Unrecognized critical extension(s)"

    sget-object v5, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    :cond_8
    invoke-virtual {v10}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-nez v11, :cond_b

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "cert is NOT a CA cert"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p1}, Lsun/security/provider/certpath/KeyChecker;->verifyCAKeyUsage(Ljava/security/cert/X509Certificate;)V

    :cond_b
    invoke-virtual {v10}, Lsun/security/provider/certpath/ForwardState;->keyParamsNeeded()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-void

    :cond_d
    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;)V

    goto :goto_2
.end method
