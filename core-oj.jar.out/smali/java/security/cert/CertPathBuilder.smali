.class public Ljava/security/cert/CertPathBuilder;
.super Ljava/lang/Object;
.source "CertPathBuilder.java"


# static fields
.field private static final CPB_TYPE:Ljava/lang/String; = "certpathbuilder.type"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final builderSpi:Ljava/security/cert/CertPathBuilderSpi;

.field private final provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Ljava/security/cert/CertPathBuilderSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "builderSpi"    # Ljava/security/cert/CertPathBuilderSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Ljava/security/cert/CertPathBuilder;->builderSpi:Ljava/security/cert/CertPathBuilderSpi;

    .line 137
    iput-object p2, p0, Ljava/security/cert/CertPathBuilder;->provider:Ljava/security/Provider;

    .line 138
    iput-object p3, p0, Ljava/security/cert/CertPathBuilder;->algorithm:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    new-instance v1, Ljava/security/cert/CertPathBuilder$1;

    invoke-direct {v1}, Ljava/security/cert/CertPathBuilder$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    .local v0, "cpbtype":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, "PKIX"

    .end local v0    # "cpbtype":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 171
    const-string/jumbo v1, "CertPathBuilder"

    .line 172
    const-class v2, Ljava/security/cert/CertPathBuilderSpi;

    .line 171
    invoke-static {v1, v2, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 173
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/cert/CertPathBuilder;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/cert/CertPathBuilderSpi;

    .line 174
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 173
    invoke-direct {v2, v1, v3, p0}, Ljava/security/cert/CertPathBuilder;-><init>(Ljava/security/cert/CertPathBuilderSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
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
    .line 214
    const-string/jumbo v1, "CertPathBuilder"

    .line 215
    const-class v2, Ljava/security/cert/CertPathBuilderSpi;

    .line 214
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 216
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/cert/CertPathBuilder;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/cert/CertPathBuilderSpi;

    .line 217
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 216
    invoke-direct {v2, v1, v3, p0}, Ljava/security/cert/CertPathBuilder;-><init>(Ljava/security/cert/CertPathBuilderSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertPathBuilder;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 251
    const-string/jumbo v1, "CertPathBuilder"

    .line 252
    const-class v2, Ljava/security/cert/CertPathBuilderSpi;

    .line 251
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 253
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/cert/CertPathBuilder;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/cert/CertPathBuilderSpi;

    .line 254
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 253
    invoke-direct {v2, v1, v3, p0}, Ljava/security/cert/CertPathBuilder;-><init>(Ljava/security/cert/CertPathBuilderSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 1
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Ljava/security/cert/CertPathBuilder;->builderSpi:Ljava/security/cert/CertPathBuilderSpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertPathBuilderSpi;->engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Ljava/security/cert/CertPathBuilder;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Ljava/security/cert/CertPathBuilder;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getRevocationChecker()Ljava/security/cert/CertPathChecker;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Ljava/security/cert/CertPathBuilder;->builderSpi:Ljava/security/cert/CertPathBuilderSpi;

    invoke-virtual {v0}, Ljava/security/cert/CertPathBuilderSpi;->engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v0

    return-object v0
.end method
