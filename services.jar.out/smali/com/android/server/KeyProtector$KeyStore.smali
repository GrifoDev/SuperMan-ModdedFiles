.class Lcom/android/server/KeyProtector$KeyStore;
.super Ljava/lang/Object;
.source "KeyProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KeyProtector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyStore"
.end annotation


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mUid:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    iput p1, p0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    return-void
.end method


# virtual methods
.method deleteSecretKey(Ljava/lang/String;I)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->-wrap0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    iget v4, p0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    invoke-static {v3, v1, v4}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to delete entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v2
.end method

.method exists(Ljava/lang/String;I)Z
    .locals 2

    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->-wrap0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/KeyProtector$KeyStore;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method getSecretKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;
    .locals 5

    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->-wrap0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/KeyProtector$KeyStore;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USRSKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    iget v4, p0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    invoke-static {v3, v2, v4}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreSecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method isSecretKeyEntry(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSecretKey(Ljava/lang/String;I)Z
    .locals 27

    const/16 v22, 0x0

    :try_start_0
    const-string/jumbo v6, "AES"

    invoke-static {v6}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v16

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    new-instance v26, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual/range {v16 .. v16}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual/range {v26 .. v26}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v17

    new-instance v6, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v8, 0x3

    invoke-direct {v6, v8}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "GCM"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v6, v8}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "NoPadding"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v6, v8}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v23

    new-instance v5, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v24

    invoke-interface/range {v25 .. v25}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v18

    const/4 v6, 0x0

    new-array v0, v6, [I

    move-object/from16 v20, v0

    invoke-static/range {v24 .. v24}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v21

    const v6, 0x10000002

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v6, 0x20000005

    move-object/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v6, 0x20000001

    move-object/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v19

    const v6, 0x20000004

    move-object/from16 v0, v19

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v6

    const v8, 0x20000006

    invoke-virtual {v5, v8, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    move-result v6

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    move-result v7

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationValidWhileOnBody()Z

    move-result v8

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->isInvalidatedByBiometricEnrollment()Z

    move-result v9

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getBoundToSpecificSecureUserId()J

    move-result-wide v10

    invoke-static/range {v5 .. v11}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v5, v0, v1, v2}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v6

    const v8, 0x60000190

    invoke-virtual {v5, v8, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v6

    const v8, 0x60000191

    invoke-virtual {v5, v8, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v6

    const v8, 0x60000192

    invoke-virtual {v5, v8, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    and-int/lit8 v6, v24, 0x1

    if-eqz v6, :cond_0

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    const v6, 0x70000007

    invoke-virtual {v5, v6}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/android/server/KeyProtector;->-wrap0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    invoke-static {v6, v14, v8}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USRSKEY_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    new-instance v13, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v13}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v9, 0x3

    move-object v8, v5

    move-object/from16 v10, v17

    invoke-virtual/range {v6 .. v13}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v15

    const/4 v6, 0x1

    if-ne v15, v6, :cond_1

    const/16 v22, 0x1

    :goto_0
    if-eqz v22, :cond_2

    invoke-static/range {v17 .. v17}, Lcom/android/server/KeyProtector;->-wrap1([B)V

    :goto_1
    return v22

    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to import secret key. Keystore error code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
