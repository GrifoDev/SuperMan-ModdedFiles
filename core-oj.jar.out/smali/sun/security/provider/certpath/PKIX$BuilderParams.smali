.class Lsun/security/provider/certpath/PKIX$BuilderParams;
.super Lsun/security/provider/certpath/PKIX$ValidatorParams;
.source "PKIX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/PKIX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderParams"
.end annotation


# instance fields
.field private buildForward:Z

.field private params:Ljava/security/cert/PKIXBuilderParameters;

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

.field private targetSubject:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method constructor <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;-><init>(Ljava/security/cert/PKIXParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->buildForward:Z

    invoke-direct {p0, p1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->checkParams(Ljava/security/cert/PKIXBuilderParameters;)V

    return-void
.end method

.method private checkParams(Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    instance-of v1, v0, Ljava/security/cert/X509CertSelector;

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "the targetCertConstraints parameter must be an X509CertSelector"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    instance-of v1, p1, Lsun/security/provider/certpath/SunCertPathBuilderParameters;

    if-eqz v1, :cond_1

    move-object v1, p1

    nop

    nop

    invoke-virtual {v1}, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->getBuildForward()Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->buildForward:Z

    :cond_1
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certStores()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CertSelector;

    invoke-static {v2, v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->getTargetSubject(Ljava/util/List;Ljava/security/cert/X509CertSelector;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method private static getTargetSubject(Ljava/util/List;Ljava/security/cert/X509CertSelector;)Ljavax/security/auth/x500/X500Principal;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/security/cert/X509CertSelector;",
            ")",
            "Ljavax/security/auth/x500/X500Principal;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    if-eqz v5, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_2

    return-object v5

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertStore;

    :try_start_0
    invoke-virtual {v3, p1}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v2

    invoke-static {}, Lsun/security/provider/certpath/PKIX;->-get0()Lsun/security/util/Debug;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {}, Lsun/security/provider/certpath/PKIX;->-get0()Lsun/security/util/Debug;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BuilderParams.getTargetSubjectDN: non-fatal exception retrieving certs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v8, "Could not determine unique target subject"

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method buildForward()Z
    .locals 1

    iget-boolean v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->buildForward:Z

    return v0
.end method

.method certStores()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    new-instance v1, Lsun/security/provider/certpath/PKIX$CertStoreComparator;

    invoke-direct {v1, v2}, Lsun/security/provider/certpath/PKIX$CertStoreComparator;-><init>(Lsun/security/provider/certpath/PKIX$CertStoreComparator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    return-object v0
.end method

.method maxPathLength()I
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v0

    return v0
.end method

.method params()Ljava/security/cert/PKIXBuilderParameters;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    return-object v0
.end method

.method targetSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method
