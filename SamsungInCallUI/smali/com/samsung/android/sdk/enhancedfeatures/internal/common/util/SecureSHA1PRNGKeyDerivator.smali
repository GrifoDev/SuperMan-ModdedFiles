.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;
.super Ljava/lang/Object;


# static fields
.field private static final IV_SIZE:I = 0x10

.field static final KEY_SIZE:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deriveKeySecurely(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 5

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->retrieveSalt()[B

    move-result-object v2

    const/16 v3, 0x64

    const/16 v4, 0x80

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    :try_start_0
    const-string v1, "PBKDF2WithHmacSHA1"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Deal with exceptions properly!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static readBytes(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->toByte(Ljava/lang/String;[B)[B

    return-void
.end method

.method private static readFromPrefOrCreateRandom(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->readBytes(Ljava/lang/String;[B)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->toHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static retrieveIv()[B
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    const-string v1, "crypto_iv"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->readFromPrefOrCreateRandom(Ljava/lang/String;[B)V

    return-object v0
.end method

.method private static retrieveSalt()[B
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    const-string v1, "crypto_salt"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->readFromPrefOrCreateRandom(Ljava/lang/String;[B)V

    return-object v0
.end method
