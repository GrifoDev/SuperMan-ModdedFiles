.class Lsun/security/provider/certpath/BasicChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "BasicChecker.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final caName:Ljavax/security/auth/x500/X500Principal;

.field private final date:Ljava/util/Date;

.field private prevPubKey:Ljava/security/PublicKey;

.field private prevSubject:Ljavax/security/auth/x500/X500Principal;

.field private final sigOnly:Z

.field private final sigProvider:Ljava/lang/String;

.field private final trustedPubKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/security/cert/TrustAnchor;Ljava/util/Date;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "sigProvider"    # Ljava/lang/String;
    .param p4, "sigOnly"    # Z

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 83
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->trustedPubKey:Ljava/security/PublicKey;

    .line 85
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->caName:Ljavax/security/auth/x500/X500Principal;

    .line 90
    :goto_0
    iput-object p2, p0, Lsun/security/provider/certpath/BasicChecker;->date:Ljava/util/Date;

    .line 91
    iput-object p3, p0, Lsun/security/provider/certpath/BasicChecker;->sigProvider:Ljava/lang/String;

    .line 92
    iput-boolean p4, p0, Lsun/security/provider/certpath/BasicChecker;->sigOnly:Z

    .line 93
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->trustedPubKey:Ljava/security/PublicKey;

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 82
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->trustedPubKey:Ljava/security/PublicKey;

    .line 88
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->caName:Ljavax/security/auth/x500/X500Principal;

    goto :goto_0
.end method

.method static makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .locals 8
    .param p0, "keyValueKey"    # Ljava/security/PublicKey;
    .param p1, "keyParamsKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 275
    instance-of v5, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v5, :cond_0

    .line 276
    instance-of v5, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v5, :cond_0

    .line 280
    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    .end local p1    # "keyParamsKey":Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    .line 281
    .local v3, "params":Ljava/security/interfaces/DSAParams;
    if-nez v3, :cond_1

    .line 282
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v6, "Key parameters missing"

    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    .end local v3    # "params":Ljava/security/interfaces/DSAParams;
    .restart local p1    # "keyParamsKey":Ljava/security/PublicKey;
    :cond_0
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v6, "Input key is not appropriate type for inheriting parameters"

    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 284
    .end local p1    # "keyParamsKey":Ljava/security/PublicKey;
    .restart local v3    # "params":Ljava/security/interfaces/DSAParams;
    :cond_1
    :try_start_0
    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    .end local p0    # "keyValueKey":Ljava/security/PublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    .line 285
    .local v4, "y":Ljava/math/BigInteger;
    const-string/jumbo v5, "DSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 286
    .local v1, "kf":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/DSAPublicKeySpec;

    .line 287
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v5

    .line 288
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 289
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v7

    .line 286
    invoke-direct {v2, v4, v5, v6, v7}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 290
    .local v2, "ks":Ljava/security/spec/DSAPublicKeySpec;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 291
    .end local v1    # "kf":Ljava/security/KeyFactory;
    .end local v2    # "ks":Ljava/security/spec/DSAPublicKeySpec;
    .end local v4    # "y":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to generate key with inherited parameters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 294
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 292
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private updateState(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 247
    .local v0, "cKey":Ljava/security/PublicKey;
    sget-object v1, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_0

    .line 248
    sget-object v1, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BasicChecker.updateState issuer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 249
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 249
    const-string/jumbo v3, "; subject: "

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 250
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 250
    const-string/jumbo v3, "; serial#: "

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 253
    :cond_0
    invoke-static {v0}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    invoke-static {v0, v1}, Lsun/security/provider/certpath/BasicChecker;->makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;

    move-result-object v0

    .line 256
    sget-object v1, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1

    sget-object v1, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "BasicChecker.updateState Made key with inherited params"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 259
    :cond_1
    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 260
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/BasicChecker;->prevSubject:Ljavax/security/auth/x500/X500Principal;

    .line 244
    return-void
.end method

.method private verifyNameChaining(Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevSubject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v0, :cond_3

    .line 215
    const-string/jumbo v7, "subject/issuer name chaining"

    .line 216
    .local v7, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "---checking "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 219
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 222
    .local v6, "currIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v6}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " check failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    const-string/jumbo v3, "empty/null issuer DN in certificate is invalid"

    .line 224
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    sget-object v5, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    move-object v3, v2

    .line 223
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 229
    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevSubject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " check failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    sget-object v5, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    move-object v3, v2

    .line 230
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 235
    :cond_2
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3

    .line 236
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 211
    .end local v6    # "currIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v7    # "msg":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private verifySignature(Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 161
    const-string/jumbo v7, "signature"

    .line 162
    .local v7, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "---checking "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 166
    :cond_0
    :try_start_0
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->sigProvider:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    iget-object v1, p0, Lsun/security/provider/certpath/BasicChecker;->sigProvider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    :goto_0
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " verified."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 159
    :cond_1
    return-void

    .line 169
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/security/SignatureException;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " check failed"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->INVALID_SIGNATURE:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 173
    const/4 v4, -0x1

    .line 172
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 175
    .end local v2    # "e":Ljava/security/SignatureException;
    :catch_1
    move-exception v6

    .line 176
    .local v6, "e":Ljava/security/GeneralSecurityException;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " check failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private verifyTimestamp(Ljava/security/cert/X509Certificate;)V
    .locals 12
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 189
    const-string/jumbo v11, "timestamp"

    .line 190
    .local v11, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "---checking "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lsun/security/provider/certpath/BasicChecker;->date:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "..."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 194
    :cond_0
    :try_start_0
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " verified."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 187
    :cond_1
    return-void

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " check failed"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 199
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 195
    .end local v2    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_1
    move-exception v7

    .line 196
    .local v7, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " check failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v10, Ljava/security/cert/CertPathValidatorException$BasicReason;->EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v8, v3

    move v9, v4

    .line 196
    invoke-direct/range {v5 .. v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v5
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    .line 141
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 143
    .local v0, "currCert":Ljava/security/cert/X509Certificate;
    iget-boolean v1, p0, Lsun/security/provider/certpath/BasicChecker;->sigOnly:Z

    if-nez v1, :cond_0

    .line 144
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/BasicChecker;->verifyTimestamp(Ljava/security/cert/X509Certificate;)V

    .line 145
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/BasicChecker;->verifyNameChaining(Ljava/security/cert/X509Certificate;)V

    .line 147
    :cond_0
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/BasicChecker;->verifySignature(Ljava/security/cert/X509Certificate;)V

    .line 149
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/BasicChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 139
    return-void
.end method

.method getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
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
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Z)V
    .locals 2
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 102
    if-nez p1, :cond_1

    .line 103
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->trustedPubKey:Ljava/security/PublicKey;

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 104
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    invoke-static {v0}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "Key parameters missing"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->caName:Ljavax/security/auth/x500/X500Principal;

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevSubject:Ljavax/security/auth/x500/X500Principal;

    .line 101
    return-void

    .line 112
    :cond_1
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 113
    const-string/jumbo v1, "forward checking not supported"

    .line 112
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method
