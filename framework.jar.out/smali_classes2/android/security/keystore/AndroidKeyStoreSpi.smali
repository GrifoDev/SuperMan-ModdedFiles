.class public Landroid/security/keystore/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "AndroidKeyStore"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return-void
.end method

.method private getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;
    .locals 4

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v1, v2, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    move-result-object v2

    return-object v2

    :cond_1
    return-object v0
.end method

.method private getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method private static getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "EC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "NONE"

    aput-object v3, v2, v5

    const-string/jumbo v3, "SHA-1"

    aput-object v3, v2, v6

    const-string/jumbo v3, "SHA-224"

    aput-object v3, v2, v7

    const-string/jumbo v3, "SHA-256"

    aput-object v3, v2, v8

    const-string/jumbo v3, "SHA-384"

    aput-object v3, v2, v4

    const-string/jumbo v3, "SHA-512"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    :goto_0
    invoke-virtual {v1, v5}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v2, "RSA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "NONE"

    aput-object v3, v2, v5

    const-string/jumbo v3, "MD5"

    aput-object v3, v2, v6

    const-string/jumbo v3, "SHA-1"

    aput-object v3, v2, v7

    const-string/jumbo v3, "SHA-224"

    aput-object v3, v2, v8

    const-string/jumbo v3, "SHA-256"

    aput-object v3, v2, v4

    const-string/jumbo v3, "SHA-384"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string/jumbo v3, "SHA-512"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "NoPadding"

    aput-object v3, v2, v5

    const-string/jumbo v3, "PKCS1Padding"

    aput-object v3, v2, v6

    const-string/jumbo v3, "OAEPPadding"

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "PKCS1"

    aput-object v3, v2, v5

    const-string/jumbo v3, "PSS"

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {v1, v5}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported key algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getModificationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v2, p1, v3}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method private getUniqueAliases()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v5, ""

    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v4, v5, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    return-object v4

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    array-length v4, v3

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v3, v4

    const/16 v6, 0x5f

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v2, :cond_2

    :cond_1
    const-string/jumbo v6, "AndroidKeyStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid alias: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private isCSRRelated(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    new-instance v5, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v5}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRPKEY_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0x70000899

    invoke-virtual {v5, v0}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isCertificateEntry(Ljava/lang/String;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isKeyEntry(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isPrivateKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPrivateKeyEntry(Ljava/lang/String;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isSecretKeyEntry(Ljava/lang/String;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/16 v21, 0x0

    const/16 v33, 0x0

    const/4 v4, 0x0

    const/16 v23, 0x0

    const/16 v36, 0x0

    const/16 v31, 0x0

    const/4 v12, 0x0

    const/16 v24, 0x0

    const/16 v39, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-nez p2, :cond_2

    invoke-direct/range {p0 .. p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isCSRRelated(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v39, 0x1

    const/16 v45, 0x0

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v6, v0

    if-nez v6, :cond_a

    :cond_1
    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "Must supply at least one Certificate with PrivateKey"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    if-nez p4, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v45

    goto :goto_0

    :cond_3
    move-object/from16 v0, p4

    instance-of v6, v0, Landroid/security/KeyStoreParameter;

    if-eqz v6, :cond_4

    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v45

    move-object/from16 v40, p4

    check-cast v40, Landroid/security/KeyStoreParameter;

    invoke-virtual/range {v40 .. v40}, Landroid/security/KeyStoreParameter;->isEncryptionRequired()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v21, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p4

    instance-of v6, v0, Landroid/security/keystore/KeyProtection;

    if-eqz v6, :cond_5

    move-object/from16 v45, p4

    check-cast v45, Landroid/security/keystore/KeyProtection;

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v21, 0x8

    goto :goto_0

    :cond_5
    move-object/from16 v0, p4

    instance-of v6, v0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [C

    const/16 v8, 0x1e

    const/4 v9, 0x0

    aput-char v8, v7, v9

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [C

    const/16 v8, 0x1f

    const/4 v9, 0x0

    aput-char v8, v7, v9

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "malformed alias"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7
    move-object/from16 v6, p4

    check-cast v6, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual {v6}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->getKeyProtection()Landroid/security/keystore/KeyProtection;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v21, 0x8

    :cond_8
    move-object/from16 v6, p4

    check-cast v6, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual {v6}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->isKnoxObjectProtectionRequired()Z

    move-result v33

    move-object/from16 v6, p4

    check-cast v6, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual {v6}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->getAccessorIds()Ljava/util/List;

    move-result-object v4

    check-cast p4, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->getAdministratorIds()Ljava/util/List;

    move-result-object v23

    goto/16 :goto_0

    :cond_9
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported protection parameter class:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Landroid/security/KeyStoreParameter;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    move-object/from16 v0, p3

    array-length v6, v0

    new-array v0, v6, [Ljava/security/cert/X509Certificate;

    move-object/from16 v49, v0

    const/16 v32, 0x0

    :goto_1
    move-object/from16 v0, p3

    array-length v6, v0

    move/from16 v0, v32

    if-ge v0, v6, :cond_d

    const-string/jumbo v6, "X.509"

    aget-object v7, p3, v32

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_b
    aget-object v6, p3, v32

    instance-of v6, v6, Ljava/security/cert/X509Certificate;

    if-nez v6, :cond_c

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c
    aget-object v6, p3, v32

    check-cast v6, Ljava/security/cert/X509Certificate;

    aput-object v6, v49, v32

    add-int/lit8 v32, v32, 0x1

    goto :goto_1

    :cond_d
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v49, v6

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v48

    move-object/from16 v0, p3

    array-length v6, v0

    const/4 v7, 0x1

    if-le v6, v7, :cond_f

    move-object/from16 v0, v49

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    new-array v0, v6, [[B

    move-object/from16 v26, v0

    const/16 v47, 0x0

    const/16 v32, 0x0

    :goto_2
    move-object/from16 v0, v26

    array-length v6, v0

    move/from16 v0, v32

    if-ge v0, v6, :cond_e

    add-int/lit8 v6, v32, 0x1

    :try_start_1
    aget-object v6, v49, v6

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    aput-object v6, v26, v32

    aget-object v6, v26, v32

    array-length v6, v6
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    add-int v47, v47, v6

    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    :catch_0
    move-exception v29

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "Failed to encode certificate #0"

    move-object/from16 v0, v29

    invoke-direct {v6, v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v29

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to encode certificate #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-direct {v6, v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_e
    move/from16 v0, v47

    new-array v0, v0, [B

    move-object/from16 v27, v0

    const/16 v41, 0x0

    const/16 v32, 0x0

    :goto_3
    move-object/from16 v0, v26

    array-length v6, v0

    move/from16 v0, v32

    if-ge v0, v6, :cond_10

    aget-object v6, v26, v32

    array-length v0, v6

    move/from16 v25, v0

    aget-object v6, v26, v32

    const/4 v7, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v41

    move/from16 v2, v25

    invoke-static {v6, v7, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int v41, v41, v25

    const/4 v6, 0x0

    aput-object v6, v26, v32

    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    :cond_f
    const/16 v27, 0x0

    :cond_10
    if-nez p2, :cond_12

    if-eqz v39, :cond_12

    const/16 v42, 0x0

    :goto_4
    if-nez p2, :cond_14

    if-eqz v39, :cond_14

    const/16 v44, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    :goto_5
    const/16 v46, 0x0

    if-eqz v44, :cond_1e

    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v6, v0, v7}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    new-instance v22, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct/range {v22 .. v22}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move/from16 v20, v0

    const/16 v18, 0x1

    move-object/from16 v17, v5

    invoke-virtual/range {v15 .. v22}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v30

    const/4 v6, 0x1

    move/from16 v0, v30

    if-eq v0, v6, :cond_1f

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "Failed to store private key"

    invoke-static/range {v30 .. v30}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v6

    if-nez v46, :cond_11

    if-eqz v44, :cond_24

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v7, v0, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :cond_11
    :goto_6
    throw v6

    :cond_12
    move-object/from16 v0, p2

    instance-of v6, v0, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v6, :cond_13

    move-object/from16 v6, p2

    check-cast v6, Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v6}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v42

    goto :goto_4

    :cond_13
    const/16 v42, 0x0

    goto :goto_4

    :cond_14
    if-eqz v42, :cond_16

    const-string/jumbo v6, "USRPKEY_"

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-string/jumbo v6, "USRPKEY_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can only replace keys with same alias: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_15
    const/16 v44, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_16
    const/16 v44, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_17

    const-string/jumbo v6, "PKCS#8"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_18

    :cond_17
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported private key export format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Only private keys which export their key material in PKCS#8 format are"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_18
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v19

    if-nez v19, :cond_19

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "Private key did not export any key material"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_19
    new-instance v5, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v6

    const v7, 0x10000002

    invoke-virtual {v5, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v43

    invoke-static/range {v43 .. v43}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v6

    const v7, 0x20000001

    invoke-virtual {v5, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v6

    const v7, 0x20000005

    invoke-virtual {v5, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    :cond_1a
    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v6

    const v7, 0x20000004

    invoke-virtual {v5, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v37

    and-int/lit8 v6, v43, 0x1

    if-eqz v6, :cond_1c

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v6, 0x0

    move-object/from16 v0, v37

    array-length v7, v0

    :goto_7
    if-ge v6, v7, :cond_1c

    aget v38, v37, v6

    invoke-static/range {v38 .. v38}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v8

    if-nez v8, :cond_1b

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v38 .. v38}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". See KeyProtection documentation."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v28

    new-instance v6, Ljava/security/KeyStoreException;

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_1c
    const v6, 0x20000006

    :try_start_4
    move-object/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v6

    const v7, 0x20000006

    invoke-virtual {v5, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    move-result v6

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    move-result v7

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationValidWhileOnBody()Z

    move-result v8

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->isInvalidatedByBiometricEnrollment()Z

    move-result v9

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->getBoundToSpecificSecureUserId()J

    move-result-wide v10

    invoke-static/range {v5 .. v11}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V

    if-eqz v33, :cond_1d

    move-object v6, v4

    move-object/from16 v7, v23

    move-object/from16 v8, v36

    move-object/from16 v9, v31

    move-object/from16 v10, v24

    move/from16 v11, v39

    invoke-static/range {v5 .. v14}, Landroid/security/keystore/KeymasterUtils;->addKnoxArgs(Landroid/security/keymaster/KeymasterArguments;Ljava/util/List;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[BLjavax/security/auth/x500/X500Principal;[B)V

    :cond_1d
    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v6

    const v7, 0x60000190

    invoke-virtual {v5, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v6

    const v7, 0x60000191

    invoke-virtual {v5, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual/range {v45 .. v45}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v6

    const v7, 0x60000192

    invoke-virtual {v5, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5

    :cond_1e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v6, v0, v7}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v6, v0, v7}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :cond_1f
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USRCERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, v48

    move/from16 v1, v21

    invoke-virtual {v6, v7, v0, v8, v1}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v30

    const/4 v6, 0x1

    move/from16 v0, v30

    if-eq v0, v6, :cond_20

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "Failed to store certificate #0"

    invoke-static/range {v30 .. v30}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_20
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CACERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v6, v7, v0, v8, v1}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v30

    const/4 v6, 0x1

    move/from16 v0, v30

    if-eq v0, v6, :cond_21

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "Failed to store certificate chain"

    invoke-static/range {v30 .. v30}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_21
    const/16 v46, 0x1

    if-nez v46, :cond_22

    if-eqz v44, :cond_23

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v6, v0, v7}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :cond_22
    :goto_8
    return-void

    :cond_23
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v6, v0, v7}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v6, v0, v7}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_24
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v7, v0, v8}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v7, v0, v8}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    goto/16 :goto_6
.end method

.method private setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    instance-of v6, v0, Landroid/security/keystore/KeyProtection;

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    move-object/from16 v0, p3

    instance-of v6, v0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported protection parameter class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/16 v40, 0x0

    const/16 v28, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    const/16 v31, 0x0

    const/16 v27, 0x0

    const/4 v12, 0x0

    const/16 v24, 0x0

    const/16 v39, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    instance-of v6, v0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    if-eqz v6, :cond_1

    move-object/from16 v6, p3

    check-cast v6, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual {v6}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->getKeyProtection()Landroid/security/keystore/KeyProtection;

    move-result-object v40

    check-cast p3, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->isKnoxObjectProtectionRequired()Z

    move-result v28

    :goto_0
    move-object/from16 v0, p2

    instance-of v6, v0, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-eqz v6, :cond_6

    check-cast p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getAlias()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_2

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "KeyStore-backed secret key does not have an alias"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object/from16 v40, p3

    check-cast v40, Landroid/security/keystore/KeyProtection;

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "USRSKEY_"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "KeyStore-backed secret key has invalid alias: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    const-string/jumbo v6, "USRSKEY_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can only replace KeyStore-backed keys with same alias: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    if-eqz v40, :cond_5

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "Modifying KeyStore-backed key using protection parameters not supported"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    return-void

    :cond_6
    if-nez v40, :cond_7

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "Protection parameters must be specified when importing a symmetric key"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_8

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "Only secret keys that export their key material are supported"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    const-string/jumbo v6, "RAW"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported secret key material export format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_9
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v19

    if-nez v19, :cond_a

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "Key did not export its key material despite supporting RAW format export"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    new-instance v5, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v32

    const v6, 0x10000002

    move/from16 v0, v32

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const/16 v6, 0x80

    move/from16 v0, v32

    if-ne v0, v6, :cond_d

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    move-result v37

    const/4 v6, -0x1

    move/from16 v0, v37

    if-ne v0, v6, :cond_b

    new-instance v6, Ljava/security/ProviderException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "HMAC key algorithm digest unknown for key algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v25

    new-instance v6, Ljava/security/KeyStoreException;

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_b
    const/4 v6, 0x1

    :try_start_1
    new-array v0, v6, [I

    move-object/from16 v35, v0

    const/4 v6, 0x0

    aput v37, v35, v6

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v36

    move-object/from16 v0, v36

    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    const/4 v6, 0x0

    aget v6, v36, v6

    move/from16 v0, v37

    if-eq v6, v0, :cond_e

    :cond_c
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported digests specification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Only "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v37 .. v37}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " supported for HMAC key algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_d
    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v35

    :cond_e
    :goto_1
    const v6, 0x20000005

    move-object/from16 v0, v35

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v41

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v34

    and-int/lit8 v6, v41, 0x1

    if-eqz v6, :cond_11

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, 0x0

    move-object/from16 v0, v34

    array-length v7, v0

    :goto_2
    if-ge v6, v7, :cond_11

    aget v33, v34, v6

    invoke-static/range {v33 .. v33}, Landroid/security/keystore/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v8

    if-nez v8, :cond_10

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v33 .. v33}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". See KeyProtection documentation."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_f
    sget-object v35, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_1

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_11
    invoke-static/range {v41 .. v41}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v6

    const v7, 0x20000001

    invoke-virtual {v5, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v6, 0x20000004

    move-object/from16 v0, v34

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_12

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "Signature paddings not supported for symmetric keys"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_12
    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v38

    const v6, 0x20000006

    move-object/from16 v0, v38

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    move-result v6

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    move-result v7

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationValidWhileOnBody()Z

    move-result v8

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->isInvalidatedByBiometricEnrollment()Z

    move-result v9

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->getBoundToSpecificSecureUserId()J

    move-result-wide v10

    invoke-static/range {v5 .. v11}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V

    if-eqz v28, :cond_13

    move-object v6, v4

    move-object/from16 v7, v23

    move-object/from16 v8, v31

    move-object/from16 v9, v27

    move-object/from16 v10, v24

    move/from16 v11, v39

    invoke-static/range {v5 .. v14}, Landroid/security/keystore/KeymasterUtils;->addKnoxArgs(Landroid/security/keymaster/KeymasterArguments;Ljava/util/List;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[BLjavax/security/auth/x500/X500Principal;[B)V

    :cond_13
    move/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v5, v0, v1, v2}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v6

    const v7, 0x60000190

    invoke-virtual {v5, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v6

    const v7, 0x60000191

    invoke-virtual {v5, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v6

    const v7, 0x60000192

    invoke-virtual {v5, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    and-int/lit8 v6, v41, 0x1

    if-eqz v6, :cond_14

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_14

    const v6, 0x70000007

    invoke-virtual {v5, v6}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_14
    const/16 v21, 0x0

    invoke-virtual/range {v40 .. v40}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v21, 0x8

    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v6, v0, v7}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "USRSKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move/from16 v20, v0

    new-instance v22, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct/range {v22 .. v22}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/16 v18, 0x3

    move-object/from16 v17, v5

    invoke-virtual/range {v15 .. v22}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v26

    const/4 v6, 0x1

    move/from16 v0, v26

    if-eq v0, v6, :cond_16

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to import secret key. Keystore error code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_16
    return-void
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 4

    :try_start_0
    const-string/jumbo v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AndroidKeyStore"

    const-string/jumbo v3, "Couldn\'t parse certificate in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private static toCertificates([B)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AndroidKeyStore"

    const-string/jumbo v3, "Couldn\'t parse certificates in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method private static wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    invoke-direct {v0, p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;-><init>(Ljava/lang/String;ILjava/security/cert/X509Certificate;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected baseAndroidSecurityKeystore()Landroid/security/KeyStore;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method protected baseUid()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return v0
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v0, p1, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to delete entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public engineGetCSR(Ljava/lang/String;)[B
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRCSR_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v4
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 14

    const/4 v7, 0x0

    const/4 v13, 0x0

    if-nez p1, :cond_0

    return-object v13

    :cond_0
    const-string/jumbo v8, "X.509"

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    return-object v13

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-nez v6, :cond_2

    return-object v13

    :catch_0
    move-exception v4

    return-object v13

    :cond_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v9, "USRCERT_"

    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v9, v2

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_5

    aget-object v0, v2, v8

    iget-object v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v10, v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_3

    return-object v0

    :cond_5
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v9, "CACERT_"

    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_8

    array-length v8, v1

    :goto_1
    if-ge v7, v8, :cond_8

    aget-object v0, v1, v7

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    iget-object v9, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "CACERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v9, v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_6

    return-object v0

    :cond_8
    return-object v13
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 10

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "alias == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    if-nez v6, :cond_1

    return-object v7

    :cond_1
    iget-object v7, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v7, v8, v9}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    aput-object v7, v2, v3

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    :cond_3
    const/4 v7, 0x0

    aput-object v6, v2, v7

    return-object v2
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isPrivateKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v2, v0, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRSKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v2, v1, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreSecretKey;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "InputStream not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return-void
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;->getUid()I

    move-result v0

    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported param type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/security/KeyStoreException;

    const-string/jumbo v3, "Entry exists and is not a trusted certificate"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "cert == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/security/KeyStoreException;

    const-string/jumbo v3, "Couldn\'t insert certificate; is KeyStore initialized?"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    return-void
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v3, Ljava/security/KeyStoreException;

    const-string/jumbo v4, "entry == null"

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v3, p1, v4}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    instance-of v3, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v3, :cond_1

    move-object v2, p2

    check-cast v2, Ljava/security/KeyStore$TrustedCertificateEntry;

    invoke-virtual {v2}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    return-void

    :cond_1
    instance-of v3, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v3, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    :goto_0
    return-void

    :cond_2
    instance-of v3, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v3, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-direct {p0, p1, v3, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Entry must be a PrivateKeyEntry, SecretKeyEntry or TrustedCertificateEntry; was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "entries cannot be protected with passwords"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isCSRRelated(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v1, p4, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v0, p1, v1}, Landroid/security/Credentials;->deleteCSRTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/security/PrivateKey;

    invoke-direct {p0, p1, p2, p4, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_3

    check-cast p2, Ljavax/crypto/SecretKey;

    invoke-direct {p0, p1, p2, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Only PrivateKey and SecretKey are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Operation not supported because key encoding is unknown"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 1

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
