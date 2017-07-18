.class public final Lsun/security/ec/ECKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "ECKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ec/ECKeyFactory$1;,
        Lsun/security/ec/ECKeyFactory$2;
    }
.end annotation


# static fields
.field public static final INSTANCE:Ljava/security/KeyFactory;

.field public static final ecInternalProvider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v1, Lsun/security/ec/ECKeyFactory$1;

    const-string/jumbo v2, "SunEC-Internal"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v5, v3}, Lsun/security/ec/ECKeyFactory$1;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v2, Lsun/security/ec/ECKeyFactory$2;

    invoke-direct {v2, v1}, Lsun/security/ec/ECKeyFactory$2;-><init>(Ljava/security/Provider;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :try_start_0
    const-string/jumbo v2, "EC"

    invoke-static {v2, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v2

    sput-object v2, Lsun/security/ec/ECKeyFactory;->INSTANCE:Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v1, Lsun/security/ec/ECKeyFactory;->ecInternalProvider:Ljava/security/Provider;

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method

.method private static checkKey(Ljava/security/interfaces/ECKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v1, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lsun/security/ec/ECPublicKeyImpl;

    if-eqz v1, :cond_2

    return-void

    :cond_0
    instance-of v1, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v1, :cond_1

    instance-of v1, p0, Lsun/security/ec/ECPrivateKeyImpl;

    if-eqz v1, :cond_2

    return-void

    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "Neither a public nor a private key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    check-cast p0, Ljava/security/Key;

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not an EC key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method private implGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v2, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    new-instance v2, Lsun/security/ec/ECPrivateKeyImpl;

    invoke-virtual {v1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/ec/ECPrivateKeyImpl;-><init>([B)V

    return-object v2

    :cond_0
    instance-of v2, p1, Ljava/security/spec/ECPrivateKeySpec;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECPrivateKeySpec;

    new-instance v2, Lsun/security/ec/ECPrivateKeyImpl;

    invoke-virtual {v0}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsun/security/ec/ECPrivateKeyImpl;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    return-object v2

    :cond_1
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "Only ECPrivateKeySpec and PKCS8EncodedKeySpec supported for EC private keys"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private implGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v2, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v2, Lsun/security/ec/ECPublicKeyImpl;

    invoke-virtual {v1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/ec/ECPublicKeyImpl;-><init>([B)V

    return-object v2

    :cond_0
    instance-of v2, p1, Ljava/security/spec/ECPublicKeySpec;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECPublicKeySpec;

    new-instance v2, Lsun/security/ec/ECPublicKeyImpl;

    invoke-virtual {v0}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsun/security/ec/ECPublicKeyImpl;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    return-object v2

    :cond_1
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "Only ECPublicKeySpec and X509EncodedKeySpec supported for EC public keys"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private implTranslatePrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v1, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v1, :cond_1

    instance-of v1, p1, Lsun/security/ec/ECPrivateKeyImpl;

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    new-instance v1, Lsun/security/ec/ECPrivateKeyImpl;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsun/security/ec/ECPrivateKeyImpl;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    return-object v1

    :cond_1
    const-string/jumbo v1, "PKCS#8"

    invoke-interface {p1}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lsun/security/ec/ECPrivateKeyImpl;

    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/ec/ECPrivateKeyImpl;-><init>([B)V

    return-object v1

    :cond_2
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "Private keys must be instance of ECPrivateKey or have PKCS#8 encoding"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private implTranslatePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v2, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lsun/security/ec/ECPublicKeyImpl;

    if-eqz v2, :cond_0

    return-object p1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    new-instance v2, Lsun/security/ec/ECPublicKeyImpl;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsun/security/ec/ECPublicKeyImpl;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    return-object v2

    :cond_1
    const-string/jumbo v2, "X.509"

    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    new-instance v2, Lsun/security/ec/ECPublicKeyImpl;

    invoke-direct {v2, v1}, Lsun/security/ec/ECPublicKeyImpl;-><init>([B)V

    return-object v2

    :cond_2
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "Public keys must be instance of ECPublicKey or have X.509 encoding"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static toECKey(Ljava/security/Key;)Ljava/security/interfaces/ECKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v1, p0, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECKey;

    invoke-static {v0}, Lsun/security/ec/ECKeyFactory;->checkKey(Ljava/security/interfaces/ECKey;)V

    return-object v0

    :cond_0
    sget-object v1, Lsun/security/ec/ECKeyFactory;->INSTANCE:Ljava/security/KeyFactory;

    invoke-virtual {v1, p0}, Ljava/security/KeyFactory;->translateKey(Ljava/security/Key;)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECKey;

    return-object v1
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/ec/ECKeyFactory;->implGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    throw v1
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/ec/ECKeyFactory;->implGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    throw v1
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/ec/ECKeyFactory;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v3, :cond_2

    move-object v2, p1

    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    const-class v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    const-class v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object v3

    :cond_1
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "KeySpec must be ECPublicKeySpec or X509EncodedKeySpec for EC public keys"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v3, :cond_5

    const-class v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v3

    :cond_3
    const-class v3, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    return-object v3

    :cond_4
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "KeySpec must be ECPrivateKeySpec or PKCS8EncodedKeySpec for EC private keys"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "Neither public nor private key"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "Key must not be null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not an EC key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/security/PublicKey;

    invoke-direct {p0, p1}, Lsun/security/ec/ECKeyFactory;->implTranslatePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1

    :cond_2
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/security/PrivateKey;

    invoke-direct {p0, p1}, Lsun/security/ec/ECKeyFactory;->implTranslatePrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "Neither a public nor a private key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
