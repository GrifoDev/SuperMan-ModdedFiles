.class public final Lsun/security/provider/certpath/AlgorithmChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "AlgorithmChecker.java"


# static fields
.field private static final SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;


# instance fields
.field private final constraints:Ljava/security/AlgorithmConstraints;

.field private prevPubKey:Ljava/security/PublicKey;

.field private final trustedPubKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 77
    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    .line 81
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints;

    .line 82
    const-string/jumbo v1, "jdk.certpath.disabledAlgorithms"

    .line 81
    invoke-direct {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/security/AlgorithmConstraints;)V
    .locals 1
    .param p1, "constraints"    # Ljava/security/AlgorithmConstraints;

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 107
    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 108
    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    .line 109
    iput-object p1, p0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/TrustAnchor;)V
    .locals 1
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    .prologue
    .line 93
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    invoke-direct {p0, p1, v0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;)V
    .locals 2
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "constraints"    # Ljava/security/AlgorithmConstraints;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 127
    const-string/jumbo v1, "The trust anchor cannot be null"

    .line 126
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    .line 136
    :goto_0
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 137
    iput-object p2, p0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    .line 123
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    goto :goto_0
.end method

.method static check(Ljava/security/PublicKey;Ljava/security/cert/X509CRL;)V
    .locals 4
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v2, 0x0

    .line 337
    .local v2, "x509CRLImpl":Lsun/security/x509/X509CRLImpl;
    :try_start_0
    invoke-static {p1}, Lsun/security/x509/X509CRLImpl;->toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 342
    .local v2, "x509CRLImpl":Lsun/security/x509/X509CRLImpl;
    invoke-virtual {v2}, Lsun/security/x509/X509CRLImpl;->getSigAlgId()Lsun/security/x509/AlgorithmId;

    move-result-object v0

    .line 343
    .local v0, "algorithmId":Lsun/security/x509/AlgorithmId;
    invoke-static {p0, v0}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V

    .line 333
    return-void

    .line 338
    .end local v0    # "algorithmId":Lsun/security/x509/AlgorithmId;
    .local v2, "x509CRLImpl":Lsun/security/x509/X509CRLImpl;
    :catch_0
    move-exception v1

    .line 339
    .local v1, "ce":Ljava/security/cert/CRLException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V
    .locals 8
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "algorithmId"    # Lsun/security/x509/AlgorithmId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-virtual {p1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "sigAlgName":Ljava/lang/String;
    invoke-virtual {p1}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v7

    .line 357
    .local v7, "sigAlgParams":Ljava/security/AlgorithmParameters;
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    .line 358
    sget-object v1, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    .line 357
    invoke-virtual {v0, v1, v6, p0, v7}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "algorithm check failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " is disabled"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v4, -0x1

    move-object v3, v2

    .line 359
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 353
    :cond_0
    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 20
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
    .line 172
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    if-nez v1, :cond_1

    .line 174
    :cond_0
    return-void

    .line 177
    :cond_1
    const/16 v18, 0x0

    .line 179
    .local v18, "x509Cert":Lsun/security/x509/X509CertImpl;
    :try_start_0
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1    # "cert":Ljava/security/cert/Certificate;
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 184
    .local v18, "x509Cert":Lsun/security/x509/X509CertImpl;
    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 185
    .local v9, "currPubKey":Ljava/security/PublicKey;
    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v10

    .line 187
    .local v10, "currSigAlg":Ljava/lang/String;
    const/4 v7, 0x0

    .line 189
    .local v7, "algorithmId":Lsun/security/x509/AlgorithmId;
    :try_start_1
    const-string/jumbo v1, "x509.algorithm"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "algorithmId":Lsun/security/x509/AlgorithmId;
    check-cast v7, Lsun/security/x509/AlgorithmId;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .local v7, "algorithmId":Lsun/security/x509/AlgorithmId;
    invoke-virtual {v7}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v11

    .line 197
    .local v11, "currSigAlgParams":Ljava/security/AlgorithmParameters;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    .line 198
    sget-object v2, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    .line 197
    invoke-interface {v1, v2, v10, v11}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Algorithm constraints check failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 200
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 180
    .end local v7    # "algorithmId":Lsun/security/x509/AlgorithmId;
    .end local v9    # "currPubKey":Ljava/security/PublicKey;
    .end local v10    # "currSigAlg":Ljava/lang/String;
    .end local v11    # "currSigAlgParams":Ljava/security/AlgorithmParameters;
    .local v18, "x509Cert":Lsun/security/x509/X509CertImpl;
    :catch_0
    move-exception v8

    .line 181
    .local v8, "ce":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 190
    .end local v8    # "ce":Ljava/security/cert/CertificateException;
    .restart local v9    # "currPubKey":Ljava/security/PublicKey;
    .restart local v10    # "currSigAlg":Ljava/lang/String;
    .local v18, "x509Cert":Lsun/security/x509/X509CertImpl;
    :catch_1
    move-exception v8

    .line 191
    .restart local v8    # "ce":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 206
    .end local v8    # "ce":Ljava/security/cert/CertificateException;
    .restart local v7    # "algorithmId":Lsun/security/x509/AlgorithmId;
    .restart local v11    # "currSigAlgParams":Ljava/security/AlgorithmParameters;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/X509CertImpl;->getKeyUsage()[Z

    move-result-object v13

    .line 207
    .local v13, "keyUsage":[Z
    if-eqz v13, :cond_3

    array-length v1, v13

    const/16 v2, 0x9

    if-ge v1, v2, :cond_3

    .line 208
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 209
    const-string/jumbo v2, "incorrect KeyUsage extension"

    .line 210
    sget-object v6, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 208
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 213
    :cond_3
    if-eqz v13, :cond_9

    .line 215
    const-class v1, Ljava/security/CryptoPrimitive;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v17

    .line 217
    .local v17, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v1, 0x0

    aget-boolean v1, v13, v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    aget-boolean v1, v13, v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    aget-boolean v1, v13, v1

    if-nez v1, :cond_4

    const/4 v1, 0x6

    aget-boolean v1, v13, v1

    if-eqz v1, :cond_5

    .line 222
    :cond_4
    sget-object v1, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_5
    const/4 v1, 0x2

    aget-boolean v1, v13, v1

    if-eqz v1, :cond_6

    .line 226
    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_6
    const/4 v1, 0x3

    aget-boolean v1, v13, v1

    if-eqz v1, :cond_7

    .line 230
    sget-object v1, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_7
    const/4 v1, 0x4

    aget-boolean v1, v13, v1

    if-eqz v1, :cond_8

    .line 234
    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v9}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 242
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 243
    const-string/jumbo v2, "algorithm constraints check failed"

    .line 244
    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 242
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 250
    .end local v17    # "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_d

    .line 251
    if-eqz v10, :cond_a

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    .line 253
    sget-object v2, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 252
    invoke-interface {v1, v2, v10, v3, v11}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 255
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Algorithm constraints check failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 255
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 262
    :cond_a
    invoke-static {v9}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    instance-of v1, v1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v1, :cond_b

    .line 265
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Input key is not of a appropriate type for inheriting parameters"

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v16

    .line 270
    .local v16, "params":Ljava/security/interfaces/DSAParams;
    if-nez v16, :cond_c

    .line 271
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 272
    const-string/jumbo v2, "Key parameters missing"

    .line 271
    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_c
    :try_start_2
    check-cast v9, Ljava/security/interfaces/DSAPublicKey;

    .end local v9    # "currPubKey":Ljava/security/PublicKey;
    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v19

    .line 277
    .local v19, "y":Ljava/math/BigInteger;
    const-string/jumbo v1, "DSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v14

    .line 278
    .local v14, "kf":Ljava/security/KeyFactory;
    new-instance v15, Ljava/security/spec/DSAPublicKeySpec;

    .line 279
    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 280
    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    .line 281
    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    .line 278
    move-object/from16 v0, v19

    invoke-direct {v15, v0, v1, v2, v3}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 282
    .local v15, "ks":Ljava/security/spec/DSAPublicKeySpec;
    invoke-virtual {v14, v15}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    .line 291
    .end local v14    # "kf":Ljava/security/KeyFactory;
    .end local v15    # "ks":Ljava/security/spec/DSAPublicKeySpec;
    .end local v16    # "params":Ljava/security/interfaces/DSAParams;
    .end local v19    # "y":Ljava/math/BigInteger;
    .restart local v9    # "currPubKey":Ljava/security/PublicKey;
    :cond_d
    move-object/from16 v0, p0

    iput-object v9, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 170
    return-void

    .line 283
    .end local v9    # "currPubKey":Ljava/security/PublicKey;
    .restart local v16    # "params":Ljava/security/interfaces/DSAParams;
    :catch_2
    move-exception v12

    .line 284
    .local v12, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to generate key with inherited parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    invoke-virtual {v12}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v12}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    .line 164
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
    const/4 v1, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 144
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 141
    :goto_0
    return-void

    .line 147
    :cond_0
    iput-object v1, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    goto :goto_0

    .line 150
    :cond_1
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 151
    const-string/jumbo v1, "forward checking not supported"

    .line 150
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method trySetTrustAnchor(Ljava/security/cert/TrustAnchor;)V
    .locals 2
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    .prologue
    .line 311
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    if-nez v0, :cond_1

    .line 312
    if-nez p1, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 314
    const-string/jumbo v1, "The trust anchor cannot be null"

    .line 313
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 321
    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    goto :goto_0
.end method
