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

    .prologue
    const/4 v1, 0x0

    .line 493
    invoke-direct {p0, v1}, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;-><init>(Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;)V

    .line 495
    :try_start_0
    invoke-static {}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultKeyManager()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    .line 496
    invoke-static {}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultTrustManager()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 495
    invoke-super {p0, v1, v2, v3}, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    sget-object v1, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultImpl:Lsun/security/ssl/SSLContextImpl;

    if-nez v1, :cond_0

    .line 505
    sput-object p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultImpl:Lsun/security/ssl/SSLContextImpl;

    .line 493
    :cond_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lsun/security/ssl/SSLContextImpl;->-get0()Lsun/security/ssl/Debug;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "defaultctx"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
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

    .line 501
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

    .prologue
    const-class v1, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;

    monitor-enter v1

    .line 516
    :try_start_0
    sget-object v0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultImpl:Lsun/security/ssl/SSLContextImpl;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;

    invoke-direct {v0}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;-><init>()V

    .line 519
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

    .prologue
    const-class v10, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;

    monitor-enter v10

    .line 540
    :try_start_0
    sget-object v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultKeyManagers:[Ljavax/net/ssl/KeyManager;

    if-eqz v9, :cond_0

    .line 541
    sget-object v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultKeyManagers:[Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v9

    .line 544
    :cond_0
    :try_start_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 546
    .local v8, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;

    invoke-direct {v9, v8}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;-><init>(Ljava/util/Map;)V

    .line 545
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 561
    const-string/jumbo v9, "keyStore"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 562
    .local v0, "defaultKeyStore":Ljava/lang/String;
    const-string/jumbo v9, "keyStoreType"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 563
    .local v3, "defaultKeyStoreType":Ljava/lang/String;
    const-string/jumbo v9, "keyStoreProvider"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 564
    .local v2, "defaultKeyStoreProvider":Ljava/lang/String;
    invoke-static {}, Lsun/security/ssl/SSLContextImpl;->-get0()Lsun/security/ssl/Debug;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "defaultctx"

    invoke-static {v9}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 565
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

    .line 566
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

    .line 568
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

    .line 572
    :cond_1
    const-string/jumbo v9, "PKCS11"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 573
    const-string/jumbo v9, "NONE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 578
    :cond_2
    const/4 v4, 0x0

    .line 579
    .local v4, "fs":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v9, "NONE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 588
    .end local v4    # "fs":Ljava/io/FileInputStream;
    :cond_3
    :goto_0
    const-string/jumbo v9, "keyStorePasswd"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 589
    .local v1, "defaultKeyStorePassword":Ljava/lang/String;
    const/4 v7, 0x0

    .line 590
    .local v7, "passwd":[C
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    .line 591
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 597
    .end local v7    # "passwd":[C
    :cond_4
    const/4 v6, 0x0

    .line 598
    .local v6, "ks":Ljava/security/KeyStore;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    .line 599
    invoke-static {}, Lsun/security/ssl/SSLContextImpl;->-get0()Lsun/security/ssl/Debug;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "defaultctx"

    invoke-static {v9}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 600
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v11, "init keystore"

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 602
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_b

    .line 603
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 610
    .local v6, "ks":Ljava/security/KeyStore;
    :goto_1
    invoke-virtual {v6, v4, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 612
    .end local v6    # "ks":Ljava/security/KeyStore;
    :cond_6
    if-eqz v4, :cond_7

    .line 613
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 614
    const/4 v4, 0x0

    .line 620
    :cond_7
    invoke-static {}, Lsun/security/ssl/SSLContextImpl;->-get0()Lsun/security/ssl/Debug;

    move-result-object v9

    if-eqz v9, :cond_8

    const-string/jumbo v9, "defaultctx"

    invoke-static {v9}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 621
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "init keymanager of type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 622
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v12

    .line 621
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 625
    :cond_8
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 624
    invoke-static {v9}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v5

    .line 627
    .local v5, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const-string/jumbo v9, "PKCS11"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 628
    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 633
    :goto_2
    invoke-virtual {v5}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v9

    sput-object v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultKeyManagers:[Ljavax/net/ssl/KeyManager;

    .line 634
    sget-object v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultKeyManagers:[Ljavax/net/ssl/KeyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    return-object v9

    .line 574
    .end local v1    # "defaultKeyStorePassword":Ljava/lang/String;
    .end local v5    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :cond_9
    :try_start_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "if keyStoreType is PKCS11, then keyStore must be NONE"

    invoke-direct {v9, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "defaultKeyStore":Ljava/lang/String;
    .end local v2    # "defaultKeyStoreProvider":Ljava/lang/String;
    .end local v3    # "defaultKeyStoreType":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 581
    .restart local v0    # "defaultKeyStore":Ljava/lang/String;
    .restart local v2    # "defaultKeyStoreProvider":Ljava/lang/String;
    .restart local v3    # "defaultKeyStoreType":Ljava/lang/String;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :cond_a
    :try_start_3
    new-instance v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$2;

    invoke-direct {v9, v0}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$2;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "fs":Ljava/io/FileInputStream;
    check-cast v4, Ljava/io/FileInputStream;

    .local v4, "fs":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 605
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v1    # "defaultKeyStorePassword":Ljava/lang/String;
    .local v6, "ks":Ljava/security/KeyStore;
    :cond_b
    invoke-static {v3, v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .local v6, "ks":Ljava/security/KeyStore;
    goto :goto_1

    .line 630
    .end local v6    # "ks":Ljava/security/KeyStore;
    .restart local v5    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
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

    .prologue
    const-class v3, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;

    monitor-enter v3

    .line 524
    :try_start_0
    sget-object v2, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultTrustManagers:[Ljavax/net/ssl/TrustManager;

    if-eqz v2, :cond_0

    .line 525
    sget-object v2, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultTrustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 529
    :cond_0
    :try_start_1
    const-string/jumbo v2, "defaultctx"

    invoke-static {v2}, Lsun/security/ssl/TrustManagerFactoryImpl;->getCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 532
    .local v0, "ks":Ljava/security/KeyStore;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 533
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 534
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    sput-object v2, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 535
    sget-object v2, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultTrustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2

    .end local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method protected engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "km"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tm"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Ljava/security/KeyManagementException;

    .line 512
    const-string/jumbo v1, "Default SSLContext is initialized automatically"

    .line 511
    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
