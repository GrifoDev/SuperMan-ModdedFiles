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
    .param p1, "isfips"    # Z

    .prologue
    invoke-direct {p0, p1}, Lsun/security/ssl/SunJSSE;->doRegister(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "Sun JSSE provider(PKCS12, SunX509 key/trust factories, SSLv3, TLSv1)"

    sput-object v0, Lsun/security/ssl/SunJSSE;->info:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "Sun JSSE provider (FIPS mode, crypto provider "

    .line 65
    sput-object v0, Lsun/security/ssl/SunJSSE;->fipsInfo:Ljava/lang/String;

    .line 58
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 106
    const-string/jumbo v0, "SunJSSE"

    sget-object v1, Lsun/security/ssl/SunJSSE;->info:Ljava/lang/String;

    const-wide v2, 0x3ffb333333333333L    # 1.7

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lsun/security/ssl/SunJSSE;->subclassCheck()V

    .line 108
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/security/ProviderException;

    .line 110
    const-string/jumbo v1, "SunJSSE is already initialized in FIPS mode"

    .line 109
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/ssl/SunJSSE;->registerAlgorithms(Z)V

    .line 105
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "cryptoProvider"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p1}, Lsun/security/ssl/SunJSSE;->checkNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lsun/security/ssl/SunJSSE;-><init>(Ljava/security/Provider;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method protected constructor <init>(Ljava/security/Provider;)V
    .locals 2
    .param p1, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 117
    invoke-static {p1}, Lsun/security/ssl/SunJSSE;->checkNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SunJSSE;-><init>(Ljava/security/Provider;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private constructor <init>(Ljava/security/Provider;Ljava/lang/String;)V
    .locals 4
    .param p1, "cryptoProvider"    # Ljava/security/Provider;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 134
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

    .line 135
    invoke-direct {p0}, Lsun/security/ssl/SunJSSE;->subclassCheck()V

    .line 136
    if-nez p1, :cond_0

    .line 139
    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p1

    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/security/ProviderException;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Crypto provider not installed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    invoke-static {p1}, Lsun/security/ssl/SunJSSE;->ensureFIPS(Ljava/security/Provider;)V

    .line 146
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/security/ssl/SunJSSE;->registerAlgorithms(Z)V

    .line 133
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

    .prologue
    .line 126
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 127
    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "cryptoProvider must not be null"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    return-object p0
.end method

.method private doRegister(Z)V
    .locals 2
    .param p1, "isfips"    # Z

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    const-string/jumbo v0, "KeyFactory.RSA"

    .line 161
    const-string/jumbo v1, "sun.security.rsa.RSAKeyFactory"

    .line 160
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v0, "Alg.Alias.KeyFactory.1.2.840.113549.1.1"

    const-string/jumbo v1, "RSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v0, "Alg.Alias.KeyFactory.OID.1.2.840.113549.1.1"

    const-string/jumbo v1, "RSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v0, "KeyPairGenerator.RSA"

    .line 166
    const-string/jumbo v1, "sun.security.rsa.RSAKeyPairGenerator"

    .line 165
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v0, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1"

    const-string/jumbo v1, "RSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v0, "Alg.Alias.KeyPairGenerator.OID.1.2.840.113549.1.1"

    const-string/jumbo v1, "RSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v0, "Signature.MD2withRSA"

    .line 171
    const-string/jumbo v1, "sun.security.rsa.RSASignature$MD2withRSA"

    .line 170
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.2"

    const-string/jumbo v1, "MD2withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v0, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.2"

    .line 174
    const-string/jumbo v1, "MD2withRSA"

    .line 173
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v0, "Signature.MD5withRSA"

    .line 177
    const-string/jumbo v1, "sun.security.rsa.RSASignature$MD5withRSA"

    .line 176
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    const-string/jumbo v1, "MD5withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v0, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.4"

    .line 180
    const-string/jumbo v1, "MD5withRSA"

    .line 179
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v0, "Signature.SHA1withRSA"

    .line 183
    const-string/jumbo v1, "sun.security.rsa.RSASignature$SHA1withRSA"

    .line 182
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v0, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.5"

    .line 186
    const-string/jumbo v1, "SHA1withRSA"

    .line 185
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v0, "Alg.Alias.Signature.1.3.14.3.2.29"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string/jumbo v0, "Alg.Alias.Signature.OID.1.3.14.3.2.29"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_0
    const-string/jumbo v0, "Signature.MD5andSHA1withRSA"

    .line 192
    const-string/jumbo v1, "sun.security.ssl.RSASignature"

    .line 191
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string/jumbo v0, "KeyManagerFactory.SunX509"

    .line 195
    const-string/jumbo v1, "sun.security.ssl.KeyManagerFactoryImpl$SunX509"

    .line 194
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string/jumbo v0, "KeyManagerFactory.NewSunX509"

    .line 197
    const-string/jumbo v1, "sun.security.ssl.KeyManagerFactoryImpl$X509"

    .line 196
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string/jumbo v0, "Alg.Alias.KeyManagerFactory.PKIX"

    const-string/jumbo v1, "NewSunX509"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string/jumbo v0, "TrustManagerFactory.SunX509"

    .line 201
    const-string/jumbo v1, "sun.security.ssl.TrustManagerFactoryImpl$SimpleFactory"

    .line 200
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string/jumbo v0, "TrustManagerFactory.PKIX"

    .line 203
    const-string/jumbo v1, "sun.security.ssl.TrustManagerFactoryImpl$PKIXFactory"

    .line 202
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string/jumbo v0, "Alg.Alias.TrustManagerFactory.SunPKIX"

    const-string/jumbo v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v0, "Alg.Alias.TrustManagerFactory.X509"

    const-string/jumbo v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v0, "Alg.Alias.TrustManagerFactory.X.509"

    const-string/jumbo v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string/jumbo v0, "SSLContext.TLSv1"

    .line 209
    const-string/jumbo v1, "sun.security.ssl.SSLContextImpl$TLS10Context"

    .line 208
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string/jumbo v0, "Alg.Alias.SSLContext.TLS"

    const-string/jumbo v1, "TLSv1"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    if-nez p1, :cond_1

    .line 212
    const-string/jumbo v0, "Alg.Alias.SSLContext.SSL"

    const-string/jumbo v1, "TLSv1"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string/jumbo v0, "Alg.Alias.SSLContext.SSLv3"

    const-string/jumbo v1, "TLSv1"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_1
    const-string/jumbo v0, "SSLContext.TLSv1.1"

    .line 217
    const-string/jumbo v1, "sun.security.ssl.SSLContextImpl$TLS11Context"

    .line 216
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v0, "SSLContext.TLSv1.2"

    .line 219
    const-string/jumbo v1, "sun.security.ssl.SSLContextImpl$TLS12Context"

    .line 218
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string/jumbo v0, "SSLContext.Default"

    .line 221
    const-string/jumbo v1, "sun.security.ssl.SSLContextImpl$DefaultSSLContext"

    .line 220
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string/jumbo v0, "KeyStore.PKCS12"

    .line 227
    const-string/jumbo v1, "sun.security.pkcs12.PKCS12KeyStore"

    .line 226
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method private static declared-synchronized ensureFIPS(Ljava/security/Provider;)V
    .locals 4
    .param p0, "p"    # Ljava/security/Provider;

    .prologue
    const-class v1, Lsun/security/ssl/SunJSSE;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 89
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    .line 90
    sput-object p0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 87
    return-void

    .line 92
    :cond_1
    :try_start_1
    sget-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    new-instance v0, Ljava/security/ProviderException;

    .line 94
    const-string/jumbo v2, "SunJSSE already initialized in non-FIPS mode"

    .line 93
    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 96
    :cond_2
    :try_start_2
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    if-eq v0, p0, :cond_0

    .line 97
    new-instance v0, Ljava/security/ProviderException;

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SunJSSE already initialized with FIPS crypto provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 99
    sget-object v3, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected static declared-synchronized isFIPS()Z
    .locals 2

    .prologue
    const-class v1, Lsun/security/ssl/SunJSSE;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    .line 82
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
    .param p1, "isfips"    # Z

    .prologue
    .line 150
    new-instance v0, Lsun/security/ssl/SunJSSE$1;

    invoke-direct {v0, p0, p1}, Lsun/security/ssl/SunJSSE$1;-><init>(Lsun/security/ssl/SunJSSE;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method private subclassCheck()V
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sun/net/ssl/internal/ssl/Provider;

    if-eq v0, v1, :cond_0

    .line 232
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

    .line 230
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

    .prologue
    .line 239
    invoke-super {p0}, Ljava/security/Provider;->finalize()V

    .line 237
    return-void
.end method
