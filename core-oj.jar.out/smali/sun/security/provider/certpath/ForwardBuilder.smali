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

    .prologue
    .line 64
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    .line 62
    return-void
.end method

.method constructor <init>(Lsun/security/provider/certpath/PKIX$BuilderParams;Z)V
    .locals 5
    .param p1, "buildParams"    # Lsun/security/provider/certpath/PKIX$BuilderParams;
    .param p2, "searchAllCertStores"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/Builder;-><init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V

    .line 73
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    .line 84
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    .line 85
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    .line 86
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    .line 87
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 88
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 89
    .local v2, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    .line 90
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_1
    new-instance v3, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;

    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    invoke-direct {v3, v4}, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;-><init>(Ljava/util/Set;)V

    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->comparator:Ljava/util/Comparator;

    .line 97
    iput-boolean p2, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    .line 80
    return-void
.end method

.method private getCerts(Lsun/security/x509/AuthorityInfoAccessExtension;Ljava/util/Collection;)Z
    .locals 8
    .param p1, "aiaExt"    # Lsun/security/x509/AuthorityInfoAccessExtension;
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

    .prologue
    .local p2, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const/4 v7, 0x0

    .line 359
    sget-boolean v6, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    if-nez v6, :cond_0

    .line 360
    return v7

    .line 362
    :cond_0
    invoke-virtual {p1}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    move-result-object v2

    .line 363
    .local v2, "adList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 364
    :cond_1
    return v7

    .line 367
    :cond_2
    const/4 v3, 0x0

    .line 368
    .local v3, "add":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ad$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AccessDescription;

    .line 369
    .local v0, "ad":Lsun/security/x509/AccessDescription;
    invoke-static {v0}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;

    move-result-object v4

    .line 370
    .local v4, "cs":Ljava/security/cert/CertStore;
    if-eqz v4, :cond_3

    .line 373
    :try_start_0
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-virtual {v4, v6}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v6

    .line 372
    invoke-interface {p2, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 374
    const/4 v3, 0x1

    .line 375
    iget-boolean v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_3

    .line 376
    const/4 v6, 0x1

    return v6

    .line 379
    :catch_0
    move-exception v5

    .line 380
    .local v5, "cse":Ljava/security/cert/CertStoreException;
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_3

    .line 381
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v7, "exception getting certs from CertStore:"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v0    # "ad":Lsun/security/x509/AccessDescription;
    .end local v4    # "cs":Ljava/security/cert/CertStore;
    .end local v5    # "cse":Ljava/security/cert/CertStoreException;
    :cond_4
    return v3
.end method

.method private getMatchingCACerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V
    .locals 11
    .param p1, "currentState"    # Lsun/security/provider/certpath/ForwardState;
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

    .prologue
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "caCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const/4 v10, -0x1

    .line 191
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_0

    .line 192
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v8, "ForwardBuilder.getMatchingCACerts()..."

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v2

    .line 200
    .local v2, "initialSize":I
    const/4 v4, 0x0

    .line 202
    .local v4, "sel":Ljava/security/cert/X509CertSelector;
    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 203
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v7}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    move-result v7

    const/4 v8, -0x2

    if-ne v7, v8, :cond_1

    .line 205
    return-void

    .line 211
    :cond_1
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_2

    .line 212
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v8, "ForwardBuilder.getMatchingCACerts(): ca is target"

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 215
    :cond_2
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    if-nez v7, :cond_3

    .line 217
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v7}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509CertSelector;

    .line 216
    iput-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    .line 229
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 230
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    invoke-virtual {p0}, Lsun/security/provider/certpath/Builder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    .line 233
    :cond_3
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    .line 289
    .local v4, "sel":Ljava/security/cert/X509CertSelector;
    :goto_0
    invoke-virtual {v4, v10}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    .line 291
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "trustedCert$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 292
    .local v5, "trustedCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4, v5}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 293
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_5

    .line 294
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v8, "ForwardBuilder.getMatchingCACerts: found matching trust anchor"

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 297
    :cond_5
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    if-nez v7, :cond_4

    .line 298
    return-void

    .line 236
    .end local v5    # "trustedCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "trustedCert$iterator":Ljava/util/Iterator;
    .local v4, "sel":Ljava/security/cert/X509CertSelector;
    :cond_6
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    if-nez v7, :cond_7

    .line 237
    new-instance v7, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-direct {v7}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    iput-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    .line 249
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 250
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-virtual {p0}, Lsun/security/provider/certpath/Builder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    .line 256
    :cond_7
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v8, p1, Lsun/security/provider/certpath/ForwardState;->issuerDN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v7, v8}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 264
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v8, p1, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    .line 263
    invoke-static {v7, v8}, Lsun/security/provider/certpath/CertPathHelper;->setPathToNames(Ljava/security/cert/X509CertSelector;Ljava/util/Set;)V

    .line 271
    iget-object v7, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v7}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v1

    .line 272
    .local v1, "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-virtual {v7, v1}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->parseAuthorityKeyIdentifierExtension(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V

    .line 277
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v8, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v8}, Lsun/security/x509/X509CertImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v8

    .line 278
    iget-object v9, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v9

    .line 277
    invoke-virtual {v7, v8, v9}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setValidityPeriod(Ljava/util/Date;Ljava/util/Date;)V

    .line 280
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    .local v4, "sel":Ljava/security/cert/X509CertSelector;
    goto :goto_0

    .line 307
    .end local v1    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .restart local v6    # "trustedCert$iterator":Ljava/util/Iterator;
    :cond_8
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    .line 313
    iget v7, p1, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    invoke-virtual {v4, v7}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    .line 322
    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v7

    if-nez v7, :cond_9

    .line 323
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$BuilderParams;->maxPathLength()I

    move-result v7

    if-ne v7, v10, :cond_d

    .line 327
    :cond_9
    :goto_1
    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    .line 326
    invoke-virtual {p0, v4, p2, p3, v7}, Lsun/security/provider/certpath/Builder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 328
    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    if-eqz v7, :cond_e

    .line 333
    :cond_a
    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v7

    if-nez v7, :cond_b

    sget-boolean v7, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    if-eqz v7, :cond_b

    .line 336
    iget-object v7, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v7}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    move-result-object v0

    .line 337
    .local v0, "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    if-eqz v0, :cond_b

    .line 338
    invoke-direct {p0, v0, p3}, Lsun/security/provider/certpath/ForwardBuilder;->getCerts(Lsun/security/x509/AuthorityInfoAccessExtension;Ljava/util/Collection;)Z

    .line 342
    .end local v0    # "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    :cond_b
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_c

    .line 343
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v7

    sub-int v3, v7, v2

    .line 344
    .local v3, "numCerts":I
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ForwardBuilder.getMatchingCACerts: found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 345
    const-string/jumbo v9, " CA certs"

    .line 344
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 189
    .end local v3    # "numCerts":I
    :cond_c
    return-void

    .line 324
    :cond_d
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$BuilderParams;->maxPathLength()I

    move-result v7

    iget v8, p1, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    if-le v7, v8, :cond_a

    goto :goto_1

    .line 329
    :cond_e
    return-void
.end method

.method private getMatchingEECerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V
    .locals 2
    .param p1, "currentState"    # Lsun/security/provider/certpath/ForwardState;
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

    .prologue
    .line 147
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "eeCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "ForwardBuilder.getMatchingEECerts()..."

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CertSelector;

    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    .line 164
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    .line 169
    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    invoke-virtual {p0}, Lsun/security/provider/certpath/Builder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    .line 179
    :cond_2
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    iget-boolean v1, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    invoke-virtual {p0, v0, p2, p3, v1}, Lsun/security/provider/certpath/Builder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    .line 145
    return-void
.end method


# virtual methods
.method addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
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

    .prologue
    .line 871
    .local p2, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 869
    return-void
.end method

.method getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;
    .locals 4
    .param p1, "currentState"    # Lsun/security/provider/certpath/State;
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

    .prologue
    .line 114
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    sget-object v2, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    .line 115
    sget-object v2, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "ForwardBuilder.getMatchingCerts()..."

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    move-object v1, p1

    .line 118
    check-cast v1, Lsun/security/provider/certpath/ForwardState;

    .line 125
    .local v1, "currState":Lsun/security/provider/certpath/ForwardState;
    new-instance v0, Ljava/util/TreeSet;

    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 130
    .local v0, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-direct {p0, v1, p2, v0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingEECerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V

    .line 133
    :cond_1
    invoke-direct {p0, v1, p2, v0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingCACerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V

    .line 135
    return-object v0
.end method

.method isPathCompleted(Ljava/security/cert/X509Certificate;)Z
    .locals 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v8, 0x1

    .line 798
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 799
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 800
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 801
    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 802
    return v8

    .line 807
    :cond_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 808
    .local v4, "principal":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 810
    .local v5, "publicKey":Ljava/security/PublicKey;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 811
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 810
    if-eqz v6, :cond_2

    .line 812
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 814
    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 815
    return v8

    .line 821
    :cond_2
    if-eqz v4, :cond_0

    .line 822
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 827
    invoke-static {v5}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 835
    :try_start_0
    iget-object v6, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 836
    iget-object v6, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 855
    :goto_1
    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 856
    return v8

    .line 838
    :cond_3
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 840
    :catch_0
    move-exception v3

    .line 841
    .local v3, "ike":Ljava/security/InvalidKeyException;
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_0

    .line 842
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v7, "ForwardBuilder.isPathCompleted() invalid DSA key found"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 846
    .end local v3    # "ike":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v2

    .line 847
    .local v2, "e":Ljava/security/GeneralSecurityException;
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_0

    .line 848
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v7, "ForwardBuilder.isPathCompleted() unexpected exception"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 859
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .end local v4    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local v5    # "publicKey":Ljava/security/PublicKey;
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

    .prologue
    .line 880
    .local p1, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 879
    return-void
.end method

.method verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    .locals 14
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "currentState"    # Lsun/security/provider/certpath/State;
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

    .prologue
    .line 660
    .local p3, "certPathList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 661
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ForwardBuilder.verifyCert(SN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 662
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 663
    const-string/jumbo v2, "\n  Issuer: "

    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 663
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 663
    const-string/jumbo v2, ")"

    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 664
    const-string/jumbo v2, "\n  Subject: "

    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 664
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 664
    const-string/jumbo v2, ")"

    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v10, p2

    .line 667
    check-cast v10, Lsun/security/provider/certpath/ForwardState;

    .line 670
    .local v10, "currState":Lsun/security/provider/certpath/ForwardState;
    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->untrustedChecker:Lsun/security/provider/certpath/UntrustedChecker;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lsun/security/provider/certpath/UntrustedChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    .line 676
    if-eqz p3, :cond_3

    .line 677
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "cpListCert$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 678
    .local v8, "cpListCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p1, v8}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_2

    .line 680
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "loop detected!!"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 682
    :cond_2
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "loop detected"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    .end local v8    # "cpListCert":Ljava/security/cert/X509Certificate;
    .end local v9    # "cpListCert$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 691
    .local v11, "isTrustedCert":Z
    if-nez v11, :cond_8

    .line 697
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v13

    .line 698
    .local v13, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v13, :cond_4

    .line 699
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v13

    .line 701
    :cond_4
    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "checker$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/PKIXCertPathChecker;

    .line 702
    .local v6, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v6, p1, v13}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    goto :goto_0

    .line 711
    .end local v6    # "checker":Ljava/security/cert/PKIXCertPathChecker;
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

    .line 712
    .restart local v6    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v6}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    move-result v0

    if-nez v0, :cond_6

    .line 713
    invoke-virtual {v6}, Ljava/security/cert/PKIXCertPathChecker;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v12

    .line 714
    .local v12, "supportedExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v12, :cond_6

    .line 715
    invoke-interface {v13, v12}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 724
    .end local v6    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v12    # "supportedExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 725
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 726
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 727
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 728
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 729
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 730
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 731
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 732
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 733
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 735
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 736
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 737
    const-string/jumbo v1, "Unrecognized critical extension(s)"

    .line 738
    sget-object v5, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    .line 737
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 736
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 746
    .end local v7    # "checker$iterator":Ljava/util/Iterator;
    .end local v13    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {v10}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 747
    return-void

    .line 751
    :cond_9
    if-nez v11, :cond_b

    .line 753
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 754
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "cert is NOT a CA cert"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_a
    invoke-static {p1}, Lsun/security/provider/certpath/KeyChecker;->verifyCAKeyUsage(Ljava/security/cert/X509Certificate;)V

    .line 774
    :cond_b
    invoke-virtual {v10}, Lsun/security/provider/certpath/ForwardState;->keyParamsNeeded()Z

    move-result v0

    if-nez v0, :cond_c

    .line 775
    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 776
    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 777
    iget-object v2, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v2

    .line 776
    invoke-virtual {v0, v1, v2}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 658
    :cond_c
    :goto_2
    return-void

    .line 779
    :cond_d
    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;)V

    goto :goto_2
.end method
