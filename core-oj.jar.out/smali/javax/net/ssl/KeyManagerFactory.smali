.class public Ljavax/net/ssl/KeyManagerFactory;
.super Ljava/lang/Object;
.source "KeyManagerFactory.java"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private factorySpi:Ljavax/net/ssl/KeyManagerFactorySpi;

.field private provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "factorySpi"    # Ljavax/net/ssl/KeyManagerFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Ljavax/net/ssl/KeyManagerFactory;->factorySpi:Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 92
    iput-object p2, p0, Ljavax/net/ssl/KeyManagerFactory;->provider:Ljava/security/Provider;

    .line 93
    iput-object p3, p0, Ljavax/net/ssl/KeyManagerFactory;->algorithm:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static final getDefaultAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v1, Ljavax/net/ssl/KeyManagerFactory$1;

    invoke-direct {v1}, Ljavax/net/ssl/KeyManagerFactory$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 77
    const-string/jumbo v0, "SunX509"

    .line 79
    :cond_0
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 140
    const-string/jumbo v1, "KeyManagerFactory"

    const-class v2, Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 139
    invoke-static {v1, v2, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 142
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/net/ssl/KeyManagerFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 143
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 142
    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
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
    .line 184
    const-string/jumbo v1, "KeyManagerFactory"

    const-class v2, Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 183
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 186
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/net/ssl/KeyManagerFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 187
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 186
    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 221
    const-string/jumbo v1, "KeyManagerFactory"

    const-class v2, Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 220
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 223
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/net/ssl/KeyManagerFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 224
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 223
    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->factorySpi:Ljavax/net/ssl/KeyManagerFactorySpi;

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactorySpi;->engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/KeyStore;[C)V
    .locals 1
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->factorySpi:Ljavax/net/ssl/KeyManagerFactorySpi;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactorySpi;->engineInit(Ljava/security/KeyStore;[C)V

    .line 258
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
    .line 281
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->factorySpi:Ljavax/net/ssl/KeyManagerFactorySpi;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/KeyManagerFactorySpi;->engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V

    .line 280
    return-void
.end method
