.class public Ljava/security/cert/PKIXParameters;
.super Ljava/lang/Object;
.source "PKIXParameters.java"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# instance fields
.field private anyPolicyInhibited:Z

.field private certPathCheckers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field

.field private certSelector:Ljava/security/cert/CertSelector;

.field private certStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private date:Ljava/util/Date;

.field private explicitPolicyRequired:Z

.field private policyMappingInhibited:Z

.field private policyQualifiersRejected:Z

.field private revocationEnabled:Z

.field private sigProvider:Ljava/lang/String;

.field private unmodInitialPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unmodTrustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 7
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v5, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    .line 94
    iput-boolean v4, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    .line 95
    iput-boolean v4, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    .line 96
    iput-boolean v4, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    .line 97
    iput-boolean v5, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "the keystore parameter must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v3, "hashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 149
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 150
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 153
    .local v2, "cert":Ljava/security/cert/Certificate;
    instance-of v4, v2, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_1

    .line 154
    new-instance v4, Ljava/security/cert/TrustAnchor;

    check-cast v2, Ljava/security/cert/X509Certificate;

    .end local v2    # "cert":Ljava/security/cert/Certificate;
    invoke-direct {v4, v2, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    .end local v0    # "alias":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v3}, Ljava/security/cert/PKIXParameters;->setTrustAnchors(Ljava/util/Set;)V

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    .line 159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 160
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    .line 94
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    .line 95
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    .line 96
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    .line 97
    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    .line 120
    invoke-virtual {p0, p1}, Ljava/security/cert/PKIXParameters;->setTrustAnchors(Ljava/util/Set;)V

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    .line 118
    return-void
.end method


# virtual methods
.method public addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V
    .locals 2
    .param p1, "checker"    # Ljava/security/cert/PKIXCertPathChecker;

    .prologue
    .line 589
    if-eqz p1, :cond_0

    .line 590
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-virtual {p1}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_0
    return-void
.end method

.method public addCertStore(Ljava/security/cert/CertStore;)V
    .locals 1
    .param p1, "store"    # Ljava/security/cert/CertStore;

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 304
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 666
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXParameters;

    .line 669
    .local v2, "copy":Ljava/security/cert/PKIXParameters;
    iget-object v4, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 670
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v2, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    .line 672
    :cond_0
    iget-object v4, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 674
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 673
    iput-object v4, v2, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 675
    iget-object v4, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "checker$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    .line 676
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    iget-object v5, v2, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 677
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    .line 676
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 684
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v1    # "checker$iterator":Ljava/util/Iterator;
    .end local v2    # "copy":Ljava/security/cert/PKIXParameters;
    :catch_0
    move-exception v3

    .line 686
    .local v3, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/InternalError;

    invoke-virtual {v3}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 683
    .end local v3    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v2    # "copy":Ljava/security/cert/PKIXParameters;
    :cond_1
    return-object v2
.end method

.method public getCertPathCheckers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v2, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ck$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    .line 572
    .local v0, "ck":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 574
    .end local v0    # "ck":Ljava/security/cert/PKIXCertPathChecker;
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getCertStores()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 318
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 485
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 486
    return-object v1

    .line 488
    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getInitialPolicies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    return-object v0
.end method

.method public getPolicyQualifiersRejected()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    return v0
.end method

.method public getSigProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetCertConstraints()Ljava/security/cert/CertSelector;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 631
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    invoke-interface {v0}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertSelector;

    return-object v0

    .line 634
    :cond_0
    return-object v1
.end method

.method public getTrustAnchors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->unmodTrustAnchors:Ljava/util/Set;

    return-object v0
.end method

.method public isAnyPolicyInhibited()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    return v0
.end method

.method public isExplicitPolicyRequired()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    return v0
.end method

.method public isPolicyMappingInhibited()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    return v0
.end method

.method public isRevocationEnabled()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    return v0
.end method

.method public setAnyPolicyInhibited(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 415
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    .line 414
    return-void
.end method

.method public setCertPathCheckers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    if-eqz p1, :cond_1

    .line 548
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v2, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "checker$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    .line 550
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_0
    iput-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 545
    .end local v1    # "checker$iterator":Ljava/util/Iterator;
    .end local v2    # "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :goto_1
    return-void

    .line 554
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    goto :goto_1
.end method

.method public setCertStores(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    if-nez p1, :cond_0

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    .line 281
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/CertStore;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertStore;

    if-nez v1, :cond_1

    .line 287
    new-instance v1, Ljava/lang/ClassCastException;

    const-string/jumbo v2, "all elements of list must be of type java.security.cert.CertStore"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    goto :goto_0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 503
    if-eqz p1, :cond_0

    .line 504
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    .line 502
    .end local p1    # "date":Ljava/util/Date;
    :goto_0
    return-void

    .line 506
    .restart local p1    # "date":Ljava/util/Date;
    :cond_0
    const/4 p1, 0x0

    .local p1, "date":Ljava/util/Date;
    goto :goto_0
.end method

.method public setExplicitPolicyRequired(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 367
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    .line 366
    return-void
.end method

.method public setInitialPolicies(Ljava/util/Set;)V
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

    .prologue
    .line 251
    .local p1, "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 252
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 253
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    .line 252
    if-eqz v1, :cond_1

    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 255
    new-instance v1, Ljava/lang/ClassCastException;

    const-string/jumbo v2, "all elements of set must be of type java.lang.String"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 258
    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    .line 250
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 261
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    goto :goto_0
.end method

.method public setPolicyMappingInhibited(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    .line 390
    return-void
.end method

.method public setPolicyQualifiersRejected(Z)V
    .locals 0
    .param p1, "qualifiersRejected"    # Z

    .prologue
    .line 453
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    .line 452
    return-void
.end method

.method public setRevocationEnabled(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    .line 340
    return-void
.end method

.method public setSigProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "sigProvider"    # Ljava/lang/String;

    .prologue
    .line 615
    iput-object p1, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .locals 1
    .param p1, "selector"    # Ljava/security/cert/CertSelector;

    .prologue
    const/4 v0, 0x0

    .line 652
    if-eqz p1, :cond_0

    .line 653
    invoke-interface {p1}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertSelector;

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    .line 651
    :goto_0
    return-void

    .line 655
    :cond_0
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    goto :goto_0
.end method

.method public setTrustAnchors(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    if-nez p1, :cond_0

    .line 196
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "the trustAnchors parameters must be non-null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "the trustAnchors parameter must be non-empty"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/TrustAnchor;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/TrustAnchor;

    if-nez v1, :cond_2

    .line 205
    new-instance v1, Ljava/lang/ClassCastException;

    const-string/jumbo v2, "all elements of set must be of type java.security.cert.TrustAnchor"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 209
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodTrustAnchors:Ljava/util/Set;

    .line 193
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 696
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 697
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodTrustAnchors:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Trust Anchors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->unmodTrustAnchors:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    const-string/jumbo v2, "\n"

    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 706
    :cond_0
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 707
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 708
    const-string/jumbo v1, "  Initial Policy OIDs: any\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 716
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Validity Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Signature Provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Default Revocation Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Explicit Policy Required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Policy Mapping Inhibited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Any Policy Inhibited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Policy Qualifiers Rejected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Target Cert Constraints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Certification Path Checkers: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 730
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 729
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 730
    const-string/jumbo v2, "]\n"

    .line 729
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 731
    :cond_2
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  CertStores: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    :cond_3
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 734
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 710
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Initial Policy OIDs: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 711
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 711
    const-string/jumbo v2, "]\n"

    .line 710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
