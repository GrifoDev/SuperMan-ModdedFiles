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

    .prologue
    .line 65
    new-instance v1, Lsun/security/ec/ECKeyFactory$1;

    const-string/jumbo v2, "SunEC-Internal"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v5, v3}, Lsun/security/ec/ECKeyFactory$1;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 66
    .local v1, "p":Ljava/security/Provider;
    new-instance v2, Lsun/security/ec/ECKeyFactory$2;

    invoke-direct {v2, v1}, Lsun/security/ec/ECKeyFactory$2;-><init>(Ljava/security/Provider;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 78
    :try_start_0
    const-string/jumbo v2, "EC"

    invoke-static {v2, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v2

    sput-object v2, Lsun/security/ec/ECKeyFactory;->INSTANCE:Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    sput-object v1, Lsun/security/ec/ECKeyFactory;->ecInternalProvider:Ljava/security/Provider;

    .line 53
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method

.method private static checkKey(Ljava/security/interfaces/ECKey;)V
    .locals 4
    .param p0, "key"    # Ljava/security/interfaces/ECKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 116
    instance-of v1, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v1, :cond_0

    .line 117
    instance-of v1, p0, Lsun/security/ec/ECPublicKeyImpl;

    if-eqz v1, :cond_2

    .line 118
    return-void

    .line 120
    :cond_0
    instance-of v1, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v1, :cond_1

    .line 121
    instance-of v1, p0, Lsun/security/ec/ECPrivateKeyImpl;

    if-eqz v1, :cond_2

    .line 122
    return-void

    .line 125
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "Neither a public nor a private key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_2
    check-cast p0, Ljava/security/Key;

    .end local p0    # "key":Ljava/security/interfaces/ECKey;
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "keyAlg":Ljava/lang/String;
    const-string/jumbo v1, "EC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 130
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

    .line 114
    :cond_3
    return-void
.end method

.method private implGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 244
    instance-of v2, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 245
    check-cast v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 246
    .local v1, "pkcsSpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    new-instance v2, Lsun/security/ec/ECPrivateKeyImpl;

    invoke-virtual {v1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/ec/ECPrivateKeyImpl;-><init>([B)V

    return-object v2

    .line 247
    .end local v1    # "pkcsSpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :cond_0
    instance-of v2, p1, Ljava/security/spec/ECPrivateKeySpec;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 248
    check-cast v0, Ljava/security/spec/ECPrivateKeySpec;

    .line 249
    .local v0, "ecSpec":Ljava/security/spec/ECPrivateKeySpec;
    new-instance v2, Lsun/security/ec/ECPrivateKeyImpl;

    invoke-virtual {v0}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsun/security/ec/ECPrivateKeyImpl;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    return-object v2

    .line 251
    .end local v0    # "ecSpec":Ljava/security/spec/ECPrivateKeySpec;
    :cond_1
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "Only ECPrivateKeySpec and PKCS8EncodedKeySpec supported for EC private keys"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private implGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 226
    instance-of v2, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 227
    check-cast v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 228
    .local v1, "x509Spec":Ljava/security/spec/X509EncodedKeySpec;
    new-instance v2, Lsun/security/ec/ECPublicKeyImpl;

    invoke-virtual {v1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/ec/ECPublicKeyImpl;-><init>([B)V

    return-object v2

    .line 229
    .end local v1    # "x509Spec":Ljava/security/spec/X509EncodedKeySpec;
    :cond_0
    instance-of v2, p1, Ljava/security/spec/ECPublicKeySpec;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 230
    check-cast v0, Ljava/security/spec/ECPublicKeySpec;

    .line 231
    .local v0, "ecSpec":Ljava/security/spec/ECPublicKeySpec;
    new-instance v2, Lsun/security/ec/ECPublicKeyImpl;

    .line 232
    invoke-virtual {v0}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 233
    invoke-virtual {v0}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    .line 231
    invoke-direct {v2, v3, v4}, Lsun/security/ec/ECPublicKeyImpl;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    return-object v2

    .line 236
    .end local v0    # "ecSpec":Ljava/security/spec/ECPublicKeySpec;
    :cond_1
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "Only ECPublicKeySpec and X509EncodedKeySpec supported for EC public keys"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private implTranslatePrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 206
    instance-of v1, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v1, :cond_1

    .line 207
    instance-of v1, p1, Lsun/security/ec/ECPrivateKeyImpl;

    if-eqz v1, :cond_0

    .line 208
    return-object p1

    :cond_0
    move-object v0, p1

    .line 210
    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 211
    .local v0, "ecKey":Ljava/security/interfaces/ECPrivateKey;
    new-instance v1, Lsun/security/ec/ECPrivateKeyImpl;

    .line 212
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    .line 213
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 211
    invoke-direct {v1, v2, v3}, Lsun/security/ec/ECPrivateKeyImpl;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    return-object v1

    .line 215
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    :cond_1
    const-string/jumbo v1, "PKCS#8"

    invoke-interface {p1}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    new-instance v1, Lsun/security/ec/ECPrivateKeyImpl;

    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/ec/ECPrivateKeyImpl;-><init>([B)V

    return-object v1

    .line 218
    :cond_2
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "Private keys must be instance of ECPrivateKey or have PKCS#8 encoding"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private implTranslatePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .locals 5
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 185
    instance-of v2, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v2, :cond_1

    .line 186
    instance-of v2, p1, Lsun/security/ec/ECPublicKeyImpl;

    if-eqz v2, :cond_0

    .line 187
    return-object p1

    :cond_0
    move-object v0, p1

    .line 189
    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 190
    .local v0, "ecKey":Ljava/security/interfaces/ECPublicKey;
    new-instance v2, Lsun/security/ec/ECPublicKeyImpl;

    .line 191
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 192
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    .line 190
    invoke-direct {v2, v3, v4}, Lsun/security/ec/ECPublicKeyImpl;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    return-object v2

    .line 194
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    :cond_1
    const-string/jumbo v2, "X.509"

    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    .line 196
    .local v1, "encoded":[B
    new-instance v2, Lsun/security/ec/ECPublicKeyImpl;

    invoke-direct {v2, v1}, Lsun/security/ec/ECPublicKeyImpl;-><init>([B)V

    return-object v2

    .line 198
    .end local v1    # "encoded":[B
    :cond_2
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "Public keys must be instance of ECPublicKey or have X.509 encoding"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static toECKey(Ljava/security/Key;)Ljava/security/interfaces/ECKey;
    .locals 2
    .param p0, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 102
    instance-of v1, p0, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 103
    check-cast v0, Ljava/security/interfaces/ECKey;

    .line 104
    .local v0, "ecKey":Ljava/security/interfaces/ECKey;
    invoke-static {v0}, Lsun/security/ec/ECKeyFactory;->checkKey(Ljava/security/interfaces/ECKey;)V

    .line 105
    return-object v0

    .line 107
    .end local v0    # "ecKey":Ljava/security/interfaces/ECKey;
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
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/ec/ECKeyFactory;->implGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 175
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v1

    .line 176
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    throw v1
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/ec/ECKeyFactory;->implGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 163
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v1

    .line 164
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    throw v1
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6
    .param p1, "key"    # Ljava/security/Key;
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

    .prologue
    .line 262
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/ec/ECKeyFactory;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 266
    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 267
    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    .line 268
    .local v2, "ecKey":Ljava/security/interfaces/ECPublicKey;
    const-class v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    .line 270
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    .line 271
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    .line 269
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    return-object v3

    .line 263
    .end local v2    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 273
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    .restart local v2    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    :cond_0
    const-class v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object v3

    .line 276
    :cond_1
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    .line 277
    const-string/jumbo v4, "KeySpec must be ECPublicKeySpec or X509EncodedKeySpec for EC public keys"

    .line 276
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 280
    .end local v2    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v3, :cond_5

    .line 281
    const-class v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v3

    .line 283
    :cond_3
    const-class v3, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, p1

    .line 284
    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 285
    .local v1, "ecKey":Ljava/security/interfaces/ECPrivateKey;
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    .line 286
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    .line 287
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    .line 285
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    return-object v3

    .line 290
    .end local v1    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    :cond_4
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    .line 291
    const-string/jumbo v4, "KeySpec must be ECPrivateKeySpec or PKCS8EncodedKeySpec for EC private keys"

    .line 290
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 296
    :cond_5
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "Neither public nor private key"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "Key must not be null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "keyAlg":Ljava/lang/String;
    const-string/jumbo v1, "EC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
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

    .line 149
    :cond_1
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_2

    .line 150
    check-cast p1, Ljava/security/PublicKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {p0, p1}, Lsun/security/ec/ECKeyFactory;->implTranslatePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1

    .line 151
    .restart local p1    # "key":Ljava/security/Key;
    :cond_2
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_3

    .line 152
    check-cast p1, Ljava/security/PrivateKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {p0, p1}, Lsun/security/ec/ECKeyFactory;->implTranslatePrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1

    .line 154
    .restart local p1    # "key":Ljava/security/Key;
    :cond_3
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "Neither a public nor a private key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
