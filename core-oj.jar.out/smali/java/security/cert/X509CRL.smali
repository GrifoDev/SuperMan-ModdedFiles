.class public abstract Ljava/security/cert/X509CRL;
.super Ljava/security/cert/CRL;
.source "X509CRL.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# instance fields
.field private transient issuerPrincipal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string/jumbo v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CRL;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    instance-of v3, p1, Ljava/security/cert/X509CRL;

    if-nez v3, :cond_1

    return v4

    :cond_1
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal(Ljava/security/cert/X509CRL;)[B

    move-result-object v2

    nop

    nop

    invoke-static {p1}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal(Ljava/security/cert/X509CRL;)[B

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    return v4
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract getIssuerDN()Ljava/security/Principal;
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CRL;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    invoke-static {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CRL;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRL;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public abstract getNextUpdate()Ljava/util/Date;
.end method

.method public abstract getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .locals 3

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v2

    return-object v2
.end method

.method public abstract getRevokedCertificates()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSigAlgName()Ljava/lang/String;
.end method

.method public abstract getSigAlgOID()Ljava/lang/String;
.end method

.method public abstract getSigAlgParams()[B
.end method

.method public abstract getSignature()[B
.end method

.method public abstract getTBSCertList()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract getThisUpdate()Ljava/util/Date;
.end method

.method public abstract getVersion()I
.end method

.method public hashCode()I
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal(Ljava/security/cert/X509CRL;)[B

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    aget-byte v4, v0, v2
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3

    :catch_0
    move-exception v1

    return v3
.end method

.method public abstract verify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public abstract verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method
