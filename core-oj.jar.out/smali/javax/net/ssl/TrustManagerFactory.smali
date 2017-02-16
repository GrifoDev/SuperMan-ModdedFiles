.class public Ljavax/net/ssl/TrustManagerFactory;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private factorySpi:Ljavax/net/ssl/TrustManagerFactorySpi;

.field private provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "factorySpi"    # Ljavax/net/ssl/TrustManagerFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Ljavax/net/ssl/TrustManagerFactory;->factorySpi:Ljavax/net/ssl/TrustManagerFactorySpi;

    .line 89
    iput-object p2, p0, Ljavax/net/ssl/TrustManagerFactory;->provider:Ljava/security/Provider;

    .line 90
    iput-object p3, p0, Ljavax/net/ssl/TrustManagerFactory;->algorithm:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static final getDefaultAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v1, Ljavax/net/ssl/TrustManagerFactory$1;

    invoke-direct {v1}, Ljavax/net/ssl/TrustManagerFactory$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 74
    const-string/jumbo v0, "SunX509"

    .line 76
    :cond_0
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 139
    const-string/jumbo v1, "TrustManagerFactory"

    const-class v2, Ljavax/net/ssl/TrustManagerFactorySpi;

    .line 138
    invoke-static {v1, v2, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 141
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/net/ssl/TrustManagerFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/TrustManagerFactorySpi;

    .line 142
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 141
    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/TrustManagerFactory;-><init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 183
    const-string/jumbo v1, "TrustManagerFactory"

    const-class v2, Ljavax/net/ssl/TrustManagerFactorySpi;

    .line 182
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 185
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/net/ssl/TrustManagerFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/TrustManagerFactorySpi;

    .line 186
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 185
    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/TrustManagerFactory;-><init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/TrustManagerFactory;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 220
    const-string/jumbo v1, "TrustManagerFactory"

    const-class v2, Ljavax/net/ssl/TrustManagerFactorySpi;

    .line 219
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 222
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/net/ssl/TrustManagerFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/TrustManagerFactorySpi;

    .line 223
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 222
    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/TrustManagerFactory;-><init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->factorySpi:Ljavax/net/ssl/TrustManagerFactorySpi;

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactorySpi;->engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public final init(Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->factorySpi:Ljavax/net/ssl/TrustManagerFactorySpi;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactorySpi;->engineInit(Ljava/security/KeyStore;)V

    .line 249
    return-void
.end method

.method public final init(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 1
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->factorySpi:Ljavax/net/ssl/TrustManagerFactorySpi;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactorySpi;->engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V

    .line 272
    return-void
.end method
