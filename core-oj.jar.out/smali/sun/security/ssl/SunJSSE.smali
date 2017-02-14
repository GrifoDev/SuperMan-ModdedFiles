.class public abstract Lsun/security/ssl/SunJSSE;
.super Ljava/security/Provider;
.source "SunJSSE.java"


# static fields
.field static cryptoProvider:Ljava/security/Provider; = null

.field private static fips:Ljava/lang/Boolean; = null

.field private static fipsInfo:Ljava/lang/String; = null

.field private static info:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x2cd9c06322ee4a2dL


# direct methods
.method static synthetic -wrap0(Lsun/security/ssl/SunJSSE;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/security/ssl/SunJSSE;->doRegister(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "Sun JSSE provider(PKCS12, SunX509 key/trust factories, SSLv3, TLSv1)"

    sput-object v0, Lsun/security/ssl/SunJSSE;->info:Ljava/lang/String;

    const-string/jumbo v0, "Sun JSSE provider (FIPS mode, crypto provider "

    sput-object v0, Lsun/security/ssl/SunJSSE;->fipsInfo:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    const-string/jumbo v0, "SunJSSE"

    sget-object v1, Lsun/security/ssl/SunJSSE;->info:Ljava/lang/String;

    const-wide v2, 0x3ffb333333333333L    # 1.7

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    invoke-direct {p0}, Lsun/security/ssl/SunJSSE;->subclassCheck()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "SunJSSE is already initialized in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/ssl/SunJSSE;->registerAlgorithms(Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lsun/security/ssl/SunJSSE;->checkNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lsun/security/ssl/SunJSSE;-><init>(Ljava/security/Provider;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/security/Provider;)V
    .locals 2

    invoke-static {p1}, Lsun/security/ssl/SunJSSE;->checkNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SunJSSE;-><init>(Ljava/security/Provider;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/security/Provider;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "SunJSSE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lsun/security/ssl/SunJSSE;->fipsInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x3ff999999999999aL    # 1.6

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    invoke-direct {p0}, Lsun/security/ssl/SunJSSE;->subclassCheck()V

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Crypto provider not installed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lsun/security/ssl/SunJSSE;->ensureFIPS(Ljava/security/Provider;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/security/ssl/SunJSSE;->registerAlgorithms(Z)V

    return-void
.end method

.method private static checkNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "cryptoProvider must not be null"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method private doRegister(Z)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "KeyFactory.RSA"

    const-string/jumbo v1, "sun.security.rsa.RSAKeyFactory"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.KeyFactory.1.2.840.113549.1.1"

    const-string/jumbo v1, "RSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.KeyFactory.OID.1.2.840.113549.1.1"

    const-string/jumbo v1, "RSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyPairGenerator.RSA"

    const-string/jumbo v1, "sun.security.rsa.RSAKeyPairGenerator"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1"

    const-string/jumbo v1, "RSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.KeyPairGenerator.OID.1.2.840.113549.1.1"

    const-string/jumbo v1, "RSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Signature.MD2withRSA"

    const-string/jumbo v1, "sun.security.rsa.RSASignature$MD2withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.2"

    const-string/jumbo v1, "MD2withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.2"

    const-string/jumbo v1, "MD2withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Signature.MD5withRSA"

    const-string/jumbo v1, "sun.security.rsa.RSASignature$MD5withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    const-string/jumbo v1, "MD5withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.4"

    const-string/jumbo v1, "MD5withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Signature.SHA1withRSA"

    const-string/jumbo v1, "sun.security.rsa.RSASignature$SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.5"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.3.14.3.2.29"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.OID.1.3.14.3.2.29"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v0, "Signature.MD5andSHA1withRSA"

    const-string/jumbo v1, "sun.security.ssl.RSASignature"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyManagerFactory.SunX509"

    const-string/jumbo v1, "sun.security.ssl.KeyManagerFactoryImpl$SunX509"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyManagerFactory.NewSunX509"

    const-string/jumbo v1, "sun.security.ssl.KeyManagerFactoryImpl$X509"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.KeyManagerFactory.PKIX"

    const-string/jumbo v1, "NewSunX509"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "TrustManagerFactory.SunX509"

    const-string/jumbo v1, "sun.security.ssl.TrustManagerFactoryImpl$SimpleFactory"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "TrustManagerFactory.PKIX"

    const-string/jumbo v1, "sun.security.ssl.TrustManagerFactoryImpl$PKIXFactory"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.TrustManagerFactory.SunPKIX"

    const-string/jumbo v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.TrustManagerFactory.X509"

    const-string/jumbo v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.TrustManagerFactory.X.509"

    const-string/jumbo v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SSLContext.TLSv1"

    const-string/jumbo v1, "sun.security.ssl.SSLContextImpl$TLS10Context"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.SSLContext.TLS"

    const-string/jumbo v1, "TLSv1"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    const-string/jumbo v0, "Alg.Alias.SSLContext.SSL"

    const-string/jumbo v1, "TLSv1"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.SSLContext.SSLv3"

    const-string/jumbo v1, "TLSv1"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v0, "SSLContext.TLSv1.1"

    const-string/jumbo v1, "sun.security.ssl.SSLContextImpl$TLS11Context"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SSLContext.TLSv1.2"

    const-string/jumbo v1, "sun.security.ssl.SSLContextImpl$TLS12Context"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SSLContext.Default"

    const-string/jumbo v1, "sun.security.ssl.SSLContextImpl$DefaultSSLContext"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyStore.PKCS12"

    const-string/jumbo v1, "sun.security.pkcs12.PKCS12KeyStore"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static declared-synchronized ensureFIPS(Ljava/security/Provider;)V
    .locals 4

    const-class v1, Lsun/security/ssl/SunJSSE;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    sput-object p0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v2, "SunJSSE already initialized in non-FIPS mode"

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SunJSSE already initialized with FIPS crypto provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected static declared-synchronized isFIPS()Z
    .locals 2

    const-class v1, Lsun/security/ssl/SunJSSE;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerAlgorithms(Z)V
    .locals 1

    new-instance v0, Lsun/security/ssl/SunJSSE$1;

    invoke-direct {v0, p0, p1}, Lsun/security/ssl/SunJSSE$1;-><init>(Lsun/security/ssl/SunJSSE;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private subclassCheck()V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sun/net/ssl/internal/ssl/Provider;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal subclass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/security/Provider;->finalize()V

    return-void
.end method
