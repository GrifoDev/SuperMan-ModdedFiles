.class Ljavax/crypto/Cipher$SpiAndProviderUpdater;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpiAndProviderUpdater"
.end annotation


# instance fields
.field private final initSpiLock:Ljava/lang/Object;

.field private final specifiedProvider:Ljava/security/Provider;

.field private final specifiedSpi:Ljavax/crypto/CipherSpi;

.field final synthetic this$0:Ljavax/crypto/Cipher;


# direct methods
.method constructor <init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V
    .locals 1

    iput-object p1, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->initSpiLock:Ljava/lang/Object;

    iput-object p2, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedProvider:Ljava/security/Provider;

    iput-object p3, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedSpi:Ljavax/crypto/CipherSpi;

    return-void
.end method


# virtual methods
.method getCurrentSpi(Ljavax/crypto/CipherSpi;)Ljavax/crypto/CipherSpi;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedSpi:Ljavax/crypto/CipherSpi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedSpi:Ljavax/crypto/CipherSpi;

    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->initSpiLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    return-object p1
.end method

.method setCipherSpiImplAndProvider(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V
    .locals 1

    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    invoke-static {v0, p1}, Ljavax/crypto/Cipher;->-set1(Ljavax/crypto/Cipher;Ljavax/crypto/CipherSpi;)Ljavax/crypto/CipherSpi;

    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    invoke-static {v0, p2}, Ljavax/crypto/Cipher;->-set0(Ljavax/crypto/Cipher;Ljava/security/Provider;)Ljava/security/Provider;

    return-void
.end method

.method updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v1, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedSpi:Ljavax/crypto/CipherSpi;

    if-eqz v1, :cond_0

    new-instance v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    iget-object v2, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedSpi:Ljavax/crypto/CipherSpi;

    invoke-direct {v1, v2, p3}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    return-object v1

    :cond_0
    iget-object v2, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->initSpiLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    :try_start_0
    new-instance v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    invoke-direct {v1, p2, p3}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedProvider:Ljava/security/Provider;

    iget-object v3, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    invoke-static {v3}, Ljavax/crypto/Cipher;->-get0(Ljavax/crypto/Cipher;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Ljavax/crypto/Cipher;->tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No provider found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    invoke-static {v4}, Ljavax/crypto/Cipher;->-get0(Ljavax/crypto/Cipher;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    :try_start_2
    iget-object v1, v0, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    iget-object v3, v0, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    invoke-virtual {p0, v1, v3}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->setCipherSpiImplAndProvider(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    new-instance v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    iget-object v3, v0, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    iget-object v4, v0, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v1, v3, v4}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1
.end method

.method updateAndGetSpiAndProvider(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, p1, p2}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string/jumbo v2, "Exception thrown when params == null"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
