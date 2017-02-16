.class public Lsun/security/provider/certpath/SunCertPathBuilderParameters;
.super Ljava/security/cert/PKIXBuilderParameters;
.source "SunCertPathBuilderParameters.java"


# instance fields
.field private buildForward:Z


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V
    .locals 1
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "targetConstraints"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V

    .line 51
    iput-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->buildForward:Z

    .line 93
    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->setBuildForward(Z)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    .locals 1
    .param p2, "targetConstraints"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/security/cert/CertSelector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V

    .line 51
    iput-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->buildForward:Z

    .line 71
    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->setBuildForward(Z)V

    .line 68
    return-void
.end method


# virtual methods
.method public getBuildForward()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->buildForward:Z

    return v0
.end method

.method public setBuildForward(Z)V
    .locals 0
    .param p1, "buildForward"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->buildForward:Z

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-super {p0}, Ljava/security/cert/PKIXBuilderParameters;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v1, "  Build Forward Flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->buildForward:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
