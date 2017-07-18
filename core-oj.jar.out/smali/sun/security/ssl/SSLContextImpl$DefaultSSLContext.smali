.class public final Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;
.super Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSSLContext"
.end annotation


# static fields
.field private static final NONE:Ljava/lang/String; = "NONE"

.field private static final P11KEYSTORE:Ljava/lang/String; = "PKCS11"

.field private static volatile defaultImpl:Lsun/security/ssl/SSLContextImpl;

.field private static defaultKeyManagers:[Ljavax/net/ssl/KeyManager;

.field private static defaultTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;-><init>(Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;)V

    :try_start_0
    invoke-static {}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultKeyManager()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-static {}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultTrustManager()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-super {p0, v1, v2, v3}, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultImpl:Lsun/security/ssl/SSLContextImpl;

    if-nez v1, :cond_0

    sput-object p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultImpl:Lsun/security/ssl/SSLContextImpl;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lsun/security/ssl/SSLContextImpl;->-get0()Lsun/security/ssl/Debug;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "defaultctx"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "default context init failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    throw v0
.end method

.method static declared-synchronized getDefaultImpl()Lsun/security/ssl/SSLContextImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v1, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultImpl:Lsun/security/ssl/SSLContextImpl;

    if-nez v0, :cond_0

    new-instance v0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;

    invoke-direct {v0}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;-><init>()V

    :cond_0
    sget-object v0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultImpl:Lsun/security/ssl/SSLContextImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getDefaultKeyManager()[Ljavax/net/ssl/KeyManager;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v10, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;

    monitor-enter v10

    :try_start_0
    sget-object v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultKeyManagers:[Ljavax/net/ssl/KeyManager;

    if-eqz v9, :cond_0

    sget-object v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultKeyManagers:[Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v9

    :cond_0
    :try_start_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;

    invoke-direct {v9, v8}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;-><init>(Ljava/util/Map;)V

    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    const-string/jumbo v9, "keyStore"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v9, "keyStoreType"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v9, "keyStoreProvider"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lsun/security/ssl/SSLContextImpl;->-get0()Lsun/security/ssl/Debug;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "defaultctx"

    invoke-static {v9}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "keyStore is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "keyStore type is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "keyStore provider is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v9, "PKCS11"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "NONE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v9, "NONE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_3
    :goto_0
    const-string/jumbo v9, "keyStorePasswd"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Lsun/security/ssl/SSLContextImpl;->-get0()Lsun/security/ssl/Debug;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "defaultctx"

    invoke-static {v9}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v11, "init keystore"

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_b

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    :goto_1
    invoke-virtual {v6, v4, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    const/4 v4, 0x0

    :cond_7
    invoke-static {}, Lsun/security/ssl/SSLContextImpl;->-get0()Lsun/security/ssl/Debug;

    move-result-object v9

    if-eqz v9, :cond_8

    const-string/jumbo v9, "defaultctx"

    invoke-static {v9}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "init keymanager of type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v5

    const-string/jumbo v9, "PKCS11"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    :goto_2
    invoke-virtual {v5}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v9

    sput-object v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultKeyManagers:[Ljavax/net/ssl/KeyManager;

    sget-object v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultKeyManagers:[Ljavax/net/ssl/KeyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    return-object v9

    :cond_9
    :try_start_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "if keyStoreType is PKCS11, then keyStore must be NONE"

    invoke-direct {v9, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_a
    :try_start_3
    new-instance v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$2;

    invoke-direct {v9, v0}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$2;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/FileInputStream;

    goto/16 :goto_0

    :cond_b
    invoke-static {v3, v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    goto :goto_1

    :cond_c
    invoke-virtual {v5, v6, v7}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private static declared-synchronized getDefaultTrustManager()[Ljavax/net/ssl/TrustManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v3, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultTrustManagers:[Ljavax/net/ssl/TrustManager;

    if-eqz v2, :cond_0

    sget-object v2, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultTrustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    const-string/jumbo v2, "defaultctx"

    invoke-static {v2}, Lsun/security/ssl/TrustManagerFactoryImpl;->getCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    sput-object v2, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultTrustManagers:[Ljavax/net/ssl/TrustManager;

    sget-object v2, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultTrustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method protected engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    new-instance v0, Ljava/security/KeyManagementException;

    const-string/jumbo v1, "Default SSLContext is initialized automatically"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
