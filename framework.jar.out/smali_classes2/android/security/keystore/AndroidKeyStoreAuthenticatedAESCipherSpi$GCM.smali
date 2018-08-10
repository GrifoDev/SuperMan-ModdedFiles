.class abstract Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.super Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "GCM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG_LENGTH_BITS:I = 0x80

.field private static final IV_LENGTH_BYTES:I = 0xc

.field private static final MAX_SUPPORTED_TAG_LENGTH_BITS:I = 0x80

.field static final MIN_SUPPORTED_TAG_LENGTH_BITS:I = 0x60


# instance fields
.field private mTagLengthBits:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;-><init>(II)V

    const/16 v0, 0x80

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    int-to-long v0, v0

    const v2, 0x300003eb

    invoke-virtual {p1, v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    return-void
.end method

.method protected final createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 3

    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    return-object v0
.end method

.method protected createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 3

    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;)V

    return-object v1
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->getIv()[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    :try_start_0
    const-string/jumbo v4, "GCM"

    invoke-static {v4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    iget v5, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    invoke-direct {v4, v5, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v5, "Failed to initialize GCM AlgorithmParameters"

    invoke-direct {v4, v5, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v0

    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v5, "Failed to obtain GCM AlgorithmParameters"

    invoke-direct {v4, v5, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    return-object v5
.end method

.method protected final getAdditionalEntropyAmountForBegin()I
    .locals 1

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->getIv()[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final getAdditionalEntropyAmountForFinish()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final getTagLengthBits()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    return v0
.end method

.method protected final initAlgorithmSpecificParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "IV required when decrypting. Use GCMParameterSpec or GCM AlgorithmParameters to provide it."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, "GCM"

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported AlgorithmParameters algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Supported: GCM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    const-class v2, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {p1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljavax/crypto/spec/GCMParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v1}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IV and tag length required when decrypting, but not found in parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    invoke-virtual {p0, v4}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->setIv([B)V

    return-void
.end method

.method protected final initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/16 v6, 0xc

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v4, "GCMParameterSpec must be provided when decrypting"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    return-void

    :cond_1
    instance-of v3, p1, Ljavax/crypto/spec/GCMParameterSpec;

    if-nez v3, :cond_2

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v4, "Only GCMParameterSpec supported"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object v1, p1

    check-cast v1, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v4, "Null IV in GCMParameterSpec"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    array-length v3, v0

    if-eq v3, v6, :cond_4

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported IV length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes. Only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes long IV supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-virtual {v1}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v2

    const/16 v3, 0x60

    if-lt v2, v3, :cond_5

    const/16 v3, 0x80

    if-le v2, v3, :cond_6

    :cond_5
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported tag length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bits"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Supported lengths: 96, 104, 112, 120, 128"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    rem-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_5

    invoke-virtual {p0, v0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->setIv([B)V

    iput v2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    return-void
.end method

.method protected final resetAll()V
    .locals 1

    const/16 v0, 0x80

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->resetAll()V

    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->resetWhilePreservingInitState()V

    return-void
.end method
