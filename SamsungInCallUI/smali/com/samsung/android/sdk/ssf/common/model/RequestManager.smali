.class public Lcom/samsung/android/sdk/ssf/common/model/RequestManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDiskBasedCache()Lcom/android/volley/toolbox/DiskBasedCache;
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Volley"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method private static getNetwork()Lcom/android/volley/Network;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;

    new-instance v1, Lcom/samsung/android/sdk/ssf/common/model/CommonHurlStack;

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/CommonHurlStack;-><init>(Lcom/samsung/android/sdk/ssf/common/model/CommonHurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->setAuthorizationListener(Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;)V

    return-object v0
.end method

.method public static declared-synchronized getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getNetwork()Lcom/android/volley/Network;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getDiskBasedCache()Lcom/android/volley/toolbox/DiskBasedCache;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->newRequestQueue(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v0, "AndroidCAStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    const-string v6, "system:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v0, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "SSL Certificate was null"

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1
.end method

.method public static newPriorityRequestQueue(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;)Lcom/android/volley/RequestQueue;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->newRequestQueue(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;Ljava/lang/Integer;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;)Lcom/android/volley/RequestQueue;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->newRequestQueue(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;Ljava/lang/Integer;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Lcom/android/volley/Network;Lcom/android/volley/toolbox/DiskBasedCache;Ljava/lang/Integer;)Lcom/android/volley/RequestQueue;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/volley/RequestQueue;

    invoke-direct {v0, p1, p0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/volley/RequestQueue;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    goto :goto_0
.end method
