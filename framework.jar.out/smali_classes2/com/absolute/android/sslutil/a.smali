.class final Lcom/absolute/android/sslutil/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/absolute/android/sslutil/SslUtil;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/absolute/android/sslutil/SslUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/absolute/android/sslutil/a;->a:Lcom/absolute/android/sslutil/SslUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/absolute/android/sslutil/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/absolute/android/sslutil/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ABTTrustManager created... expectedCertSubjectName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " hostSPKIHash="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    return-void
.end method

.method private static a([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    :try_start_0
    array-length v5, p0

    new-array v0, v5, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    :goto_1
    array-length v5, p0

    if-lt v1, v5, :cond_1

    array-length v5, p0

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2

    move-object p0, v0

    goto :goto_0

    :cond_1
    aget-object v5, p0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    aput-object v5, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    :try_start_2
    array-length v5, p0

    if-lt v3, v5, :cond_3

    :goto_3
    if-nez v1, :cond_8

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_4
    array-length v5, p0

    if-lt v4, v5, :cond_4

    :goto_5
    array-length v5, p0

    if-eq v4, v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-ne v3, v4, :cond_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    aget-object v5, p0, v3

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    aget-object v6, p0, v4

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_7
    aget-object v5, p0, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v6, 0x0

    :try_start_3
    aput-object v5, v0, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_6
    :try_start_4
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_9

    move-object p0, v0

    goto :goto_0

    :cond_9
    const/4 v4, 0x0

    :goto_7
    array-length v5, p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-lt v4, v5, :cond_a

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    :try_start_5
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    aget-object v6, p0, v4

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v5, v3, 0x1

    aget-object v6, p0, v4

    aput-object v6, v0, v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_8

    :catch_0
    move-exception v2

    move-object p0, v0

    :goto_9
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Exception on reorderCerts: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x6

    invoke-static {v2}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move-object p0, v0

    goto :goto_9
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/absolute/android/sslutil/SslUtil;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 13

    array-length v10, p1

    new-array v3, v10, [Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    :goto_0
    array-length v10, p1

    if-lt v4, v10, :cond_0

    const/4 v4, 0x0

    const/4 v10, 0x0

    :try_start_0
    aget-object v6, p1, v10

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "checkServerTrusted cert subjectName = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", expected:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/absolute/android/sslutil/a;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v10, v12, v11}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    iget-object v10, p0, Lcom/absolute/android/sslutil/a;->b:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Ljava/security/cert/CertificateException;

    const-string/jumbo v11, "Bad subject value: Certificate checking failed"

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v6

    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v10

    const-string/jumbo v11, "m_defaultTrustManager.checkServerTrusted exception - do our own checking"

    const/4 v12, 0x3

    invoke-virtual {v10, v12, v11}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    if-nez v4, :cond_6

    new-instance v10, Ljava/security/cert/CertificateException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    aget-object v10, p1, v4

    aput-object v10, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v10

    const-string/jumbo v11, "checkServerTrusted: Got expected certificate subject name"

    const/4 v12, 0x3

    invoke-virtual {v10, v12, v11}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    iget-object v10, p0, Lcom/absolute/android/sslutil/a;->c:Ljava/lang/String;

    if-nez v10, :cond_2

    const/4 v4, 0x1

    invoke-static {}, Lcom/absolute/android/sslutil/SslUtil;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v10

    invoke-interface {v10, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    if-nez v6, :cond_4

    :cond_3
    :goto_1
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "checkServerTrusted: certPinningSuccess="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v10, v12, v11}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    if-eqz v4, :cond_5

    return-void

    :cond_4
    const-string/jumbo v10, "SHA-256"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    invoke-static {v10}, Lcom/absolute/android/crypt/HexUtilities;->EncodeBytesAsHexString([B)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/absolute/android/sslutil/a;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v10

    const-string/jumbo v11, "checkServerTrusted: Cert Pinning worked, call checkServerTrusted"

    const/4 v12, 0x3

    invoke-virtual {v10, v12, v11}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {}, Lcom/absolute/android/sslutil/SslUtil;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v10

    invoke-interface {v10, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v10, Ljava/security/cert/CertificateException;

    const-string/jumbo v11, "CertPinning-bad value: Certificate checking failed"

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    const/4 v7, 0x0

    :try_start_2
    invoke-static {v3}, Lcom/absolute/android/sslutil/a;->a([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {p0}, Lcom/absolute/android/sslutil/a;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v5

    const/4 v9, 0x0

    :goto_2
    array-length v10, v6

    if-lt v9, v10, :cond_7

    :goto_3
    if-eqz v7, :cond_e

    return-void

    :cond_7
    aget-object v10, v6, v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    array-length v11, v5

    if-lt v2, v11, :cond_9

    :goto_5
    if-nez v1, :cond_b

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    aget-object v11, v5, v2

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    if-nez v11, :cond_a

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    :try_start_3
    aget-object v11, v5, v2

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v1, 0x1

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    :try_start_4
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-eq v9, v10, :cond_c

    move v0, v9

    :goto_7
    array-length v10, v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    add-int/lit8 v10, v10, -0x1

    if-lt v0, v10, :cond_d

    :goto_8
    if-eqz v2, :cond_8

    const/4 v7, 0x1

    goto :goto_3

    :cond_c
    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    add-int/lit8 v10, v0, 0x1

    :try_start_5
    aget-object v10, v6, v10

    aget-object v11, v6, v0

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_1
    move-exception v10

    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    :try_start_6
    new-instance v10, Ljava/security/cert/CertificateException;

    const-string/jumbo v11, "CheckServerTrusted: Root cert is not trusted"

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v8

    new-instance v10, Ljava/security/cert/CertificateException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10

    :catch_3
    move-exception v11

    goto :goto_6
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    invoke-static {}, Lcom/absolute/android/sslutil/SslUtil;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
