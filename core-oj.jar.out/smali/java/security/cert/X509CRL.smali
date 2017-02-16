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

    .prologue
    .line 125
    const-string/jumbo v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CRL;-><init>(Ljava/lang/String;)V

    .line 124
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 141
    if-ne p0, p1, :cond_0

    .line 142
    const/4 v3, 0x1

    return v3

    .line 144
    :cond_0
    instance-of v3, p1, Ljava/security/cert/X509CRL;

    if-nez v3, :cond_1

    .line 145
    return v4

    .line 148
    :cond_1
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal(Ljava/security/cert/X509CRL;)[B

    move-result-object v2

    .line 149
    .local v2, "thisCRL":[B
    nop

    nop

    .end local p1    # "other":Ljava/lang/Object;
    invoke-static {p1}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal(Ljava/security/cert/X509CRL;)[B

    move-result-object v1

    .line 151
    .local v1, "otherCRL":[B
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 152
    .end local v1    # "otherCRL":[B
    .end local v2    # "thisCRL":[B
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/security/cert/CRLException;
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

    .prologue
    .line 291
    iget-object v0, p0, Ljava/security/cert/X509CRL;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    .line 292
    invoke-static {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CRL;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 294
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
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 349
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 350
    .local v0, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 351
    .local v1, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    const/4 v2, 0x0

    return-object v2

    .line 354
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

    .prologue
    .line 164
    const/4 v3, 0x0

    .line 166
    .local v3, "retval":I
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal(Ljava/security/cert/X509CRL;)[B

    move-result-object v0

    .line 167
    .local v0, "crlData":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 168
    aget-byte v4, v0, v2
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return v3

    .line 171
    .end local v0    # "crlData":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/security/cert/CRLException;
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
