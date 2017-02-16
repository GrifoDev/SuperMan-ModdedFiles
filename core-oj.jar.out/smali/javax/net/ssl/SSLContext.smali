.class public Ljavax/net/ssl/SSLContext;
.super Ljava/lang/Object;
.source "SSLContext.java"


# static fields
.field private static defaultContext:Ljavax/net/ssl/SSLContext;


# instance fields
.field private final contextSpi:Ljavax/net/ssl/SSLContextSpi;

.field private final protocol:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextSpi"    # Ljavax/net/ssl/SSLContextSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "protocol"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    .line 104
    iput-object p2, p0, Ljavax/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    .line 105
    iput-object p3, p0, Ljavax/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ssl/SSLContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const-class v1, Ljavax/net/ssl/SSLContext;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v0, Ljavax/net/ssl/SSLContext;->defaultContext:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    .line 130
    const-string/jumbo v0, "Default"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Ljavax/net/ssl/SSLContext;->defaultContext:Ljavax/net/ssl/SSLContext;

    .line 132
    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLContext;->defaultContext:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 4
    .param p0, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 190
    const-string/jumbo v1, "SSLContext"

    const-class v2, Ljavax/net/ssl/SSLContextSpi;

    .line 189
    invoke-static {v1, v2, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 191
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/net/ssl/SSLContext;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/SSLContextSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 4
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 233
    const-string/jumbo v1, "SSLContext"

    const-class v2, Ljavax/net/ssl/SSLContextSpi;

    .line 232
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 234
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/net/ssl/SSLContext;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/SSLContextSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    .locals 4
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 270
    const-string/jumbo v1, "SSLContext"

    const-class v2, Ljavax/net/ssl/SSLContextSpi;

    .line 269
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 271
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/net/ssl/SSLContext;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/SSLContextSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static declared-synchronized setDefault(Ljavax/net/ssl/SSLContext;)V
    .locals 4
    .param p0, "context"    # Ljavax/net/ssl/SSLContext;

    .prologue
    const-class v2, Ljavax/net/ssl/SSLContext;

    monitor-enter v2

    .line 148
    if-nez p0, :cond_0

    .line 149
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 151
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 152
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 153
    new-instance v1, Ljavax/net/ssl/SSLPermission;

    const-string/jumbo v3, "setDefaultSSLContext"

    invoke-direct {v1, v3}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 155
    :cond_1
    sput-object p0, Ljavax/net/ssl/SSLContext;->defaultContext:Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 147
    return-void
.end method


# virtual methods
.method public final createSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 4

    .prologue
    .line 363
    :try_start_0
    iget-object v2, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContextSpi;->engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 364
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 368
    const-string/jumbo v3, " doesn\'t support this operation"

    .line 367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, "unsup":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v1, v0}, Ljava/lang/UnsupportedOperationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 370
    throw v1
.end method

.method public final createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 4
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I

    .prologue
    .line 395
    :try_start_0
    iget-object v2, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v2, p1, p2}, Ljavax/net/ssl/SSLContextSpi;->engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 396
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 400
    const-string/jumbo v3, " does not support this operation"

    .line 399
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 401
    .local v1, "unsup":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v1, v0}, Ljava/lang/UnsupportedOperationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 402
    throw v1
.end method

.method public final getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "km"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tm"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLContextSpi;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 315
    return-void
.end method
