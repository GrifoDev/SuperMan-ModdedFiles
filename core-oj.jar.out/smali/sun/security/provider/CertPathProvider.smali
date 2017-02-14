.class public final Lsun/security/provider/CertPathProvider;
.super Ljava/security/Provider;
.source "CertPathProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string/jumbo v0, "CertPathProvider"

    const-string/jumbo v1, "Provider of CertPathBuilder and CertPathVerifier"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string/jumbo v0, "CertPathBuilder.PKIX"

    const-string/jumbo v1, "sun.security.provider.certpath.SunCertPathBuilder"

    invoke-virtual {p0, v0, v1}, Lsun/security/provider/CertPathProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CertPathBuilder.PKIX ImplementedIn"

    const-string/jumbo v1, "Software"

    invoke-virtual {p0, v0, v1}, Lsun/security/provider/CertPathProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CertPathBuilder.PKIX ValidationAlgorithm"

    const-string/jumbo v1, "RFC3280"

    invoke-virtual {p0, v0, v1}, Lsun/security/provider/CertPathProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CertPathValidator.PKIX"

    const-string/jumbo v1, "sun.security.provider.certpath.PKIXCertPathValidator"

    invoke-virtual {p0, v0, v1}, Lsun/security/provider/CertPathProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CertPathValidator.PKIX ImplementedIn"

    const-string/jumbo v1, "Software"

    invoke-virtual {p0, v0, v1}, Lsun/security/provider/CertPathProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CertPathValidator.PKIX ValidationAlgorithm"

    const-string/jumbo v1, "RFC3280"

    invoke-virtual {p0, v0, v1}, Lsun/security/provider/CertPathProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
