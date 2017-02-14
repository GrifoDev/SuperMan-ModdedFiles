.class public Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPHandler;
.super Ljava/lang/Object;
.source "DSKPPHandler.java"


# static fields
.field private static final DSKPP_NONCE_LEN:I = 0x8

.field private static final DSKPP_PRF_SHA256_DESIRED_OUTPUT_LENGTH:I = 0x10

.field private static final PBKDF2_ALGORITHM:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final PBKDF2_DERIVED_KEY_LENGTH:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateMAC([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->base64ToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v4}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->mergeByteArray([B[B)[B

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->mergeByteArray([B[B)[B

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->toBytes(I)[B

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->mergeByteArray([B[B)[B

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->encode([B[B)[B

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5, p4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    return-object v5
.end method

.method public static generateNonce()[B
    .locals 3

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x8

    new-array v0, v2, [B

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public static keyProvClientHello(Lcom/samsung/android/knox/otp/DSKPPKeyProvTrigger;[B)Lcom/samsung/android/knox/otp/DSKPPKeyProvClientHello;
    .locals 12

    const/4 v11, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v7, "DSKPPHandler::keyProvClientHello : invalid input"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/knox/otp/DSKPPKeyProvClientHello;

    const/16 v8, 0x401

    invoke-direct {v7, v11, v11, v8}, Lcom/samsung/android/knox/otp/DSKPPKeyProvClientHello;-><init>([B[BI)V

    return-object v7

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/otp/DSKPPKeyProvTrigger;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPHandler;->generateNonce()[B

    move-result-object v3

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->mergeByteArray([B[B)[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/knox/otp/DSKPPKeyProvTrigger;->getnIterationCount()I

    move-result v7

    const/16 v8, 0x10

    invoke-static {v4, v6, v7, v8}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPHandler;->pbkdf2([C[BII)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/knox/otp/DSKPPKeyProvTrigger;->getClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/knox/otp/DSKPPKeyProvTrigger;->getServerUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v1, v7, v8, v9, v10}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPHandler;->calculateMAC([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MAC(Base64 encoded) : ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v2, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/knox/otp/DSKPPKeyProvClientHello;

    const/4 v7, 0x0

    invoke-direct {v5, v2, v3, v7}, Lcom/samsung/android/knox/otp/DSKPPKeyProvClientHello;-><init>([B[BI)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/knox/otp/DSKPPKeyProvClientHello;

    const/16 v7, 0x4ff

    invoke-direct {v5, v11, v11, v7}, Lcom/samsung/android/knox/otp/DSKPPKeyProvClientHello;-><init>([B[BI)V

    goto :goto_0
.end method

.method private static parsePublicKey([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    return-object v3
.end method

.method private static pbkdf2([C[BII)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const-string/jumbo v2, "PBKDF2WithHmacSHA1"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    mul-int/lit8 v2, p3, 0x8

    invoke-direct {v1, p0, p1, p2, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    return-object v2
.end method
