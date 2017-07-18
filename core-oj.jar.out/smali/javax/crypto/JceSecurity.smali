.class final Ljavax/crypto/JceSecurity;
.super Ljava/lang/Object;
.source "JceSecurity.java"


# static fields
.field private static final NULL_URL:Ljava/net/URL;

.field private static final PROVIDER_VERIFIED:Ljava/lang/Object;

.field static final RANDOM:Ljava/security/SecureRandom;

.field private static final codeBaseCacheRef:Ljava/util/Map;

.field private static defaultPolicy:Ljavax/crypto/CryptoPermissions;

.field private static exemptPolicy:Ljavax/crypto/CryptoPermissions;

.field private static isRestricted:Z

.field private static final verificationResults:Ljava/util/Map;

.field private static final verifyingProviders:Ljava/util/Map;


# direct methods
.method static synthetic -get0()Ljava/net/URL;
    .locals 1

    sget-object v0, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sput-object v1, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    sput-object v2, Ljavax/crypto/JceSecurity;->defaultPolicy:Ljavax/crypto/CryptoPermissions;

    sput-object v2, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v1, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v1, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    const/4 v1, 0x1

    sput-boolean v1, Ljavax/crypto/JceSecurity;->isRestricted:Z

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string/jumbo v2, "http://null.sun.com/"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canUseProvider(Ljava/security/Provider;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static getCodeBase(Ljava/lang/Class;)Ljava/net/URL;
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    if-nez v0, :cond_0

    new-instance v2, Ljavax/crypto/JceSecurity$1;

    invoke-direct {v2, p0}, Ljavax/crypto/JceSecurity$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    sget-object v2, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v2, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;

    if-ne v0, v2, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method static getDefaultPolicy()Ljavax/crypto/CryptoPermissions;
    .locals 1

    sget-object v0, Ljavax/crypto/JceSecurity;->defaultPolicy:Ljavax/crypto/CryptoPermissions;

    return-object v0
.end method

.method static getExemptPolicy()Ljavax/crypto/CryptoPermissions;
    .locals 1

    sget-object v0, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p0, p2}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-static {v3, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not available"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JCE cannot authenticate the provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/security/NoSuchProviderException;

    invoke-direct {v3, v0}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/security/NoSuchProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/security/NoSuchProviderException;

    throw v3

    :cond_0
    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v3

    return-object v3
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;

    move-result-object v1

    invoke-static {p3}, Ljavax/crypto/JceSecurity;->getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JCE cannot authenticate the provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v3

    return-object v3
.end method

.method static declared-synchronized getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;
    .locals 7

    const/4 v6, 0x0

    const-class v4, Ljavax/crypto/JceSecurity;

    monitor-enter v4

    :try_start_0
    sget-object v3, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v1, v3, :cond_0

    monitor-exit v4

    return-object v6

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    check-cast v1, Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    return-object v1

    :cond_1
    :try_start_2
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/security/NoSuchProviderException;

    const-string/jumbo v5, "Recursion during verification"

    invoke-direct {v3, v5}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    return-object v3

    :cond_2
    :try_start_3
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->getCodeBase(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/JceSecurity;->verifyProviderJar(Ljava/net/URL;)V

    sget-object v3, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    sget-object v5, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;

    invoke-interface {v3, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v4

    return-object v6

    :catch_0
    move-exception v0

    :try_start_5
    sget-object v3, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v4

    return-object v0

    :catchall_0
    move-exception v3

    :try_start_7
    sget-object v5, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method static isRestricted()Z
    .locals 1

    sget-boolean v0, Ljavax/crypto/JceSecurity;->isRestricted:Z

    return v0
.end method

.method private static loadPolicies(Ljava/io/File;Ljavax/crypto/CryptoPermissions;Ljavax/crypto/CryptoPermissions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "default_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/JarVerifier;->verifyPolicySigned([Ljava/security/cert/Certificate;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "exempt_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v4

    :cond_4
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    const/4 v3, 0x0

    return-void
.end method

.method private static setupJurisdictionPolicies()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x0

    const-string/jumbo v11, "java.home"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "lib"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "security"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/io/File;

    const-string/jumbo v11, "US_export_policy.jar"

    invoke-direct {v4, v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v11, "local_policy.jar"

    invoke-direct {v5, v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "javax/crypto/Cipher.class"

    invoke-static {v11}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v0, Ljavax/crypto/CryptoPermissions;

    invoke-direct {v0}, Ljavax/crypto/CryptoPermissions;-><init>()V

    new-instance v2, Ljavax/crypto/CryptoPermissions;

    invoke-direct {v2}, Ljavax/crypto/CryptoPermissions;-><init>()V

    invoke-static {v4, v0, v2}, Ljavax/crypto/JceSecurity;->loadPolicies(Ljava/io/File;Ljavax/crypto/CryptoPermissions;Ljavax/crypto/CryptoPermissions;)V

    new-instance v1, Ljavax/crypto/CryptoPermissions;

    invoke-direct {v1}, Ljavax/crypto/CryptoPermissions;-><init>()V

    new-instance v3, Ljavax/crypto/CryptoPermissions;

    invoke-direct {v3}, Ljavax/crypto/CryptoPermissions;-><init>()V

    invoke-static {v5, v1, v3}, Ljavax/crypto/JceSecurity;->loadPolicies(Ljava/io/File;Ljavax/crypto/CryptoPermissions;Ljavax/crypto/CryptoPermissions;)V

    invoke-virtual {v0}, Ljavax/crypto/CryptoPermissions;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v1}, Ljavax/crypto/CryptoPermissions;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    new-instance v10, Ljava/lang/SecurityException;

    const-string/jumbo v11, "Missing mandatory jurisdiction policy files"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    new-instance v10, Ljava/lang/SecurityException;

    const-string/jumbo v11, "Cannot locate policy or framework files!"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    invoke-virtual {v0, v1}, Ljavax/crypto/CryptoPermissions;->getMinimum(Ljavax/crypto/CryptoPermissions;)Ljavax/crypto/CryptoPermissions;

    move-result-object v11

    sput-object v11, Ljavax/crypto/JceSecurity;->defaultPolicy:Ljavax/crypto/CryptoPermissions;

    invoke-virtual {v2}, Ljavax/crypto/CryptoPermissions;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v3}, Ljavax/crypto/CryptoPermissions;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v3, v10

    :cond_3
    sput-object v3, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    :goto_0
    return-void

    :cond_4
    invoke-virtual {v2, v3}, Ljavax/crypto/CryptoPermissions;->getMinimum(Ljavax/crypto/CryptoPermissions;)Ljavax/crypto/CryptoPermissions;

    move-result-object v10

    sput-object v10, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    goto :goto_0
.end method

.method static verifyExemptJar(Ljava/net/URL;)Ljavax/crypto/CryptoPermissions;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/JarVerifier;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/JarVerifier;-><init>(Ljava/net/URL;Z)V

    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->verify()V

    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->getPermissions()Ljavax/crypto/CryptoPermissions;

    move-result-object v1

    return-object v1
.end method

.method static verifyProviderJar(Ljava/net/URL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/JarVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavax/crypto/JarVerifier;-><init>(Ljava/net/URL;Z)V

    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->verify()V

    return-void
.end method
