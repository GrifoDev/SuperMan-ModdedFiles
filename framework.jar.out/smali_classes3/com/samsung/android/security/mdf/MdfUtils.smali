.class public Lcom/samsung/android/security/mdf/MdfUtils;
.super Ljava/lang/Object;
.source "MdfUtils.java"


# static fields
.field public static final AUDIT_LOG_ALERT:I = 0x1

.field public static final AUDIT_LOG_CRITICAL:I = 0x2

.field public static final AUDIT_LOG_ERROR:I = 0x3

.field public static final AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field public static final AUDIT_LOG_GROUP_EVENTS:I = 0x4

.field public static final AUDIT_LOG_GROUP_NETWORK:I = 0x3

.field public static final AUDIT_LOG_GROUP_SECURITY:I = 0x1

.field public static final AUDIT_LOG_GROUP_SYSTEM:I = 0x2

.field public static final AUDIT_LOG_NOTICE:I = 0x5

.field public static final AUDIT_LOG_WARNING:I = 0x4

.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String;

.field public static final KEYPROP_BLOCK_MODE_GCM:Ljava/lang/String; = "GCM"

.field public static final KEYPROP_ENCRYPTION_PADDING_NONE:Ljava/lang/String; = "NoPadding"

.field public static final KEYPROP_KEY_ALGORITHM_AES:Ljava/lang/String; = "AES"

.field public static final KEYPROP_PURPOSE_DECRYPT:I = 0x2

.field public static final KEYPROP_PURPOSE_ENCRYPT:I = 0x1

.field public static final MDF_CIPHER_MODE:Ljava/lang/String; = "AES/GCM/NoPadding"

.field public static final MDF_IV_LENGTH:I = 0xc

.field public static final MDF_KEY_SIZE:I = 0x20

.field public static final MDF_TAG_LENGTH:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "mdf"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "ac"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "co"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "com"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "ed"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "edu"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "go"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "gouv"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "gov"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "info"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "lg"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "ne"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "net"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "or"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "org"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sput-object v1, Lcom/samsung/android/security/mdf/MdfUtils;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/security/mdf/MdfUtils;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not link the library. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acceptableCountryWildcard(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x7

    if-lt v0, v5, :cond_1

    const/16 v5, 0x9

    if-gt v0, v5, :cond_1

    add-int/lit8 v5, v0, -0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v0, -0x3

    const/4 v6, 0x2

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/samsung/android/security/mdf/MdfUtils;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v5, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static buildHostnameLog(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const-string/jumbo v6, "Certificate not presented"

    return-object v6

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Identifier verification failed. Presented identifier: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " List of reference identifiers: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v6, ""

    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v7, "No SANs available"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v6, "list of subject alternative names is not available"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_2
    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "; "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "MDFUtils::Unable to convert the byte array, input is null"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v4

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-byte v0, p0, v2

    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static decryptMdf([BLjava/lang/String;)[B
    .locals 14

    const/16 v12, 0xc

    const/4 v13, 0x0

    array-length v10, p0

    const/16 v11, 0x1c

    if-gt v10, v11, :cond_0

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v11, "MDFUtils::MDF decryption failed, invalid encryption length"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v13

    :cond_0
    :try_start_0
    const-string/jumbo v10, "AndroidKeyStore"

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/4 v10, 0x0

    invoke-virtual {v7, p1, v10}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v9

    check-cast v9, Ljavax/crypto/SecretKey;

    if-nez v9, :cond_1

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v11, "MDFUtils::MDF decryption failed, unable to get encryption key from AndroidKeystore"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v13

    :cond_1
    array-length v10, p0

    add-int/lit8 v2, v10, -0xc

    const/16 v10, 0xc

    new-array v6, v10, [B

    new-array v3, v2, [B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v12, :cond_2

    aget-byte v10, p0, v5

    aput-byte v10, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    array-length v10, v3

    if-ge v5, v10, :cond_3

    add-int/lit8 v10, v5, 0xc

    aget-byte v10, p0, v10

    aput-byte v10, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v10, "AES/GCM/NoPadding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v10, 0x80

    invoke-direct {v4, v10, v6}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v10, 0x2

    invoke-virtual {v0, v10, v9, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    :catch_0
    move-exception v1

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MDFUtils::Got exception during MDF decryption"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v13
.end method

.method public static encryptMdf([BLjava/lang/String;)[B
    .locals 23

    :try_start_0
    const-string/jumbo v18, "AndroidKeyStore"

    invoke-static/range {v18 .. v18}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v11

    check-cast v11, Ljavax/crypto/SecretKey;

    if-nez v11, :cond_0

    const-string/jumbo v18, "android.security.keystore.KeyGenParameterSpec$Builder"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const-class v19, Ljava/lang/String;

    const/16 v20, 0x0

    aput-object v19, v18, v20

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x1

    aput-object v19, v18, v20

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    invoke-virtual/range {v17 .. v18}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    const-string/jumbo v18, "setKeySize"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    const-string/jumbo v18, "setEncryptionPaddings"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const-class v20, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const-string/jumbo v18, "setBlockModes"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const-class v20, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const-string/jumbo v19, "build"

    const/16 v18, 0x0

    check-cast v18, [Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "GCM"

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const/16 v20, 0x0

    aput-object v19, v18, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x100

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "NoPadding"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/spec/AlgorithmParameterSpec;

    const-string/jumbo v18, "AES"

    const-string/jumbo v19, "AndroidKeyStore"

    invoke-static/range {v18 .. v19}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v8}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v11

    :cond_0
    const-string/jumbo v18, "AES/GCM/NoPadding"

    invoke-static/range {v18 .. v18}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    array-length v0, v6

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xc

    move/from16 v0, v18

    new-array v10, v0, [B

    const/4 v7, 0x0

    :goto_0
    const/16 v18, 0xc

    move/from16 v0, v18

    if-ge v7, v0, :cond_1

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v18

    aget-byte v18, v18, v7

    aput-byte v18, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_1
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_2

    add-int/lit8 v18, v7, 0xc

    aget-byte v19, v6, v7

    aput-byte v19, v10, v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    return-object v10

    :catch_0
    move-exception v5

    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "MDFUtils::Got exception during MDF encryption: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v18, 0x0

    return-object v18
.end method

.method public static getName()Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->getPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/cmdline"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->read()I

    move-result v0

    if-lez v0, :cond_2

    int-to-char v8, v0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v4, v5

    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    return-object v11

    :cond_2
    :try_start_4
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_3
    return-object v8

    :catch_1
    move-exception v1

    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MdfUtils::getName encountered an exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v1

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MdfUtils::getName encountered an exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_5
    throw v8

    :catch_3
    move-exception v1

    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MdfUtils::getName encountered an exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v8

    move-object v4, v5

    goto :goto_4

    :catchall_2
    move-exception v8

    move-object v4, v5

    move-object v6, v7

    goto :goto_4

    :catch_4
    move-exception v2

    goto/16 :goto_1

    :catch_5
    move-exception v2

    move-object v4, v5

    goto/16 :goto_1
.end method

.method public static getPid()I
    .locals 5

    :try_start_0
    const-string/jumbo v3, "android.os.Process"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v4, "myPid"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    const/4 v3, -0x1

    return v3
.end method

.method public static getUid()I
    .locals 5

    :try_start_0
    const-string/jumbo v3, "android.os.Process"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v4, "myUid"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    const/4 v3, -0x1

    return v3
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 6

    const/4 v4, 0x0

    const/16 v5, 0x10

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "MDFUtils::Unable to convert the string, the length is invalid"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static isCertificateAllowed([Ljavax/security/auth/x500/X500Principal;[Ljava/security/cert/X509Certificate;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    return v4

    :cond_1
    if-eqz p0, :cond_2

    array-length v2, p0

    if-nez v2, :cond_3

    :cond_2
    return v5

    :cond_3
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_6

    aget-object v2, p1, v0

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_5

    aget-object v2, p0, v1

    if-eqz v2, :cond_4

    aget-object v2, p0, v1

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v4
.end method

.method public static isHostnameAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x2e

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/security/mdf/MdfUtils;->acceptableCountryWildcard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static native isMdfDisabled()Z
.end method

.method public static native isMdfEnabled()Z
.end method

.method public static native isMdfEnforced()Z
.end method

.method public static native isMdfReady()Z
.end method

.method public static native isMdfSupported()Z
.end method

.method public static logMdf(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/samsung/android/security/mdf/MdfUtils;->logMdf(ZLjava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method public static logMdf(ZLjava/lang/String;ZILjava/lang/String;)V
    .locals 9

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v6, "android.sec.enterprise.EnterpriseDeviceManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v6, "android.sec.enterprise.auditlog.AuditLog"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v6, 0x6

    new-array v1, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v1, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v1, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x4

    aput-object v6, v1, v7

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x5

    aput-object v6, v1, v7

    const/4 v6, 0x6

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v2, v7

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v2, v7

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->getPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v2, v7

    const/4 v6, 0x4

    aput-object p4, v2, v6

    const/4 v6, 0x5

    aput-object p1, v2, v6

    const-string/jumbo v6, "logPrivileged"

    invoke-virtual {v0, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v4

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MdfUtils::AuditLog encountered an exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static native updateMdfStatus()I
.end method

.method public static native updateMdfVersion()Ljava/lang/String;
.end method

.method public static native verifyVPN()I
.end method


# virtual methods
.method public native FIPS_Openssl_SelfTest()I
.end method

.method public native getCCModeFlag()I
.end method

.method public native getFipsStatus()I
.end method

.method public native getSBFlag()I
.end method

.method public native getTamperFlag()I
.end method

.method public native setCCModeFlag(I)I
.end method

.method public native setSBFlagOff()I
.end method

.method public native setSBFlagOn()I
.end method
