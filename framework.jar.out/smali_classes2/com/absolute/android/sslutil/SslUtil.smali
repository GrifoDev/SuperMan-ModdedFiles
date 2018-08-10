.class public Lcom/absolute/android/sslutil/SslUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/absolute/android/logutil/LogUtil;->init(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    sget-object v3, Lcom/absolute/android/sslutil/SslUtil;->a:Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    array-length v0, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, v3, v1

    instance-of v4, v2, Ljavax/net/ssl/X509TrustManager;

    if-nez v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    sput-object v2, Lcom/absolute/android/sslutil/SslUtil;->a:Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Exception setting up defaultSSLKeyStore or defaultTrustManager : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    invoke-static {v3}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    sget-object v0, Lcom/absolute/android/sslutil/SslUtil;->a:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method


# virtual methods
.method public trustOurHost(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x6

    :try_start_0
    const-string/jumbo v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    if-nez p3, :cond_0

    sget-object v1, Lcom/absolute/android/sslutil/SslUtil;->a:Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "TrustOurHost: defaultTrustManager null. Cant perform custom cert checking."

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lcom/absolute/android/sslutil/b;

    invoke-direct {v2, p0}, Lcom/absolute/android/sslutil/b;-><init>(Lcom/absolute/android/sslutil/SslUtil;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lcom/absolute/android/sslutil/a;

    invoke-direct {v2, p0, p1, p2}, Lcom/absolute/android/sslutil/a;-><init>(Lcom/absolute/android/sslutil/SslUtil;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "trustOurHost: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    return-void
.end method
