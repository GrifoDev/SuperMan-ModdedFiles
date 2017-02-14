.class Lsun/security/provider/certpath/PKIX$ValidatorParams;
.super Ljava/lang/Object;
.source "PKIX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/PKIX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValidatorParams"
.end annotation


# instance fields
.field private anchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private certPath:Ljava/security/cert/CertPath;

.field private certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private checkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field

.field private constraints:Ljava/security/cert/CertSelector;

.field private date:Ljava/util/Date;

.field private gotConstraints:Z

.field private gotDate:Z

.field private final params:Ljava/security/cert/PKIXParameters;

.field private policies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;-><init>(Ljava/security/cert/PKIXParameters;)V

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "X.509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "X509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    return-void

    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "inappropriate CertPath type specified, must be X.509 or X509"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/security/cert/PKIXParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anchors:Ljava/util/Set;

    iget-object v2, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anchors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getNameConstraints()[B

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "name constraints in trust anchor not supported"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    return-void
.end method


# virtual methods
.method anyPolicyInhibited()Z
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    return v0
.end method

.method certPath()Ljava/security/cert/CertPath;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method certPathCheckers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->checkers:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->checkers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->checkers:Ljava/util/List;

    return-object v0
.end method

.method certStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->stores:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->stores:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->stores:Ljava/util/List;

    return-object v0
.end method

.method certificates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    :cond_0
    :goto_0
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    goto :goto_0
.end method

.method date()Ljava/util/Date;
    .locals 1

    iget-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotDate:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotDate:Z

    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    return-object v0
.end method

.method explicitPolicyRequired()Z
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    return v0
.end method

.method getPKIXParameters()Ljava/security/cert/PKIXParameters;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    return-object v0
.end method

.method initialPolicies()Ljava/util/Set;
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

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policies:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policies:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policies:Ljava/util/Set;

    return-object v0
.end method

.method policyMappingInhibited()Z
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    return v0
.end method

.method policyQualifiersRejected()Z
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v0

    return v0
.end method

.method revocationEnabled()Z
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    return v0
.end method

.method setCertPath(Ljava/security/cert/CertPath;)V
    .locals 0

    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    return-void
.end method

.method sigProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method targetCertConstraints()Ljava/security/cert/CertSelector;
    .locals 1

    iget-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotConstraints:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->constraints:Ljava/security/cert/CertSelector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotConstraints:Z

    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->constraints:Ljava/security/cert/CertSelector;

    return-object v0
.end method

.method trustAnchors()Ljava/util/Set;
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

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anchors:Ljava/util/Set;

    return-object v0
.end method
