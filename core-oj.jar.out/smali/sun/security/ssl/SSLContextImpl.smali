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

    .prologue
    .line 42
    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    .line 40
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 56
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljava/security/AlgorithmConstraints;)V

    .line 55
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 69
    new-instance v0, Lsun/security/ssl/EphemeralKeyManager;

    invoke-direct {v0}, Lsun/security/ssl/EphemeralKeyManager;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->ephemeralKeyManager:Lsun/security/ssl/EphemeralKeyManager;

    .line 70
    new-instance v0, Lsun/security/ssl/SSLSessionContextImpl;

    invoke-direct {v0}, Lsun/security/ssl/SSLSessionContextImpl;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->clientCache:Lsun/security/ssl/SSLSessionContextImpl;

    .line 71
    new-instance v0, Lsun/security/ssl/SSLSessionContextImpl;

    invoke-direct {v0}, Lsun/security/ssl/SSLSessionContextImpl;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->serverCache:Lsun/security/ssl/SSLSessionContextImpl;

    .line 68
    return-void
.end method

.method private chooseKeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509ExtendedKeyManager;
    .locals 4
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_6

    array-length v2, p1

    if-ge v0, v2, :cond_6

    .line 146
    aget-object v1, p1, v0

    .line 147
    .local v1, "km":Ljavax/net/ssl/KeyManager;
    instance-of v2, v1, Ljavax/net/ssl/X509KeyManager;

    if-nez v2, :cond_0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    instance-of v2, v1, Lsun/security/ssl/X509KeyManagerImpl;

    if-nez v2, :cond_1

    .line 155
    instance-of v2, v1, Lsun/security/ssl/SunX509KeyManagerImpl;

    .line 154
    if-eqz v2, :cond_2

    .line 156
    :cond_1
    nop

    nop

    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    return-object v1

    .line 160
    .restart local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_2
    new-instance v2, Ljava/security/KeyManagementException;

    .line 161
    const-string/jumbo v3, "FIPS mode: only SunJSSE KeyManagers may be used"

    .line 160
    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_3
    instance-of v2, v1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v2, :cond_4

    .line 165
    nop

    nop

    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    return-object v1

    .line 167
    .restart local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_4
    sget-object v2, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "sslctx"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 169
    const-string/jumbo v3, "X509KeyManager passed to SSLContext.init():  need an X509ExtendedKeyManager for SSLEngine use"

    .line 168
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    :cond_5
    new-instance v2, Lsun/security/ssl/AbstractKeyManagerWrapper;

    check-cast v1, Ljavax/net/ssl/X509KeyManager;

    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    invoke-direct {v2, v1}, Lsun/security/ssl/AbstractKeyManagerWrapper;-><init>(Ljavax/net/ssl/X509KeyManager;)V

    return-object v2

    .line 177
    :cond_6
    sget-object v2, Lsun/security/ssl/DummyX509KeyManager;->INSTANCE:Ljavax/net/ssl/X509ExtendedKeyManager;

    return-object v2
.end method

.method private chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 3
    .param p1, "tm"    # [Ljavax/net/ssl/TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_4

    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 123
    aget-object v1, p1, v0

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v1, :cond_3

    .line 124
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    aget-object v1, p1, v0

    instance-of v1, v1, Lsun/security/ssl/X509TrustManagerImpl;

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    aget-object v1, p1, v0

    instance-of v1, v1, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v1, :cond_2

    .line 131
    aget-object v1, p1, v0

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    return-object v1

    .line 126
    :cond_1
    new-instance v1, Ljava/security/KeyManagementException;

    .line 127
    const-string/jumbo v2, "FIPS mode: only SunJSSE TrustManagers may be used"

    .line 126
    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_2
    new-instance v2, Lsun/security/ssl/AbstractTrustManagerWrapper;

    .line 134
    aget-object v1, p1, v0

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 133
    invoke-direct {v2, v1}, Lsun/security/ssl/AbstractTrustManagerWrapper;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    return-object v2

    .line 122
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_4
    sget-object v1, Lsun/security/ssl/DummyX509TrustManager;->INSTANCE:Ljavax/net/ssl/X509TrustManager;

    return-object v1
.end method

.method private clearAvailableCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    .line 380
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    .line 381
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    .line 382
    invoke-static {}, Lsun/security/ssl/CipherSuite$BulkCipher;->clearAvailableCache()V

    .line 383
    invoke-static {}, Lsun/security/ssl/JsseJce;->clearEcAvailable()V

    .line 377
    return-void
.end method

.method private getApplicableCipherSuiteList(Lsun/security/ssl/ProtocolList;Z)Lsun/security/ssl/CipherSuiteList;
    .locals 9
    .param p1, "protocols"    # Lsun/security/ssl/ProtocolList;
    .param p2, "onlyEnabled"    # Z

    .prologue
    const/4 v8, 0x0

    .line 326
    const/4 v1, 0x1

    .line 327
    .local v1, "minPriority":I
    if-eqz p2, :cond_0

    .line 328
    const/16 v1, 0x12c

    .line 332
    :cond_0
    invoke-static {}, Lsun/security/ssl/CipherSuite;->allowedCipherSuites()Ljava/util/Collection;

    move-result-object v0

    .line 334
    .local v0, "allowedCipherSuites":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 335
    .local v4, "suites":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lsun/security/ssl/CipherSuite;>;"
    invoke-virtual {p1}, Lsun/security/ssl/ProtocolList;->collection()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 336
    iget-object v5, p1, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-eq v5, v6, :cond_5

    .line 337
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "suite$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/ssl/CipherSuite;

    .line 338
    .local v2, "suite":Lsun/security/ssl/CipherSuite;
    iget-boolean v5, v2, Lsun/security/ssl/CipherSuite;->allowed:Z

    if-eqz v5, :cond_1

    iget v5, v2, Lsun/security/ssl/CipherSuite;->priority:I

    if-lt v5, v1, :cond_1

    .line 342
    invoke-virtual {v2}, Lsun/security/ssl/CipherSuite;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 343
    iget v5, v2, Lsun/security/ssl/CipherSuite;->obsoleted:I

    iget-object v6, p1, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-le v5, v6, :cond_2

    .line 344
    iget v5, v2, Lsun/security/ssl/CipherSuite;->supported:I

    iget-object v6, p1, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v5, v6, :cond_2

    .line 345
    iget-object v5, p0, Lsun/security/ssl/SSLContextImpl;->defaultAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 346
    sget-object v6, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 347
    iget-object v7, v2, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    .line 345
    invoke-interface {v5, v6, v7, v8}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    invoke-virtual {v4, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_2
    sget-object v5, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_1

    .line 351
    const-string/jumbo v5, "sslctx"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    .line 350
    if-eqz v5, :cond_1

    .line 351
    const-string/jumbo v5, "verbose"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    .line 350
    if-eqz v5, :cond_1

    .line 352
    iget v5, v2, Lsun/security/ssl/CipherSuite;->obsoleted:I

    iget-object v6, p1, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v5, v6, :cond_3

    .line 353
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring obsoleted cipher suite: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 353
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_3
    iget v5, v2, Lsun/security/ssl/CipherSuite;->supported:I

    iget-object v6, p1, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-le v5, v6, :cond_4

    .line 356
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring unsupported cipher suite: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 356
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    :cond_4
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring unavailable cipher suite: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 359
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    .end local v2    # "suite":Lsun/security/ssl/CipherSuite;
    .end local v3    # "suite$iterator":Ljava/util/Iterator;
    :cond_5
    new-instance v5, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v5, v4}, Lsun/security/ssl/CipherSuiteList;-><init>(Ljava/util/Collection;)V

    return-object v5
.end method


# virtual methods
.method protected engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 198
    const-string/jumbo v1, "SSLContextImpl is not initialized"

    .line 197
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    new-instance v0, Lsun/security/ssl/SSLEngineImpl;

    invoke-direct {v0, p0}, Lsun/security/ssl/SSLEngineImpl;-><init>(Lsun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method protected engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 204
    iget-boolean v0, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 206
    const-string/jumbo v1, "SSLContextImpl is not initialized"

    .line 205
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    new-instance v0, Lsun/security/ssl/SSLEngineImpl;

    invoke-direct {v0, p0, p1, p2}, Lsun/security/ssl/SSLEngineImpl;-><init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->clientCache:Lsun/security/ssl/SSLSessionContextImpl;

    return-object v0
.end method

.method protected engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->serverCache:Lsun/security/ssl/SSLSessionContextImpl;

    return-object v0
.end method

.method protected engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SSLContext is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    new-instance v0, Lsun/security/ssl/SSLServerSocketFactoryImpl;

    invoke-direct {v0, p0}, Lsun/security/ssl/SSLServerSocketFactoryImpl;-><init>(Lsun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method protected engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 183
    const-string/jumbo v1, "SSLContextImpl is not initialized"

    .line 182
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    new-instance v0, Lsun/security/ssl/SSLSocketFactoryImpl;

    invoke-direct {v0, p0}, Lsun/security/ssl/SSLSocketFactoryImpl;-><init>(Lsun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method protected engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "km"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tm"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    .line 77
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLContextImpl;->chooseKeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509ExtendedKeyManager;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLContextImpl;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 79
    if-nez p2, :cond_0

    .line 82
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 83
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    nop

    nop

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 84
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 89
    .end local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lsun/security/ssl/SSLContextImpl;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLContextImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 91
    if-nez p3, :cond_3

    .line 92
    invoke-static {}, Lsun/security/ssl/JsseJce;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 109
    :goto_1
    sget-object v2, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "sslctx"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "trigger seeding of SecureRandom"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    :cond_1
    iget-object v2, p0, Lsun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    .line 113
    sget-object v2, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "sslctx"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "done seeding SecureRandom"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    .line 75
    return-void

    .line 94
    :cond_3
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    invoke-virtual {p3}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v2

    sget-object v3, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    if-eq v2, v3, :cond_4

    .line 96
    new-instance v2, Ljava/security/KeyManagementException;

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FIPS mode: SecureRandom must be from provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 98
    sget-object v4, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-virtual {v4}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_4
    iput-object p3, p0, Lsun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;
    .locals 2
    .param p1, "roleIsServer"    # Z

    .prologue
    .line 287
    monitor-enter p0

    .line 289
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl;->clearAvailableCache()V

    .line 291
    if-eqz p1, :cond_1

    .line 292
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v0

    const/4 v1, 0x1

    .line 293
    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLContextImpl;->getApplicableCipherSuiteList(Lsun/security/ssl/ProtocolList;Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    .line 297
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 299
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    if-nez v0, :cond_2

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v0

    const/4 v1, 0x1

    .line 300
    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLContextImpl;->getApplicableCipherSuiteList(Lsun/security/ssl/ProtocolList;Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    .line 304
    :cond_2
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract getDefaultClientSSLParams()Ljavax/net/ssl/SSLParameters;
.end method

.method getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;
    .locals 2
    .param p1, "roleIsServer"    # Z

    .prologue
    .line 251
    if-eqz p1, :cond_1

    .line 252
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lsun/security/ssl/ProtocolList;

    .line 254
    invoke-virtual {p0}, Lsun/security/ssl/SSLContextImpl;->getDefaultServerSSLParams()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-direct {v0, v1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

    .line 257
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

    return-object v0

    .line 259
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

    if-nez v0, :cond_2

    .line 260
    new-instance v0, Lsun/security/ssl/ProtocolList;

    .line 261
    invoke-virtual {p0}, Lsun/security/ssl/SSLContextImpl;->getDefaultClientSSLParams()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-direct {v0, v1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

    .line 264
    :cond_2
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

    return-object v0
.end method

.method abstract getDefaultServerSSLParams()Ljavax/net/ssl/SSLParameters;
.end method

.method getEphemeralKeyManager()Lsun/security/ssl/EphemeralKeyManager;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->ephemeralKeyManager:Lsun/security/ssl/EphemeralKeyManager;

    return-object v0
.end method

.method getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method getSuportedProtocolList()Lsun/security/ssl/ProtocolList;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedProtocolList:Lsun/security/ssl/ProtocolList;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lsun/security/ssl/ProtocolList;

    invoke-virtual {p0}, Lsun/security/ssl/SSLContextImpl;->getSupportedSSLParams()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    .line 242
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedProtocolList:Lsun/security/ssl/ProtocolList;

    .line 246
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedProtocolList:Lsun/security/ssl/ProtocolList;

    return-object v0
.end method

.method getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;
    .locals 2

    .prologue
    .line 271
    monitor-enter p0

    .line 273
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl;->clearAvailableCache()V

    .line 275
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lsun/security/ssl/SSLContextImpl;->getSuportedProtocolList()Lsun/security/ssl/ProtocolList;

    move-result-object v0

    const/4 v1, 0x0

    .line 276
    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLContextImpl;->getApplicableCipherSuiteList(Lsun/security/ssl/ProtocolList;Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    .line 280
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract getSupportedSSLParams()Ljavax/net/ssl/SSLParameters;
.end method

.method getX509KeyManager()Ljavax/net/ssl/X509ExtendedKeyManager;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    return-object v0
.end method

.method getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z
    .locals 2
    .param p1, "protocols"    # Lsun/security/ssl/ProtocolList;

    .prologue
    const/4 v0, 0x1

    .line 314
    iget-object v1, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

    if-eq p1, v1, :cond_0

    .line 315
    iget-object v1, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

    if-ne p1, v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
