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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    iput-object p2, p0, Ljavax/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljavax/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ssl/SSLContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-class v1, Ljavax/net/ssl/SSLContext;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljavax/net/ssl/SSLContext;->defaultContext:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Default"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Ljavax/net/ssl/SSLContext;->defaultContext:Ljavax/net/ssl/SSLContext;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v1, "SSLContext"

    const-class v2, Ljavax/net/ssl/SSLContextSpi;

    invoke-static {v1, v2, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljavax/net/ssl/SSLContext;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/SSLContextSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string/jumbo v1, "SSLContext"

    const-class v2, Ljavax/net/ssl/SSLContextSpi;

    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljavax/net/ssl/SSLContext;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/SSLContextSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v1, "SSLContext"

    const-class v2, Ljavax/net/ssl/SSLContextSpi;

    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljavax/net/ssl/SSLContext;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/SSLContextSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static declared-synchronized setDefault(Ljavax/net/ssl/SSLContext;)V
    .locals 4

    const-class v2, Ljavax/net/ssl/SSLContext;

    monitor-enter v2

    if-nez p0, :cond_0

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

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljavax/net/ssl/SSLPermission;

    const-string/jumbo v3, "setDefaultSSLContext"

    invoke-direct {v1, v3}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_1
    sput-object p0, Ljavax/net/ssl/SSLContext;->defaultContext:Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void
.end method


# virtual methods
.method public final createSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 4

    :try_start_0
    iget-object v2, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContextSpi;->engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " doesn\'t support this operation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/UnsupportedOperationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public final createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 4

    :try_start_0
    iget-object v2, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v2, p1, p2}, Ljavax/net/ssl/SSLContextSpi;->engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not support this operation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/UnsupportedOperationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public final getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLContextSpi;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method
