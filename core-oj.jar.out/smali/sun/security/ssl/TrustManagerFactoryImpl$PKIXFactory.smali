.class public final Lsun/security/ssl/TrustManagerFactoryImpl$PKIXFactory;
.super Lsun/security/ssl/TrustManagerFactoryImpl;
.source "TrustManagerFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/TrustManagerFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PKIXFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lsun/security/ssl/TrustManagerFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method getInstance(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .locals 2
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Lsun/security/ssl/X509TrustManagerImpl;

    const-string/jumbo v1, "PKIX"

    invoke-direct {v0, v1, p1}, Lsun/security/ssl/X509TrustManagerImpl;-><init>(Ljava/lang/String;Ljava/security/KeyStore;)V

    return-object v0
.end method

.method getInstance(Ljavax/net/ssl/ManagerFactoryParameters;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 256
    instance-of v2, p1, Ljavax/net/ssl/CertPathTrustManagerParameters;

    if-nez v2, :cond_0

    .line 257
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    .line 258
    const-string/jumbo v3, "Parameters must be CertPathTrustManagerParameters"

    .line 257
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    :cond_0
    nop

    nop

    .end local p1    # "spec":Ljavax/net/ssl/ManagerFactoryParameters;
    invoke-virtual {p1}, Ljavax/net/ssl/CertPathTrustManagerParameters;->getParameters()Ljava/security/cert/CertPathParameters;

    move-result-object v0

    .line 262
    .local v0, "params":Ljava/security/cert/CertPathParameters;
    instance-of v2, v0, Ljava/security/cert/PKIXBuilderParameters;

    if-nez v2, :cond_1

    .line 263
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    .line 264
    const-string/jumbo v3, "Encapsulated parameters must be PKIXBuilderParameters"

    .line 263
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v1, v0

    .line 266
    nop

    nop

    .line 267
    .local v1, "pkixParams":Ljava/security/cert/PKIXBuilderParameters;
    new-instance v2, Lsun/security/ssl/X509TrustManagerImpl;

    const-string/jumbo v3, "PKIX"

    invoke-direct {v2, v3, v1}, Lsun/security/ssl/X509TrustManagerImpl;-><init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V

    return-object v2
.end method
