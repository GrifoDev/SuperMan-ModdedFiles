.class public final Landroid/media/MediaDescrambler;
.super Ljava/lang/Object;
.source "MediaDescrambler.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDescrambler$DescrambleInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaDescrambler"


# instance fields
.field private mIDescrambler:Landroid/media/IDescrambler;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MediaDescrambler;->native_init()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/media/IMediaCasService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IMediaCasService;->createDescrambler(I)Landroid/media/IDescrambler;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported CA_system_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "MediaDescrambler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to create descrambler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported CA_system_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;

    if-nez v2, :cond_0

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported CA_system_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    throw v1

    :cond_1
    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;

    invoke-interface {v1}, Landroid/media/IDescrambler;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaDescrambler;->native_setup(Landroid/os/IBinder;)V

    return-void
.end method

.method private final cleanupAndRethrowIllegalState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private final native native_descramble(BI[I[ILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
.end method

.method private static final native native_init()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Landroid/os/IBinder;)V
.end method

.method private final validateInternalStates()V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;

    invoke-interface {v1}, Landroid/media/IDescrambler;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v2, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;

    :cond_0
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->native_release()V

    return-void

    :catchall_0
    move-exception v1

    iput-object v2, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final descramble(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$CryptoInfo;)I
    .locals 12

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    iget v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid CryptoInfo: invalid numSubSamples="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid CryptoInfo: clearData and encryptedData size arrays are both null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-eqz v0, :cond_2

    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    array-length v0, v0

    iget v1, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid CryptoInfo: numBytesOfClearData is too small!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v0, :cond_3

    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    array-length v0, v0

    iget v1, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-ge v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid CryptoInfo: numBytesOfEncryptedData is too small!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    if-eqz v0, :cond_4

    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid CryptoInfo: key array is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_0
    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    iget v2, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object v3, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object v4, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    move-object v0, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Landroid/media/MediaDescrambler;->native_descramble(BI[I[ILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v11

    invoke-static {v11}, Landroid/media/MediaCasStateException;->throwExceptions(Landroid/os/ServiceSpecificException;)V

    const/4 v0, -0x1

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescrambler;->close()V

    return-void
.end method

.method getBinder()Landroid/os/IBinder;
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;

    invoke-interface {v0}, Landroid/media/IDescrambler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;

    invoke-interface {v1, p1}, Landroid/media/IDescrambler;->requiresSecureDecoderComponent(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    const/4 v1, 0x1

    return v1
.end method

.method public final setMediaCasSession(Landroid/media/MediaCas$Session;)V
    .locals 4

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/IDescrambler;

    iget-object v3, p1, Landroid/media/MediaCas$Session;->mSessionId:[B

    invoke-interface {v2, v3}, Landroid/media/IDescrambler;->setMediaCasSession([B)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/media/MediaCasStateException;->throwExceptions(Landroid/os/ServiceSpecificException;)V

    goto :goto_0
.end method
