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

    sget-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints;

    const-string/jumbo v1, "jdk.certpath.disabledAlgorithms"

    invoke-direct {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    return-void
.end method

.method public constructor <init>(Ljava/security/AlgorithmConstraints;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    iput-object p1, p0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/TrustAnchor;)V
    .locals 1

    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    invoke-direct {p0, p1, v0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;)V
    .locals 2

    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The trust anchor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    :goto_0
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    iput-object p2, p0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    goto :goto_0
.end method

.method static check(Ljava/security/PublicKey;Ljava/security/cert/X509CRL;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lsun/security/x509/X509CRLImpl;->toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/x509/X509CRLImpl;->getSigAlgId()Lsun/security/x509/AlgorithmId;

    move-result-object v0

    invoke-static {p0, v0}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v7

    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v1, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    invoke-virtual {v0, v1, v6, p0, v7}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

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

    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v4, -0x1

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 20
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

    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v18, 0x0

    :try_start_0
    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v10

    const/4 v7, 0x0

    :try_start_1
    const-string/jumbo v1, "x509.algorithm"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/x509/AlgorithmId;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v7}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    sget-object v2, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    invoke-interface {v1, v2, v10, v11}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Algorithm constraints check failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    :catch_0
    move-exception v8

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v8

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/X509CertImpl;->getKeyUsage()[Z

    move-result-object v13

    if-eqz v13, :cond_3

    array-length v1, v13

    const/16 v2, 0x9

    if-ge v1, v2, :cond_3

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "incorrect KeyUsage extension"

    sget-object v6, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    :cond_3
    if-eqz v13, :cond_9

    const-class v1, Ljava/security/CryptoPrimitive;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v17

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

    :cond_4
    sget-object v1, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v1, 0x2

    aget-boolean v1, v13, v1

    if-eqz v1, :cond_6

    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v1, 0x3

    aget-boolean v1, v13, v1

    if-eqz v1, :cond_7

    sget-object v1, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v1, 0x4

    aget-boolean v1, v13, v1

    if-eqz v1, :cond_8

    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v9}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "algorithm constraints check failed"

    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_d

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    sget-object v2, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    invoke-interface {v1, v2, v10, v3, v11}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Algorithm constraints check failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    :cond_a
    invoke-static {v9}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    instance-of v1, v1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v1, :cond_b

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Input key is not of a appropriate type for inheriting parameters"

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v16

    if-nez v16, :cond_c

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Key parameters missing"

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :try_start_2
    check-cast v9, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v19

    const-string/jumbo v1, "DSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v14

    new-instance v15, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v15, v0, v1, v2, v3}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v14, v15}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    :cond_d
    move-object/from16 v0, p0

    iput-object v9, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    return-void

    :catch_2
    move-exception v12

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to generate key with inherited parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method trySetTrustAnchor(Ljava/security/cert/TrustAnchor;)V
    .locals 2

    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The trust anchor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    goto :goto_0
.end method
