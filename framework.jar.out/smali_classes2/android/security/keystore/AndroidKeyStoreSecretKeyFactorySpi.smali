.class public Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "AndroidKeyStoreSecretKeyFactorySpi.java"


# static fields
.field private static final KEY_USAGE_NUM:I = 0x9


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method private static getGateKeeperSecureUserId()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string/jumbo v2, "Failed to get GateKeeper secure user ID"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;
    .locals 42

    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v29

    const/4 v2, 0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to obtain information about key. Keystore error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100002be

    invoke-virtual {v2, v3}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v10, 0x1

    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100002be

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v11

    :goto_0
    const-wide/16 v2, -0x1

    const v4, 0x30000003

    invoke-virtual {v7, v4, v2, v3}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v32

    const-wide/16 v2, -0x1

    cmp-long v2, v32, v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/security/ProviderException;

    const-string/jumbo v3, "Key size not available"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v26

    new-instance v2, Ljava/security/ProviderException;

    const-string/jumbo v3, "Unsupported key characteristic"

    move-object/from16 v0, v26

    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    :try_start_1
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100002be

    invoke-virtual {v2, v3}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v10, 0x0

    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100002be

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v11

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/security/ProviderException;

    const-string/jumbo v3, "Key origin not available"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v32, v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Key too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bits"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-wide/from16 v0, v32

    long-to-int v12, v0

    const v2, 0x20000001

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->allFromKeymaster(Ljava/util/Collection;)I

    move-result v16

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x20000006

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v34

    :try_start_2
    invoke-static/range {v34 .. v34}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v26

    :try_start_3
    invoke-static/range {v34 .. v34}, Landroid/security/keystore/KeyProperties$SignaturePadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v27

    :try_start_4
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported encryption padding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    const v2, 0x20000005

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v19

    const v2, 0x20000004

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v20

    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100001f8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v37

    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100001f8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v31

    const v2, -0x5ffffe0a

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v36

    const v2, 0x60000190

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v13

    const v2, 0x60000191

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v14

    const v2, 0x60000192

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v15

    const v2, 0x700001f7

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    move-result v2

    xor-int/lit8 v21, v2, 0x1

    const-wide/16 v2, -0x1

    const v4, 0x300001f9

    invoke-virtual {v7, v4, v2, v3}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v40

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v40, v2

    if-lez v2, :cond_6

    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User authentication timeout validity too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v40

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    if-eqz v21, :cond_a

    if-eqz v31, :cond_a

    if-nez v37, :cond_9

    const/16 v23, 0x1

    :goto_2
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x700001fa

    invoke-virtual {v2, v3}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v24

    const/16 v25, 0x0

    const/4 v2, 0x2

    move/from16 v0, v37

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_8

    :cond_7
    if-eqz v36, :cond_b

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getGateKeeperSecureUserId()Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v25, v2, 0x1

    :cond_8
    :goto_3
    new-instance v8, Landroid/security/keystore/KeyInfo;

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v25}, Landroid/security/keystore/KeyInfo;-><init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIZZZ)V

    return-object v8

    :cond_9
    const/16 v23, 0x0

    goto :goto_2

    :cond_a
    const/16 v23, 0x0

    goto :goto_2

    :cond_b
    const/16 v25, 0x0

    goto :goto_3
.end method

.method static getKnoxKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/knox/keystore/KnoxKeyInfo;
    .locals 34

    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v28

    const/4 v2, 0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to obtain information about key. Keystore error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static/range {p0 .. p3}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;

    move-result-object v9

    const v2, 0x700007d0

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    move-result v10

    const v2, -0x6ffff82f

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getBytes(I)[B

    move-result-object v27

    const/4 v12, 0x0

    if-eqz v27, :cond_1

    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    :cond_1
    const v2, -0x6ffff82e

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getBytes(I)[B

    move-result-object v23

    const/4 v13, 0x0

    if-eqz v23, :cond_2

    new-instance v22, Ljava/lang/String;

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v2, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    :cond_2
    const v2, -0x6ffff82d

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getBytes(I)[B

    move-result-object v20

    const/4 v11, 0x0

    if-eqz v20, :cond_5

    new-instance v19, Ljava/lang/String;

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v2, "AndroidKeyStoreSecretKeyFactorySpi: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accessorIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string/jumbo v2, "DETERMINED_BY_CCM"

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "AndroidKeyStoreSecretKeyFactorySpi: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CCM CSR alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v26, "u0_system_server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->listAccessorsFromDb(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_3

    move-object/from16 v0, v21

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to obtain information about key. Keystore error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v2, 0x0

    aget-object v2, v21, v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string/jumbo v2, "AndroidKeyStoreSecretKeyFactorySpi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accessor list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-wide/16 v2, 0x0

    const v4, 0x30000838

    invoke-virtual {v7, v4, v2, v3}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v32

    const/16 v2, 0x9

    new-array v14, v2, [Z

    const/16 v31, 0x0

    :goto_0
    const/16 v2, 0x9

    move/from16 v0, v31

    if-ge v0, v2, :cond_7

    const-wide/16 v2, 0x1

    shl-long v2, v2, v31

    and-long v2, v2, v32

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, v14, v31

    add-int/lit8 v31, v31, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    const v2, -0x6ffff7c7

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getBytes(I)[B

    move-result-object v29

    const/4 v15, 0x0

    if-eqz v29, :cond_8

    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    :cond_8
    const v2, -0x6ffff7ca

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getBytes(I)[B

    move-result-object v25

    const/16 v16, 0x0

    if-eqz v25, :cond_9

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :cond_9
    const v2, 0x70000899

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    move-result v17

    const v2, -0x6ffff7c6

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getBytes(I)[B

    move-result-object v18

    new-instance v8, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;

    invoke-direct/range {v8 .. v18}, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;-><init>(Landroid/security/keystore/KeyInfo;ZLjava/util/List;Ljava/lang/String;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[B)V

    return-object v8
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "To generate secret key in Android Keystore, use KeyGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v5, "keySpecClass == null"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    instance-of v4, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v4, :cond_2

    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Only Android KeyStore secret keys supported: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const-string/jumbo v4, "null"

    goto :goto_0

    :cond_2
    const-class v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v5, "Key material export of Android KeyStore keys is not supported"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const-class v4, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-class v4, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported key spec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move-object v2, p1

    check-cast v2, Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "USRSKEY_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "USRSKEY_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-class v4, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v5

    invoke-static {v4, v0, v1, v5}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;

    move-result-object v3

    :cond_5
    :goto_1
    return-object v3

    :cond_6
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid key alias: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    const-class v4, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v5

    invoke-static {v4, v0, v1, v5}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKnoxKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/knox/keystore/KnoxKeyInfo;

    move-result-object v3

    goto :goto_1
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "To import a secret key into Android Keystore, use KeyStore.setEntry"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p1
.end method
