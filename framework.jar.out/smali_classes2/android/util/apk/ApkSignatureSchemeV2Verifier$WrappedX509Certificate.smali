.class Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedX509Certificate"
.end annotation


# instance fields
.field private final wrapped:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "wrapped"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1145
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 1146
    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    .line 1145
    return-void
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 1172
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 1171
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 1177
    return-void
.end method

.method public getBasicConstraints()I
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    return v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
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
    .line 1151
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 1258
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
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
    .line 1161
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertificate()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 1213
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1264
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    .line 1263
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1271
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 1270
    return-void
.end method
