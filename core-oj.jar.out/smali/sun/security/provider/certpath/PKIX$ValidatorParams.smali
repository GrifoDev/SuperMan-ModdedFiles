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
    .param p1, "cp"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/PKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 94
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

    .line 98
    :cond_0
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    .line 91
    return-void

    .line 95
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "inappropriate CertPath type specified, must be X.509 or X509"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/security/cert/PKIXParameters;)V
    .locals 4
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anchors:Ljava/util/Set;

    .line 107
    iget-object v2, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anchors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 108
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getNameConstraints()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    .line 110
    const-string/jumbo v3, "name constraints in trust anchor not supported"

    .line 109
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_1
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    .line 102
    return-void
.end method


# virtual methods
.method anyPolicyInhibited()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    return v0
.end method

.method certPath()Ljava/security/cert/CertPath;
    .locals 1

    .prologue
    .line 117
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

    .prologue
    .line 140
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->checkers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->checkers:Ljava/util/List;

    .line 142
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

    .prologue
    .line 145
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->stores:Ljava/util/List;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->stores:Ljava/util/List;

    .line 147
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

    .prologue
    .line 124
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    if-nez v1, :cond_1

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    .line 137
    :cond_0
    :goto_0
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    return-object v1

    .line 131
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 132
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 131
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    .local v0, "xc":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 134
    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    goto :goto_0
.end method

.method date()Ljava/util/Date;
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotDate:Z

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    .line 152
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    .line 154
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotDate:Z

    .line 156
    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    return-object v0
.end method

.method explicitPolicyRequired()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    return v0
.end method

.method getPKIXParameters()Ljava/security/cert/PKIXParameters;
    .locals 1

    .prologue
    .line 191
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

    .prologue
    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policies:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policies:Ljava/util/Set;

    .line 161
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policies:Ljava/util/Set;

    return-object v0
.end method

.method policyMappingInhibited()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    return v0
.end method

.method policyQualifiersRejected()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v0

    return v0
.end method

.method revocationEnabled()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    return v0
.end method

.method setCertPath(Ljava/security/cert/CertPath;)V
    .locals 0
    .param p1, "cp"    # Ljava/security/cert/CertPath;

    .prologue
    .line 121
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    .line 120
    return-void
.end method

.method sigProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method targetCertConstraints()Ljava/security/cert/CertSelector;
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotConstraints:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->constraints:Ljava/security/cert/CertSelector;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotConstraints:Z

    .line 168
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

    .prologue
    .line 171
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anchors:Ljava/util/Set;

    return-object v0
.end method
