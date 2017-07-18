.class final Lsun/security/ssl/JsseJce;
.super Ljava/lang/Object;
.source "JsseJce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/JsseJce$1;,
        Lsun/security/ssl/JsseJce$SunCertificates;
    }
.end annotation


# static fields
.field static final CIPHER_3DES:Ljava/lang/String; = "DESede/CBC/NoPadding"

.field static final CIPHER_AES:Ljava/lang/String; = "AES/CBC/NoPadding"

.field static final CIPHER_DES:Ljava/lang/String; = "DES/CBC/NoPadding"

.field static final CIPHER_RC4:Ljava/lang/String; = "RC4"

.field static final CIPHER_RSA_PKCS1:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field static final SIGNATURE_DSA:Ljava/lang/String; = "DSA"

.field static final SIGNATURE_ECDSA:Ljava/lang/String; = "SHA1withECDSA"

.field static final SIGNATURE_RAWDSA:Ljava/lang/String; = "RawDSA"

.field static final SIGNATURE_RAWECDSA:Ljava/lang/String; = "NONEwithECDSA"

.field static final SIGNATURE_RAWRSA:Ljava/lang/String; = "NONEwithRSA"

.field static final SIGNATURE_SSLRSA:Ljava/lang/String; = "MD5andSHA1withRSA"

.field private static final debug:Lsun/security/ssl/Debug;

.field private static ecAvailable:Ljava/lang/Boolean;

.field private static final fipsProviderList:Lsun/security/jca/ProviderList;

.field private static final kerberosAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v5, 0x0

    const-string/jumbo v4, "ssl"

    invoke-static {v4}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v4

    sput-object v4, Lsun/security/ssl/JsseJce;->debug:Lsun/security/ssl/Debug;

    :try_start_0
    new-instance v4, Lsun/security/ssl/JsseJce$1;

    invoke-direct {v4}, Lsun/security/ssl/JsseJce$1;-><init>()V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :goto_0
    sput-boolean v3, Lsun/security/ssl/JsseJce;->kerberosAvailable:Z

    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v4

    if-nez v4, :cond_0

    sput-object v5, Lsun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "SUN"

    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "FIPS mode: SUN provider must be installed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v2, Lsun/security/ssl/JsseJce$SunCertificates;

    invoke-direct {v2, v1}, Lsun/security/ssl/JsseJce$SunCertificates;-><init>(Ljava/security/Provider;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/security/Provider;

    sget-object v5, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v4}, Lsun/security/jca/ProviderList;->newList([Ljava/security/Provider;)Lsun/security/jca/ProviderList;

    move-result-object v4

    sput-object v4, Lsun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static beginFipsProvider()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lsun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lsun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    invoke-static {v0}, Lsun/security/jca/Providers;->beginThreadProviderList(Lsun/security/jca/ProviderList;)Lsun/security/jca/ProviderList;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized clearEcAvailable()V
    .locals 2

    const-class v0, Lsun/security/ssl/JsseJce;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lsun/security/ssl/JsseJce;->ecAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lsun/security/ec/ECParameters;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method static encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B
    .locals 1

    invoke-static {p0, p1}, Lsun/security/ec/ECParameters;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object v0

    return-object v0
.end method

.method static endFipsProvider(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lsun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    if-eqz v0, :cond_0

    check-cast p0, Lsun/security/jca/ProviderList;

    invoke-static {p0}, Lsun/security/jca/Providers;->endThreadProviderList(Lsun/security/jca/ProviderList;)V

    :cond_0
    return-void
.end method

.method static getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v1, :cond_0

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .locals 1

    invoke-static {p0}, Lsun/security/ec/NamedCurve;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method static getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    return-object v0
.end method

.method static getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0
.end method

.method static getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    return-object v0
.end method

.method static getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0
.end method

.method static getMD5()Ljava/security/MessageDigest;
    .locals 1

    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static getMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method static getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4

    :try_start_0
    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getNamedCurveOid(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lsun/security/ec/ECParameters;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRSAKeyLength(Ljava/security/PublicKey;)I
    .locals 3

    instance-of v2, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    return v2

    :cond_0
    invoke-static {p0}, Lsun/security/ssl/JsseJce;->getRSAPublicKeySpec(Ljava/security/PublicKey;)Ljava/security/spec/RSAPublicKeySpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method static getRSAPublicKeySpec(Ljava/security/PublicKey;)Ljava/security/spec/RSAPublicKeySpec;
    .locals 6

    instance-of v3, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v3, :cond_0

    move-object v2, p0

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v3

    :cond_0
    :try_start_0
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    const-class v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v1, p0, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/RSAPublicKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
.end method

.method static getSHA()Ljava/security/MessageDigest;
    .locals 1

    const-string/jumbo v0, "SHA"

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static getSecureRandom()Ljava/security/SecureRandom;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    sget-object v4, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v4, :cond_0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    return-object v4

    :cond_0
    :try_start_0
    const-string/jumbo v4, "PKCS11"

    sget-object v5, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {v4, v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    sget-object v4, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-virtual {v4}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;

    invoke-virtual {v2}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SecureRandom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {v4, v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    :cond_2
    new-instance v4, Ljava/security/KeyManagementException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FIPS mode: no SecureRandom  implementation found in provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static getSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "MD5andSHA1withRSA"

    if-ne p0, v1, :cond_1

    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    const-string/jumbo v2, "Signature"

    invoke-virtual {v1, v2, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v1

    if-nez v1, :cond_1

    :try_start_0
    const-string/jumbo v1, "SunJSSE"

    invoke-static {p0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    return-object v1
.end method

.method static declared-synchronized isEcAvailable()Z
    .locals 3

    const-class v2, Lsun/security/ssl/JsseJce;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lsun/security/ssl/JsseJce;->ecAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string/jumbo v1, "SHA1withECDSA"

    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    const-string/jumbo v1, "NONEwithECDSA"

    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    const-string/jumbo v1, "ECDH"

    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    const-string/jumbo v1, "EC"

    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    const-string/jumbo v1, "EC"

    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lsun/security/ssl/JsseJce;->ecAvailable:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lsun/security/ssl/JsseJce;->ecAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lsun/security/ssl/JsseJce;->ecAvailable:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static isKerberosAvailable()Z
    .locals 1

    sget-boolean v0, Lsun/security/ssl/JsseJce;->kerberosAvailable:Z

    return v0
.end method
