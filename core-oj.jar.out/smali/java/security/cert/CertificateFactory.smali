.class public Ljava/security/cert/CertificateFactory;
.super Ljava/lang/Object;
.source "CertificateFactory.java"


# instance fields
.field private certFacSpi:Ljava/security/cert/CertificateFactorySpi;

.field private provider:Ljava/security/Provider;

.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "certFacSpi"    # Ljava/security/cert/CertificateFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    .line 172
    iput-object p2, p0, Ljava/security/cert/CertificateFactory;->provider:Ljava/security/Provider;

    .line 173
    iput-object p3, p0, Ljava/security/cert/CertificateFactory;->type:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    const-string/jumbo v2, "CertificateFactory"

    .line 207
    const-class v3, Ljava/security/cert/CertificateFactorySpi;

    .line 206
    invoke-static {v2, v3, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v1

    .line 208
    .local v1, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v3, Ljava/security/cert/CertificateFactory;

    iget-object v2, v1, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertificateFactorySpi;

    .line 209
    iget-object v4, v1, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 208
    invoke-direct {v3, v2, v4, p0}, Ljava/security/cert/CertificateFactory;-><init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 210
    .end local v1    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 253
    :try_start_0
    const-string/jumbo v2, "CertificateFactory"

    .line 254
    const-class v3, Ljava/security/cert/CertificateFactorySpi;

    .line 253
    invoke-static {v2, v3, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v1

    .line 255
    .local v1, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v3, Ljava/security/cert/CertificateFactory;

    iget-object v2, v1, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertificateFactorySpi;

    .line 256
    iget-object v4, v1, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 255
    invoke-direct {v3, v2, v4, p0}, Ljava/security/cert/CertificateFactory;-><init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 257
    .end local v1    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    const-string/jumbo v2, "CertificateFactory"

    .line 295
    const-class v3, Ljava/security/cert/CertificateFactorySpi;

    .line 294
    invoke-static {v2, v3, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v1

    .line 296
    .local v1, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v3, Ljava/security/cert/CertificateFactory;

    iget-object v2, v1, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertificateFactorySpi;

    .line 297
    iget-object v4, v1, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 296
    invoke-direct {v3, v2, v4, p0}, Ljava/security/cert/CertificateFactory;-><init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 298
    .end local v1    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0
.end method

.method public final generateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public final generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public final generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public final generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getCertPathEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0}, Ljava/security/cert/CertificateFactorySpi;->engineGetCertPathEncodings()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->type:Ljava/lang/String;

    return-object v0
.end method
