.class abstract Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;
.super Ljava/security/SignatureSpi;
.source "AndroidKeyStoreSignatureSpiBase.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# instance fields
.field private mCachedException:Ljava/lang/Exception;

.field private mKey:Landroid/security/keystore/AndroidKeyStoreKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;

.field private mSigning:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    invoke-virtual {p0, v4}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :goto_0
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v3}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v6

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object v8

    if-nez v8, :cond_4

    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :cond_4
    iget-object v0, v8, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    iget-wide v0, v8, Landroid/security/keymaster/OperationResult;->operationHandle:J

    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    iget v2, v8, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v0, v1, v2}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    move-result-object v7

    if-eqz v7, :cond_5

    throw v7

    :cond_5
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    if-nez v0, :cond_6

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Keystore returned null operation token"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Keystore returned invalid operation handle"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, v8, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    return-void
.end method


# virtual methods
.method protected abstract addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method protected createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 2

    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    return-object v0
.end method

.method protected final engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method protected final engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :try_start_0
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "Unsupported key: null"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :cond_0
    throw v3

    :cond_1
    :try_start_1
    instance-of v3, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    move-object v1, v0

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    invoke-virtual {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported private key type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected final engineInitVerify(Ljava/security/PublicKey;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :try_start_0
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "Unsupported key: null"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :cond_0
    throw v3

    :cond_1
    :try_start_1
    instance-of v3, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-object v1, v0

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    invoke-virtual {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported public key type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected final engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method protected final engineSign([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method protected final engineSign()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/SignatureException;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->getAdditionalEntropyAmountForSign()I

    move-result v1

    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v5

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    return-object v7

    :catch_0
    move-exception v6

    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected final engineUpdate(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [B

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V

    return-void
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int v3, v4, v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0, v3, v2}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    new-array v0, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :catch_0
    move-exception v1

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    goto :goto_1
.end method

.method protected final engineUpdate([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/security/SignatureException;

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_1

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v3, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    array-length v3, v2

    if-eqz v3, :cond_2

    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Update operation unexpectedly produced output: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v0

    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    return-void
.end method

.method protected final engineVerify([B)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/SignatureException;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    move-result-object v8

    array-length v0, v8

    if-eqz v0, :cond_1

    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Signature verification unexpected produced output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v7

    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 v9, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    return v9

    :pswitch_0
    const/4 v9, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1e
        :pswitch_0
    .end packed-switch
.end method

.method protected final engineVerify([BII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineVerify([B)Z

    move-result v0

    return v0
.end method

.method protected abstract getAdditionalEntropyAmountForSign()I
.end method

.method protected final getKeyStore()Landroid/security/KeyStore;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method public final getOperationHandle()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    return-wide v0
.end method

.method protected initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    return-void
.end method

.method protected final isSigning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    return v0
.end method

.method protected resetAll()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void
.end method

.method protected resetWhilePreservingInitState()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void
.end method
