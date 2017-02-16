.class public Ljava/security/cert/PKIXBuilderParameters;
.super Ljava/security/cert/PKIXParameters;
.source "PKIXBuilderParameters.java"


# instance fields
.field private maxPathLength:I


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
    .line 130
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    .line 80
    const/4 v0, 0x5

    iput v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    .line 131
    invoke-virtual {p0, p2}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 128
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
    .line 104
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 80
    const/4 v0, 0x5

    iput v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    .line 105
    invoke-virtual {p0, p2}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 102
    return-void
.end method


# virtual methods
.method public getMaxPathLength()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    return v0
.end method

.method public setMaxPathLength(I)V
    .locals 2
    .param p1, "maxPathLength"    # I

    .prologue
    .line 165
    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    .line 166
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "the maximum path length parameter can not be less than -1"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iput p1, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    .line 164
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-super {p0}, Ljava/security/cert/PKIXParameters;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Maximum Path Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
