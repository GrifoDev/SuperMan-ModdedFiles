.class public abstract Lsun/security/ssl/SSLContextImpl;
.super Ljavax/net/ssl/SSLContextSpi;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;,
        Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;,
        Lsun/security/ssl/SSLContextImpl$TLS10Context;,
        Lsun/security/ssl/SSLContextImpl$TLS11Context;,
        Lsun/security/ssl/SSLContextImpl$TLS12Context;
    }
.end annotation


# static fields
.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private final clientCache:Lsun/security/ssl/SSLSessionContextImpl;

.field private defaultAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

.field private defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

.field private defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

.field private defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

.field private defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

.field private final ephemeralKeyManager:Lsun/security/ssl/EphemeralKeyManager;

.field private isInitialized:Z

.field private keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

.field private secureRandom:Ljava/security/SecureRandom;

.field private final serverCache:Lsun/security/ssl/SSLSessionContextImpl;

.field private supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

.field private supportedProtocolList:Lsun/security/ssl/ProtocolList;

.field private trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static synthetic -get0()Lsun/security/ssl/Debug;
    .locals 1

    sget-object v0, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljava/security/AlgorithmConstraints;)V

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    new-instance v0, Lsun/security/ssl/EphemeralKeyManager;

    invoke-direct {v0}, Lsun/security/ssl/EphemeralKeyManager;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->ephemeralKeyManager:Lsun/security/ssl/EphemeralKeyManager;

    new-instance v0, Lsun/security/ssl/SSLSessionContextImpl;

    invoke-direct {v0}, Lsun/security/ssl/SSLSessionContextImpl;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->clientCache:Lsun/security/ssl/SSLSessionContextImpl;

    new-instance v0, Lsun/security/ssl/SSLSessionContextImpl;

    invoke-direct {v0}, Lsun/security/ssl/SSLSessionContextImpl;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->serverCache:Lsun/security/ssl/SSLSessionContextImpl;

    return-void
.end method

.method private chooseKeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509ExtendedKeyManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_6

    array-length v2, p1

    if-ge v0, v2, :cond_6

    aget-object v1, p1, v0

    instance-of v2, v1, Ljavax/net/ssl/X509KeyManager;

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Lsun/security/ssl/X509KeyManagerImpl;

    if-nez v2, :cond_1

    instance-of v2, v1, Lsun/security/ssl/SunX509KeyManagerImpl;

    if-eqz v2, :cond_2

    :cond_1
    nop

    nop

    return-object v1

    :cond_2
    new-instance v2, Ljava/security/KeyManagementException;

    const-string/jumbo v3, "FIPS mode: only SunJSSE KeyManagers may be used"

    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    instance-of v2, v1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v2, :cond_4

    nop

    nop

    return-object v1

    :cond_4
    sget-object v2, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "sslctx"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "X509KeyManager passed to SSLContext.init():  need an X509ExtendedKeyManager for SSLEngine use"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    new-instance v2, Lsun/security/ssl/AbstractKeyManagerWrapper;

    check-cast v1, Ljavax/net/ssl/X509KeyManager;

    invoke-direct {v2, v1}, Lsun/security/ssl/AbstractKeyManagerWrapper;-><init>(Ljavax/net/ssl/X509KeyManager;)V

    return-object v2

    :cond_6
    sget-object v2, Lsun/security/ssl/DummyX509KeyManager;->INSTANCE:Ljavax/net/ssl/X509ExtendedKeyManager;

    return-object v2
.end method

.method private chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget-object v1, p1, v0

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v1, :cond_3

    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    instance-of v1, v1, Lsun/security/ssl/X509TrustManagerImpl;

    if-eqz v1, :cond_1

    :cond_0
    aget-object v1, p1, v0

    instance-of v1, v1, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v1, :cond_2

    aget-object v1, p1, v0

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    return-object v1

    :cond_1
    new-instance v1, Ljava/security/KeyManagementException;

    const-string/jumbo v2, "FIPS mode: only SunJSSE TrustManagers may be used"

    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v2, Lsun/security/ssl/AbstractTrustManagerWrapper;

    aget-object v1, p1, v0

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v2, v1}, Lsun/security/ssl/AbstractTrustManagerWrapper;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    return-object v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    sget-object v1, Lsun/security/ssl/DummyX509TrustManager;->INSTANCE:Ljavax/net/ssl/X509TrustManager;

    return-object v1
.end method

.method private clearAvailableCache()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    invoke-static {}, Lsun/security/ssl/CipherSuite$BulkCipher;->clearAvailableCache()V

    invoke-static {}, Lsun/security/ssl/JsseJce;->clearEcAvailable()V

    return-void
.end method

.method private getApplicableCipherSuiteList(Lsun/security/ssl/ProtocolList;Z)Lsun/security/ssl/CipherSuiteList;
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/16 v1, 0x12c

    :cond_0
    invoke-static {}, Lsun/security/ssl/CipherSuite;->allowedCipherSuites()Ljava/util/Collection;

    move-result-object v0

    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p1}, Lsun/security/ssl/ProtocolList;->collection()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p1, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-eq v5, v6, :cond_5

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/ssl/CipherSuite;

    iget-boolean v5, v2, Lsun/security/ssl/CipherSuite;->allowed:Z

    if-eqz v5, :cond_1

    iget v5, v2, Lsun/security/ssl/CipherSuite;->priority:I

    if-lt v5, v1, :cond_1

    invoke-virtual {v2}, Lsun/security/ssl/CipherSuite;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v2, Lsun/security/ssl/CipherSuite;->obsoleted:I

    iget-object v6, p1, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-le v5, v6, :cond_2

    iget v5, v2, Lsun/security/ssl/CipherSuite;->supported:I

    iget-object v6, p1, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v5, v6, :cond_2

    iget-object v5, p0, Lsun/security/ssl/SSLContextImpl;->defaultAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v6, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    iget-object v7, v2, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v5, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "sslctx"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "verbose"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v2, Lsun/security/ssl/CipherSuite;->obsoleted:I

    iget-object v6, p1, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v5, v6, :cond_3

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring obsoleted cipher suite: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v5, v2, Lsun/security/ssl/CipherSuite;->supported:I

    iget-object v6, p1, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-le v5, v6, :cond_4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring unsupported cipher suite: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring unavailable cipher suite: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    new-instance v5, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v5, v4}, Lsun/security/ssl/CipherSuiteList;-><init>(Ljava/util/Collection;)V

    return-object v5
.end method


# virtual methods
.method protected engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 2

    iget-boolean v0, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SSLContextImpl is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lsun/security/ssl/SSLEngineImpl;

    invoke-direct {v0, p0}, Lsun/security/ssl/SSLEngineImpl;-><init>(Lsun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method protected engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 2

    iget-boolean v0, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SSLContextImpl is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lsun/security/ssl/SSLEngineImpl;

    invoke-direct {v0, p0, p1, p2}, Lsun/security/ssl/SSLEngineImpl;-><init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->clientCache:Lsun/security/ssl/SSLSessionContextImpl;

    return-object v0
.end method

.method protected engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->serverCache:Lsun/security/ssl/SSLSessionContextImpl;

    return-object v0
.end method

.method protected engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 2

    iget-boolean v0, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SSLContext is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lsun/security/ssl/SSLServerSocketFactoryImpl;

    invoke-direct {v0, p0}, Lsun/security/ssl/SSLServerSocketFactoryImpl;-><init>(Lsun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method protected engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    iget-boolean v0, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SSLContextImpl is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lsun/security/ssl/SSLSocketFactoryImpl;

    invoke-direct {v0, p0}, Lsun/security/ssl/SSLSocketFactoryImpl;-><init>(Lsun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method protected engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    invoke-direct {p0, p1}, Lsun/security/ssl/SSLContextImpl;->chooseKeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509ExtendedKeyManager;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLContextImpl;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    const/4 v2, 0x0

    nop

    nop

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lsun/security/ssl/SSLContextImpl;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLContextImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez p3, :cond_3

    invoke-static {}, Lsun/security/ssl/JsseJce;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    :goto_1
    sget-object v2, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "sslctx"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "trigger seeding of SecureRandom"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lsun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    sget-object v2, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "sslctx"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "done seeding SecureRandom"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    return-void

    :cond_3
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v2

    sget-object v3, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    if-eq v2, v3, :cond_4

    new-instance v2, Ljava/security/KeyManagementException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FIPS mode: SecureRandom must be from provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-virtual {v4}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iput-object p3, p0, Lsun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl;->clearAvailableCache()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLContextImpl;->getApplicableCipherSuiteList(Lsun/security/ssl/ProtocolList;Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLContextImpl;->getApplicableCipherSuiteList(Lsun/security/ssl/ProtocolList;Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    :cond_2
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract getDefaultClientSSLParams()Ljavax/net/ssl/SSLParameters;
.end method

.method getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

    if-nez v0, :cond_0

    new-instance v0, Lsun/security/ssl/ProtocolList;

    invoke-virtual {p0}, Lsun/security/ssl/SSLContextImpl;->getDefaultServerSSLParams()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

    return-object v0

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

    if-nez v0, :cond_2

    new-instance v0, Lsun/security/ssl/ProtocolList;

    invoke-virtual {p0}, Lsun/security/ssl/SSLContextImpl;->getDefaultClientSSLParams()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

    :cond_2
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

    return-object v0
.end method

.method abstract getDefaultServerSSLParams()Ljavax/net/ssl/SSLParameters;
.end method

.method getEphemeralKeyManager()Lsun/security/ssl/EphemeralKeyManager;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->ephemeralKeyManager:Lsun/security/ssl/EphemeralKeyManager;

    return-object v0
.end method

.method getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method getSuportedProtocolList()Lsun/security/ssl/ProtocolList;
    .locals 2

    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedProtocolList:Lsun/security/ssl/ProtocolList;

    if-nez v0, :cond_0

    new-instance v0, Lsun/security/ssl/ProtocolList;

    invoke-virtual {p0}, Lsun/security/ssl/SSLContextImpl;->getSupportedSSLParams()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedProtocolList:Lsun/security/ssl/ProtocolList;

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedProtocolList:Lsun/security/ssl/ProtocolList;

    return-object v0
.end method

.method getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl;->clearAvailableCache()V

    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/SSLContextImpl;->getSuportedProtocolList()Lsun/security/ssl/ProtocolList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLContextImpl;->getApplicableCipherSuiteList(Lsun/security/ssl/ProtocolList;Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract getSupportedSSLParams()Ljavax/net/ssl/SSLParameters;
.end method

.method getX509KeyManager()Ljavax/net/ssl/X509ExtendedKeyManager;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    return-object v0
.end method

.method getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
