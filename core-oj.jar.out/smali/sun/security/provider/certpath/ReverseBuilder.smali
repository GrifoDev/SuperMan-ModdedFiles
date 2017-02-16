.class Lsun/security/provider/certpath/ReverseBuilder;
.super Lsun/security/provider/certpath/Builder;
.source "ReverseBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;
    }
.end annotation


# instance fields
.field private debug:Lsun/security/util/Debug;

.field private final initPolicies:Ljava/util/Set;
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
.method constructor <init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V
    .locals 3
    .param p1, "buildParams"    # Lsun/security/provider/certpath/PKIX$BuilderParams;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/Builder;-><init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V

    .line 74
    const-string/jumbo v1, "certpath"

    invoke-static {v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    .line 86
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    move-result-object v0

    .line 87
    .local v0, "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lsun/security/provider/certpath/ReverseBuilder;->initPolicies:Ljava/util/Set;

    .line 88
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lsun/security/provider/certpath/ReverseBuilder;->initPolicies:Ljava/util/Set;

    const-string/jumbo v2, "2.5.29.32.0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lsun/security/provider/certpath/ReverseBuilder;->initPolicies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private getMatchingCACerts(Lsun/security/provider/certpath/ReverseState;Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .param p1, "currentState"    # Lsun/security/provider/certpath/ReverseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/ReverseState;",
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
            Ljava/security/cert/CertificateException;,
            Ljava/security/cert/CertStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 203
    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 208
    .local v2, "sel":Ljava/security/cert/X509CertSelector;
    iget-object v4, p1, Lsun/security/provider/certpath/ReverseState;->subjectDN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2, v4}, Ljava/security/cert/X509CertSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 213
    iget-object v4, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v4}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    .line 220
    iget-object v4, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v4}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    move-result-object v3

    .line 221
    .local v3, "subject":[B
    if-eqz v3, :cond_3

    .line 222
    invoke-virtual {v2, v6, v3}, Ljava/security/cert/X509CertSelector;->addPathToName(I[B)V

    .line 234
    :cond_0
    :goto_0
    iget v4, p1, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    if-nez v4, :cond_1

    .line 235
    invoke-virtual {p0}, Lsun/security/provider/certpath/Builder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    .line 251
    :cond_1
    invoke-virtual {v2, v5}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v1, "reverseCerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x1

    invoke-virtual {p0, v2, p2, v1, v4}, Lsun/security/provider/certpath/Builder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    .line 258
    new-instance v4, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;

    invoke-direct {v4, p0}, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;-><init>(Lsun/security/provider/certpath/ReverseBuilder;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_2

    .line 261
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ReverseBuilder.getMatchingCACerts got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 262
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 261
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 262
    const-string/jumbo v6, " certs."

    .line 261
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 263
    :cond_2
    return-object v1

    .line 224
    .end local v1    # "reverseCerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    :cond_3
    iget-object v4, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v4}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 225
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    .line 226
    invoke-virtual {v2, v6, v4}, Ljava/security/cert/X509CertSelector;->addPathToName(I[B)V

    goto :goto_0
.end method

.method private getMatchingEECerts(Lsun/security/provider/certpath/ReverseState;Ljava/util/List;)Ljava/util/Collection;
    .locals 5
    .param p1, "currentState"    # Lsun/security/provider/certpath/ReverseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/ReverseState;",
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
    .line 146
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    iget-object v2, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v2}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CertSelector;

    .line 151
    .local v1, "sel":Ljava/security/cert/X509CertSelector;
    iget-object v2, p1, Lsun/security/provider/certpath/ReverseState;->subjectDN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 156
    iget-object v2, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    .line 161
    iget v2, p1, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    if-nez v2, :cond_0

    .line 162
    invoke-virtual {p0}, Lsun/security/provider/certpath/Builder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    .line 178
    :cond_0
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    .line 181
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 182
    .local v0, "eeCerts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p2, v0, v2}, Lsun/security/provider/certpath/Builder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    .line 184
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ReverseBuilder.getMatchingEECerts got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 186
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 186
    const-string/jumbo v4, " certs."

    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 188
    :cond_1
    return-object v0
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
    .line 540
    .local p2, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 539
    return-void
.end method

.method getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;
    .locals 4
    .param p1, "currState"    # Lsun/security/provider/certpath/State;
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
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    move-object v1, p1

    .line 111
    check-cast v1, Lsun/security/provider/certpath/ReverseState;

    .line 113
    .local v1, "currentState":Lsun/security/provider/certpath/ReverseState;
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "In ReverseBuilder.getMatchingCerts."

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-direct {p0, v1, p2}, Lsun/security/provider/certpath/ReverseBuilder;->getMatchingEECerts(Lsun/security/provider/certpath/ReverseState;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    .line 126
    .local v0, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v1, p2}, Lsun/security/provider/certpath/ReverseBuilder;->getMatchingCACerts(Lsun/security/provider/certpath/ReverseState;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 128
    return-object v0
.end method

.method isPathCompleted(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 529
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 549
    .local p1, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 548
    return-void
.end method

.method verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    .locals 25
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "currState"    # Lsun/security/provider/certpath/State;
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
    .line 346
    .local p3, "certPathList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ReverseBuilder.verifyCert(SN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 348
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v4

    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 349
    const-string/jumbo v4, "\n  Subject: "

    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 349
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 349
    const-string/jumbo v4, ")"

    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v19, p2

    .line 352
    check-cast v19, Lsun/security/provider/certpath/ReverseState;

    .line 355
    .local v19, "currentState":Lsun/security/provider/certpath/ReverseState;
    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/ReverseState;->isInitial()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    return-void

    .line 360
    :cond_1
    move-object/from16 v0, v19

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->untrustedChecker:Lsun/security/provider/certpath/UntrustedChecker;

    .line 361
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 360
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lsun/security/provider/certpath/UntrustedChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    .line 373
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 401
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 404
    .local v10, "finalCert":Z
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    const/4 v13, 0x1

    .line 407
    .local v13, "caCert":Z
    :goto_0
    if-nez v10, :cond_12

    .line 410
    if-nez v13, :cond_b

    .line 411
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "cert is NOT a CA cert"

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    .end local v10    # "finalCert":Z
    .end local v13    # "caCert":Z
    :cond_3
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v23, "reverseCertList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "c$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 376
    .local v11, "c":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 379
    .end local v11    # "c":Ljava/security/cert/X509Certificate;
    :cond_4
    const/16 v21, 0x0

    .line 380
    .local v21, "policyMappingFound":Z
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "cpListCert$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    .line 381
    .local v16, "cpListCert":Ljava/security/cert/X509Certificate;
    invoke-static/range {v16 .. v16}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v18

    .line 383
    .local v18, "cpListCertImpl":Lsun/security/x509/X509CertImpl;
    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/X509CertImpl;->getPolicyMappingsExtension()Lsun/security/x509/PolicyMappingsExtension;

    move-result-object v22

    .line 384
    .local v22, "policyMappingsExt":Lsun/security/x509/PolicyMappingsExtension;
    if-eqz v22, :cond_6

    .line 385
    const/16 v21, 0x1

    .line 387
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_7

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "policyMappingFound = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 389
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    move-result v2

    if-nez v2, :cond_8

    .line 391
    if-nez v21, :cond_5

    .line 392
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_9

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "loop detected!!"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 394
    :cond_9
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "loop detected"

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    .end local v12    # "c$iterator":Ljava/util/Iterator;
    .end local v16    # "cpListCert":Ljava/security/cert/X509Certificate;
    .end local v17    # "cpListCert$iterator":Ljava/util/Iterator;
    .end local v18    # "cpListCertImpl":Lsun/security/x509/X509CertImpl;
    .end local v21    # "policyMappingFound":Z
    .end local v22    # "policyMappingsExt":Lsun/security/x509/PolicyMappingsExtension;
    .end local v23    # "reverseCertList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v10    # "finalCert":Z
    :cond_a
    const/4 v13, 0x0

    .restart local v13    # "caCert":Z
    goto/16 :goto_0

    .line 416
    :cond_b
    move-object/from16 v0, v19

    iget v2, v0, Lsun/security/provider/certpath/ReverseState;->remainingCACerts:I

    if-gtz v2, :cond_c

    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 425
    :cond_c
    invoke-static/range {p1 .. p1}, Lsun/security/provider/certpath/KeyChecker;->verifyCAKeyUsage(Ljava/security/cert/X509Certificate;)V

    .line 442
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->revocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, v19

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->revChecker:Lsun/security/provider/certpath/RevocationChecker;

    if-eqz v2, :cond_e

    .line 443
    move-object/from16 v0, v19

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->revChecker:Lsun/security/provider/certpath/RevocationChecker;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lsun/security/provider/certpath/RevocationChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    .line 447
    :cond_e
    if-nez v10, :cond_13

    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 464
    :cond_f
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v9

    .line 466
    .local v9, "certImpl":Lsun/security/x509/X509CertImpl;
    move-object/from16 v0, v19

    iget v2, v0, Lsun/security/provider/certpath/ReverseState;->certIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/ReverseBuilder;->initPolicies:Ljava/util/Set;

    .line 467
    move-object/from16 v0, v19

    iget v4, v0, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    move-object/from16 v0, v19

    iget v5, v0, Lsun/security/provider/certpath/ReverseState;->policyMapping:I

    .line 468
    move-object/from16 v0, v19

    iget v6, v0, Lsun/security/provider/certpath/ReverseState;->inhibitAnyPolicy:I

    .line 469
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyQualifiersRejected()Z

    move-result v7

    move-object/from16 v0, v19

    iget-object v8, v0, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 465
    invoke-static/range {v2 .. v10}, Lsun/security/provider/certpath/PolicyChecker;->processPolicies(ILjava/util/Set;IIIZLsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/x509/X509CertImpl;Z)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 475
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v24

    .line 476
    .local v24, "unresolvedCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v24, :cond_10

    .line 477
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v24

    .line 483
    :cond_10
    move-object/from16 v0, v19

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->algorithmChecker:Lsun/security/provider/certpath/AlgorithmChecker;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    .line 485
    move-object/from16 v0, v19

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "checker$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/cert/PKIXCertPathChecker;

    .line 486
    .local v14, "checker":Ljava/security/cert/PKIXCertPathChecker;
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    goto :goto_2

    .line 417
    .end local v9    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v14    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v15    # "checker$iterator":Ljava/util/Iterator;
    .end local v24    # "unresolvedCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 418
    const-string/jumbo v3, "pathLenConstraint violated, path too long"

    .line 419
    sget-object v7, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    .line 418
    const/4 v4, 0x0

    .line 419
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 417
    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2

    .line 433
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 434
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "target certificate constraints check failed"

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    :cond_13
    move-object/from16 v0, v19

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    if-eqz v2, :cond_f

    .line 450
    :try_start_0
    move-object/from16 v0, v19

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lsun/security/x509/NameConstraintsExtension;->verify(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 451
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 452
    const-string/jumbo v3, "name constraints check failed"

    .line 453
    sget-object v7, Ljava/security/cert/PKIXReason;->INVALID_NAME:Ljava/security/cert/PKIXReason;

    .line 452
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 451
    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :catch_0
    move-exception v20

    .line 456
    .local v20, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 493
    .end local v20    # "ioe":Ljava/io/IOException;
    .restart local v9    # "certImpl":Lsun/security/x509/X509CertImpl;
    .restart local v15    # "checker$iterator":Ljava/util/Iterator;
    .restart local v24    # "unresolvedCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_14
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 494
    sget-object v2, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 495
    sget-object v2, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 496
    sget-object v2, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 497
    sget-object v2, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 498
    sget-object v2, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 499
    sget-object v2, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 500
    sget-object v2, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 501
    sget-object v2, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 502
    sget-object v2, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 504
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 505
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 506
    const-string/jumbo v3, "Unrecognized critical extension(s)"

    .line 507
    sget-object v7, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    .line 506
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 505
    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2

    .line 513
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 514
    move-object/from16 v0, v19

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->pubKey:Ljava/security/PublicKey;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 344
    :goto_3
    return-void

    .line 516
    :cond_16
    move-object/from16 v0, v19

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->pubKey:Ljava/security/PublicKey;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    goto :goto_3
.end method
