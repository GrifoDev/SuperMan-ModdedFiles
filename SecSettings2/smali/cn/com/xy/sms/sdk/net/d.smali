.class public Lcn/com/xy/sms/sdk/net/d;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static d:Lcn/com/xy/sms/sdk/net/d;

.field private static e:Lcn/com/xy/sms/sdk/net/d;


# instance fields
.field private a:Ljavax/net/ssl/SSLContext;

.field private b:Ljavax/net/ssl/SSLSocketFactory;

.field private c:Ljavax/net/ssl/HostnameVerifier;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/net/d;->d:Lcn/com/xy/sms/sdk/net/d;

    sput-object v0, Lcn/com/xy/sms/sdk/net/d;->e:Lcn/com/xy/sms/sdk/net/d;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/com/xy/sms/sdk/net/d;->f:I

    iput p1, p0, Lcn/com/xy/sms/sdk/net/d;->f:I

    new-instance v0, Lcn/com/xy/sms/sdk/net/e;

    invoke-direct {v0, p0}, Lcn/com/xy/sms/sdk/net/e;-><init>(Lcn/com/xy/sms/sdk/net/d;)V

    iput-object v0, p0, Lcn/com/xy/sms/sdk/net/d;->c:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method static synthetic a(Lcn/com/xy/sms/sdk/net/d;)I
    .locals 1

    iget v0, p0, Lcn/com/xy/sms/sdk/net/d;->f:I

    return v0
.end method

.method public static a(I)Lcn/com/xy/sms/sdk/net/d;
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/net/d;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/net/d;->d:Lcn/com/xy/sms/sdk/net/d;

    if-eqz v0, :cond_2

    :goto_0
    sget-object v0, Lcn/com/xy/sms/sdk/net/d;->d:Lcn/com/xy/sms/sdk/net/d;

    monitor-exit v1

    return-object v0

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/net/d;->e:Lcn/com/xy/sms/sdk/net/d;

    if-eqz v0, :cond_1

    :goto_1
    sget-object v0, Lcn/com/xy/sms/sdk/net/d;->e:Lcn/com/xy/sms/sdk/net/d;

    monitor-exit v1

    return-object v0

    :cond_1
    new-instance v0, Lcn/com/xy/sms/sdk/net/d;

    invoke-direct {v0, p0}, Lcn/com/xy/sms/sdk/net/d;-><init>(I)V

    sput-object v0, Lcn/com/xy/sms/sdk/net/d;->e:Lcn/com/xy/sms/sdk/net/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Lcn/com/xy/sms/sdk/net/d;

    invoke-direct {v0, p0}, Lcn/com/xy/sms/sdk/net/d;-><init>(I)V

    sput-object v0, Lcn/com/xy/sms/sdk/net/d;->d:Lcn/com/xy/sms/sdk/net/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 3

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 3

    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method private a(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/d;->c:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method private declared-synchronized c()Ljavax/net/ssl/SSLContext;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/d;->a:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/d;->a:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string/jumbo v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    iput-object v1, p0, Lcn/com/xy/sms/sdk/net/d;->a:Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/d;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/d;->b:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcn/com/xy/sms/sdk/net/d;->c()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/net/d;->b:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/d;->c:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method
