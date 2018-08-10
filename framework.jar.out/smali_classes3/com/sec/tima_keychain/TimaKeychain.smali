.class public Lcom/sec/tima_keychain/TimaKeychain;
.super Ljava/lang/Object;
.source "TimaKeychain.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TIMAKeyChain"

.field private static final TIMA_SERVICE:Ljava/lang/String; = "tima"

.field private static mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/tima_keychain/TimaKeychain;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAliasListFromTimaKeystore(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v11, "TIMAKeyChain"

    const-string/jumbo v12, "getAliasListFromTimaKeystore with package"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string/jumbo v11, ""

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    const-string/jumbo v11, "TIMAKeyChain"

    const-string/jumbo v12, "getAliasListFromTimaKeystore received empty/null packageName"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {p0}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForPackage(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    return-object v0

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/ClientCertificateManager;->getCertificateAliasesHavingPrivateKey()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, p0}, Landroid/sec/enterprise/ClientCertificateManager;->getAliasesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Landroid/sec/enterprise/ClientCertificateManager;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v10

    if-eqz v4, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v10, :cond_4

    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    xor-int/lit8 v7, v11, 0x1

    :goto_1
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    xor-int/lit8 v6, v11, 0x1

    :goto_2
    if-nez v6, :cond_6

    const-string/jumbo v11, "TIMAKeyChain"

    const-string/jumbo v12, "all the aliases not valid since doenst have private key pair"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    if-nez v7, :cond_7

    if-eqz v6, :cond_a

    :cond_7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v7, :cond_9

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v1, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v6, :cond_8

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_8

    invoke-interface {v1, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    move-object v0, v1

    :goto_4
    const-string/jumbo v11, "TIMAKeyChain"

    const-string/jumbo v12, "Exception"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_4

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static getAliasesForWifi(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->getCCMWifiAliases()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getCCMWifiAliases()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :try_start_0
    const-string/jumbo v4, "tima"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->getAliasesForWiFi()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    const-string/jumbo v4, "TIMAKeyChain"

    const-string/jumbo v5, "RemoteException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getCcmKeyId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 13

    sget-object v11, Lcom/sec/tima_keychain/TimaKeychain;->mLock:Ljava/lang/Object;

    monitor-enter v11

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "getCertificateChainFromTimaKeystore called"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string/jumbo v10, ""

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "getCertificateChainFromTimaKeystore received empty/null alias"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v11

    return-object v9

    :cond_2
    :try_start_1
    const-string/jumbo v10, "TimaKeyStore"

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string/jumbo v10, "PKCS11"

    const-string/jumbo v12, "SECPkcs11"

    invoke-static {v10, v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v8, p0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v10, v2

    new-array v9, v10, [Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    :goto_1
    array-length v10, v2

    if-ge v5, v10, :cond_1

    aget-object v10, v2, v5

    check-cast v10, Ljava/security/cert/X509Certificate;

    aput-object v10, v9, v5
    :try_end_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "CertificateException"

    invoke-static {v10, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "NoSuchAlgorithmException"

    invoke-static {v10, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v6

    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "IOException"

    invoke-static {v10, v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v3

    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "KeyStoreException"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v4

    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "java.security.NoSuchProviderException"

    invoke-static {v10, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static getPrivateKeyFromOpenSSL(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 15

    sget-object v13, Lcom/sec/tima_keychain/TimaKeychain;->mLock:Ljava/lang/Object;

    monitor-enter v13

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v12, "TimaKeyStore"

    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6, v12, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string/jumbo v12, "PKCS11"

    const-string/jumbo v14, "SECPkcs11"

    invoke-static {v12, v14}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "getPrivateKeyFromOpenSSL called"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string/jumbo v12, ""

    invoke-virtual {v12, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "getPrivateKeyFromOpenSSL received empty/null alias"

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v13

    return-object v9

    :cond_1
    :try_start_1
    const-string/jumbo v0, "knox_ccm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v7

    if-nez v7, :cond_2

    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "Unable start CCMservice"

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x0

    monitor-exit v13

    return-object v12

    :cond_2
    :try_start_2
    invoke-interface {v7, p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->hasGrant(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x0

    monitor-exit v13

    return-object v12

    :cond_3
    :try_start_3
    new-instance v8, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v8}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    invoke-virtual {v8, p0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->registerEngine(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v8, p0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v9

    goto :goto_0

    :cond_4
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "Unable to register openssl engine"

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_4
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "java.security.NoSuchProviderException"

    invoke-static {v12, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :catch_1
    move-exception v10

    :try_start_5
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "RemoteException"

    invoke-static {v12, v14, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "CertificateException"

    invoke-static {v12, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v1

    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "NoSuchAlgorithmException"

    invoke-static {v12, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v5

    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "IOException"

    invoke-static {v12, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_5
    move-exception v3

    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "KeyStoreException"

    invoke-static {v12, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public static isCCMStoredAlias(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/sec/tima_keychain/TimaKeychain;->getAliasListFromTimaKeystore(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static isTimaKeystoreAndCCMEnabledForCaller()Z
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v6, "TIMAKeyChain"

    const-string/jumbo v7, "isTimaKeystoreAndCCMEnabled called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v6, "tima"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "3.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isCCMPolicyEnabledForCaller()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isAccessControlMethodPassword()Z

    move-result v6

    xor-int/lit8 v1, v6, 0x1

    :cond_0
    :goto_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/sec/enterprise/TimaKeystore;->isTimaKeystoreEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    :goto_2
    return v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v6, "TIMAKeyChain"

    const-string/jumbo v7, "RemoteException"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static isTimaKeystoreAndCCMEnabledForPackage(Ljava/lang/String;)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v6, "TIMAKeyChain"

    const-string/jumbo v7, "isTimaKeystoreAndCCMEnabledForPackage called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string/jumbo v6, "TIMAKeyChain"

    const-string/jumbo v7, "isTimaKeystoreAndCCMEnabledForPackage received empty/null package name"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_5

    :goto_1
    return v2

    :cond_1
    :try_start_0
    const-string/jumbo v6, "tima"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "3.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/sec/enterprise/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isAccessControlMethodPassword()Z

    move-result v6

    xor-int/lit8 v1, v6, 0x1

    :cond_2
    :goto_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, p0}, Landroid/sec/enterprise/TimaKeystore;->isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_3
    :goto_3
    const-string/jumbo v6, "TIMAKeyChain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCCMEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "TIMAKeyChain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isTimaKeystoreEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string/jumbo v6, "TIMAKeyChain"

    const-string/jumbo v7, "RemoteException"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1
.end method
