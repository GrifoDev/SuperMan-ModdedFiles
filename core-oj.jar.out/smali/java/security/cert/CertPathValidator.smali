.class public Ljava/security/cert/CertPathValidator;
.super Ljava/lang/Object;
.source "CertPathValidator.java"


# static fields
.field private static final CPV_TYPE:Ljava/lang/String; = "certpathvalidator.type"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final validatorSpi:Ljava/security/cert/CertPathValidatorSpi;


# direct methods
.method protected constructor <init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "validatorSpi"    # Ljava/security/cert/CertPathValidatorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Ljava/security/cert/CertPathValidator;->validatorSpi:Ljava/security/cert/CertPathValidatorSpi;

    .line 138
    iput-object p2, p0, Ljava/security/cert/CertPathValidator;->provider:Ljava/security/Provider;

    .line 139
    iput-object p3, p0, Ljava/security/cert/CertPathValidator;->algorithm:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    new-instance v1, Ljava/security/cert/CertPathValidator$1;

    invoke-direct {v1}, Ljava/security/cert/CertPathValidator$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    .local v0, "cpvtype":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, "PKIX"

    .end local v0    # "cpvtype":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 172
    const-string/jumbo v1, "CertPathValidator"

    .line 173
    const-class v2, Ljava/security/cert/CertPathValidatorSpi;

    .line 172
    invoke-static {v1, v2, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 174
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/cert/CertPathValidator;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/cert/CertPathValidatorSpi;

    .line 175
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 174
    invoke-direct {v2, v1, v3, p0}, Ljava/security/cert/CertPathValidator;-><init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
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
    .line 216
    const-string/jumbo v1, "CertPathValidator"

    .line 217
    const-class v2, Ljava/security/cert/CertPathValidatorSpi;

    .line 216
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 218
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/cert/CertPathValidator;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/cert/CertPathValidatorSpi;

    .line 219
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 218
    invoke-direct {v2, v1, v3, p0}, Ljava/security/cert/CertPathValidator;-><init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertPathValidator;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 253
    const-string/jumbo v1, "CertPathValidator"

    .line 254
    const-class v2, Ljava/security/cert/CertPathValidatorSpi;

    .line 253
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 255
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/cert/CertPathValidator;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/cert/CertPathValidatorSpi;

    .line 256
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 255
    invoke-direct {v2, v1, v3, p0}, Ljava/security/cert/CertPathValidator;-><init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getRevocationChecker()Ljava/security/cert/CertPathChecker;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->validatorSpi:Ljava/security/cert/CertPathValidatorSpi;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorSpi;->engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v0

    return-object v0
.end method

.method public final validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 1
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->validatorSpi:Ljava/security/cert/CertPathValidatorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/cert/CertPathValidatorSpi;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v0

    return-object v0
.end method
